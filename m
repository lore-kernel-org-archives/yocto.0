Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00D87E00509; Tue, 22 Mar 2016 08:49:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73200E0048B
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 08:49:16 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 22 Mar 2016 08:48:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,377,1455004800"; 
	d="jpg'145?scan'145,208,217,145";a="769147191"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
	by orsmga003.jf.intel.com with ESMTP; 22 Mar 2016 08:48:03 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.10]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.72]) with mapi id
	14.03.0248.002; Tue, 22 Mar 2016 15:47:50 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Full Pass test report for YP 2.1_M3.rc1
Thread-Index: AdGEUMHqopmQYgcQTumeQDzlTHv+3A==
Date: Tue, 22 Mar 2016 15:47:50 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E96261EC174@irsmsx110.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDY0NjZjYmQtM2Y1MS00OWNmLThjNTYtNWY4MzU3ZjczMDMwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IjRVZW9QT3djNU1cL3phVFkwc20rR3B2M3pVUkRuelhnY3RQc3FWQmdnaU9vPSJ9
x-ctpclassification: CTP_IC
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Perez Carranza,
	Jose" <jose.perez.carranza@intel.com>, "Esquivel,
	Benjamin" <benjamin.esquivel@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Full Pass test report for YP 2.1_M3.rc1
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
X-List-Received-Date: Tue, 22 Mar 2016 15:49:25 -0000
X-Groupsio-MsgNum: 29129
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_005_1FFB62CE8AEB0D4298B51122D8903E96261EC174irsmsx110gercor_";
	type="multipart/alternative"

--_005_1FFB62CE8AEB0D4298B51122D8903E96261EC174irsmsx110gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E96261EC174irsmsx110gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E96261EC174irsmsx110gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the Full Pass test report for YP 2.1_M3.rc1 build. The full report =
can be accessed here as well: https://wiki.yoctoproject.org/wiki/WW12_-_201=
6-03-14_-_Full_Pass_2.1_M3.rc1

Issue summary:

-        During this release, Hob was removed and was removed from Build Ap=
pliance as well. This change also affected the Build Appliance, and buildin=
g a core-image-minimal via cmd line failed - YP9314<https://bugzilla.yoctop=
roject.org/show_bug.cgi?id=3D9314>

-        Many of the Toaster tests were blocked (80%) by 9252<https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D9252> - Images cannot be built withi=
n Toaster. The issue has been addressed and fixed and is being reviewed.

-        Nightly-world failed on our local AB machines while building webki=
tgtk with a compiler on Fedora23, OpenSuse 12.3, CentOS 7 hosts - 9198

-        There are few issues on i686 hosts (fedora 23) where some builds f=
ailed:

o   9287      Failed to build nativesdk-glibc for qemumips and qemumips64 o=
n Fedora 23 i686

o   9286      Failed to build gst-player for qemuarm64 on Fedora23 i686

o   9285      Failed to build gobject-introspection for qemumips64 on i686 =
hosts

-        There are few eSDK fails as well:

o   9019 - Failed to install sdk_ext if sdk_ext build with 'rm_work' featur=
e

o   9301      Extensible SDK: failed to run sdk-update: checksum mismatch f=
or uninative

-        Besides the issues reported by our test runs, there are quite a fe=
w opened Medium+/High issues (24 Medium+ and 2 High)


A side note regarding build performance<https://wiki.yoctoproject.org/chart=
s/perf_milestone/performance_test.html> test, building the kernel<https://w=
iki.yoctoproject.org/charts/perf_milestone/bitbake-virtual-kernel.html> now=
 takes on average 2:20 minutes less than the previous milestone, with 6:23 =
minutes on average on Ubuntu 12 and 7:09 on Fedora 19. Besides that, also t=
he core-image-sato<https://wiki.yoctoproject.org/charts/perf_milestone/bitb=
ake-core-image-sato.html> build takes substantially less, with 3:30 minutes=
 on average less than the previous build (1:24:53 hours compared with 1:28:=
28/ previous build on Ubuntu 12 and 1:28:02 compared with 1:31:22 on Fedora=
 19)



Testing data

 Test type:  Full Pass Release Test

 Branch: master

 Build name: 2.1_M3.rc1

 poky commit: 8debfea81e69d038bd2d56314b272cb74f5582ed

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rel=
eases/yocto-2.1_M3.rc1/

 Distributions tested: Ubuntu 15.04 64 bit, Ubuntu 14.04 64bit, Fedora 21 6=
4bit, Fedora 22 64bit, Opensuse 13.2 64bit, CentOS 7 64 bit


Test Run Summary Report
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

5575<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5575> 5576<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5576>

ADT: master branch

Fedora 23 i686

98.6%

9048<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9048>

1.4%

9285<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9285> 9286<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D9286> 9287<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D9287> 9019<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D9019> 9301<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D9301>

0.0%

none

100.0%

5573<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5573> 5574<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5574>

ADT: master branch

Ubuntu 14.04 x86_64

99.3%

9019<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9019>

0.7%

9301<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9301>

0.0%

none

100.0%

5583<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5583> 5584<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5584>

BSP/QEMU: master branch

Beaglebone Black

98.5%

none

1.5%

9259<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9259>

0.0%

none

100.0%

5589<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5589> 5590<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5590>

BSP/QEMU: master branch

EdgeRouter

98.4%

none

1.6%

9259<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9259>

0.0%

none

100.0%

5551<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5551> 5552<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5552>

BSP/QEMU: master branch

genericx86 - on MMAX32bit

98.9%

none

1.1%

9271<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9271>

0.0%

none

100.0%

5547<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5547>

BSP/QEMU: master branch

genericx86-64 on MMAX64

100.0%

none

0.0%

none

0.0%

none

100.0%

5545<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5545> 5546<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5546> 5599<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5599>

BSP/QEMU: master branch

genericx86-64 on NUC

98.0%

9254<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9254>

2.0%

7897<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7897> 9267<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D9267> 9296<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D9296> 8988<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D8988>

0.0%

none

100.0%

5597<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5597>

BSP/QEMU: master branch

genericx86-64-lsb on NUC

98.1%

none

1.9%

9267<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9267>

0.0%

none

100.0%

5549<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5549>

BSP/QEMU: master branch

genericx86-64-lsb on NUC D54250WYK

100.0%

none

0.0%

none

0.0%

none

100.0%

5604<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5604>

BSP/QEMU: master branch

genericx86-64-WIC on MMAX64

100.0%

none

0.0%

none

0.0%

none

100.0%

5603<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5603>

BSP/QEMU: master branch

genericx86-64-WIC on NUC

97.8%

none

2.2%

9179<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9179>

0.0%

none

100.0%

5550<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5550>

BSP/QEMU: master branch

genericx86-lsb - on MMAX32bit

100.0%

none

0.0%

none

0.0%

none

100.0%

5605<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5605>

BSP/QEMU: master branch

genericx86-WIC on MMAX32

97.7%

none

2.3%

9271<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9271>

0.0%

none

100.0%

5591<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5591> 5592<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5592>

BSP/QEMU: master branch

MPC8315e-rdb

98.4%

none

1.6%

9259<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9259>

0.0%

none

100.0%

5581<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5581> 5582<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5582>

BSP/QEMU: master branch

P1022ds

98.3%

none

1.7%

9259<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9259>

0.0%

none

100.0%

5553<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5553> 5554<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5554>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

5557<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5557> 5558<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5558>

BSP/QEMU: master branch

qemuarm

98.4%

none

1.6%

9259<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9259>

0.0%

none

100.0%

5593<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5593> 5594<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5594>

BSP/QEMU: master branch

qemuarm64

98.4%

none

1.6%

9259<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9259>

0.0%

none

100.0%

5559<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5559> 5560<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5560>

BSP/QEMU: master branch

qemumips

98.4%

none

1.6%

9259<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9259>

0.0%

none

100.0%

5595<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5595> 5596<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5596>

BSP/QEMU: master branch

qemumips64

98.6%

9284<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9284>

1.4%

9259<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9259>

0.0%

none

100.0%

5561<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5561> 5562<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5562>

BSP/QEMU: master branch

qemuppc

98.4%

none

1.6%

9259<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9259>

0.0%

none

100.0%

5555<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5555> 5556<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5556>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

5579<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5579>

Eclipse Plugin: master branch

Luna on Fedora 22 X86_64

95.8%

none

4.2%

7054<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054>

0.0%

none

100.0%

5580<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5580>

Eclipse Plugin: master branch

Mars on Fedora 22 x86_64

95.8%

none

4.2%

7054<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054>

0.0%

none

100.0%

5600<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5600> 5601<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5601>

Meta-yocto: master branch

Ubuntu 14.04 x86_64

96.9%

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

3.1%

9120<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9120>

0.0%

none

100.0%

5539<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5539> 5540<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5540>

Toaster: master branch

'Ubuntu 14.10 x86_64'

20.5%

none

2.7%

8125<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8125>

76.7%

9252<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9252>

100.0%

5570<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5570>

OE-Core: master branch

CentOS 7.1 x86_64

99.5%

none

0.5%

9273<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9273>

0.0%

none

100.0%

5568<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5568>

OE-Core: master branch

Fedora 21 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

5569<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5569>

OE-Core: master branch

Fedora 23 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

5571<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5571>

OE-Core: master branch

OpenSuse 13.2 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

5572<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5572>

OE-Core: master branch

Ubuntu 15.04 x86_64

99.5%

none

0.5%

9273<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9273>

0.0%

none

100.0%

5585<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5585>

OE-Core: master branch

Ubuntu 15.10 x86_64

99.5%

none

0.5%

9273<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9273>

0.0%

none

100.0%

5567<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5567>

Automated Build Testing: master branch

CentOS 7 x86_64

94.1%

none

5.9%

9198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9198>

0.0%

none

100.0%

5566<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5566>

Automated Build Testing: master branch

Fedora 23 x86-64

94.1%

none

5.9%

9198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9198>

0.0%

none

100.0%

5565<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5565>

Automated Build Testing: master branch

OpenSuse 13.2 x86_64

94.1%

none

5.9%

9198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9198>

0.0%

none

100.0%

5564<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5564>

Automated Build Testing: master branch

Ubuntu 15.10 x86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

5563<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5563>

Runtime: master branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

5602<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5602>

Build Appliance: master branch

VMWare Player on Ubuntu

16.7%

none

16.7%

9314<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9314>

66.7%

9314<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9314>

100.0%

Total: 38



[Bug Status]


Test Case Status Report

Status

Count

BLOCKED

60

FAILED

31

PASSED

2796

Total: 2887


[http://chart.apis.google.com/chart?cht=3Dbvg&chs=3D372x120&chbh=3Da&chds=
=3D0,2796&chxt=3Dy&chxr=3D0,0,2796,466&chd=3Dt:&chd=3Dt:60,31,2796&chco=3DF=
FFF66|FF9933|00FF00&chdl=3DBLOCKED(60)+2%25|FAILED(31)+1%25|PASSED(2796)+97=
%25]







Bugs Found during QA Test
New and notable issues Found during QA Test & Community
ID

Summary (11 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.c=
gi?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D9314&field0-0-1=3Db=
ug_id&type0-0-1=3Dequals&value0-0-1=3D%209301&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%209284&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%209285&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%209286=
&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%209287&field0-0-6=3Db=
ug_id&type0-0-6=3Dequals&value0-0-6=3D%209273&field0-0-7=3Dbug_id&type0-0-7=
=3Dequals&value0-0-7=3D%209198&field0-0-8=3Dbug_id&type0-0-8=3Dequals&value=
0-0-8=3D%209252&field0-0-9=3Dbug_id&type0-0-9=3Dequals&value0-0-9=3D%209019=
&field0-0-10=3Dbug_id&type0-0-10=3Dequals&value0-0-10=3D%208988&field0-1-0=
=3Dbug_status&type0-1-0=3Dnotequals&value0-1-0=3DCLOSED>

P

Assignee

QA

Milestone

Status

Resolution

cf_regression_type

Created

Automated Build Testing

9273<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9273>

test_recipetool_create_simple fails on Ubuntu 15.04, 15.10 and CentOS 7.2

Medium

Paul Eggleton

Alexandru Georgescu

2.1 M4

IN PROGRESS REVIEW

Regression (Used to work)

2016-03-16

Automated Runtime Testing

8988<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8988>

test_rpm_query_nonroot (oeqa.runtime.rpm.RpmInstallRemoveTest) - Failed to =
create new user

Medium+

Ross Burton



2.1 M4

NEW

Regression (Used to work)

2016-01-22

Build Appliance

9314<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9314>

Yocto 2.1M3 rc1 Build Appliance: bitbake core-image-minimal with command-li=
ne failed

Undecided

Juro Bystricky



---

NEW

---

2016-03-21

Matchbox

9284<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9284>

Click 'Home' icon can not back to desktop on sato for qemumips64

Medium+

Jussi Kukkonen

Yi Zhao

2.1 M4

IN PROGRESS REVIEW

New (Never tested)

2016-03-17

OE-Core

9285<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9285>

Failed to build gobject-introspection for qemumips64 on i686 hosts

Medium+

Alexander Kanavin

Yi Zhao

2.1 M4

NEW

New (Never tested)

2016-03-17

9286<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9286>

Failed to build gst-player for qemuarm64 on Fedora23 i686

Medium+

Alexander Kanavin

Yi Zhao

2.1 M4

NEW

Regression (Used to work)

2016-03-17

9287<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9287>

Failed to build nativesdk-glibc for qemumips and qemumips64 on Fedora 23 i6=
86

Medium+

Ross Burton

Yi Zhao

2.1 M4

NEW

Regression (Used to work)

2016-03-17

9019<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9019>

Failed to install sdk_ext if sdk_ext build with 'rm_work' feature

Medium+

Randy Witt

Yi Zhao

2.1 M4

NEW

Regression (Used to work)

2016-02-01

9198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9198>

webkitgtk compiler error

Medium+

Alexander Kanavin

Mihail Stanciu

2.1 M4

NEW

Regression (Used to work)

2016-03-02

9301<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9301>

Extensible SDK: failed to run sdk-update: checksum mismatch for uninative

Undecided

Paul Eggleton

Yi Zhao

---

NEW

New (Never tested)

2016-03-18

Toaster

9252<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9252>

Build images doesn't work in Toaster

High

Ed Bartosh

Cristina Agurida

2.1 M4

IN PROGRESS REVIEW

Regression (Used to work)

2016-03-14




Other Bugs found during QA Test
ID

Summary (11 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.c=
gi?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D6156&field0-0-1=3Db=
ug_id&type0-0-1=3Dequals&value0-0-1=3D%207054&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%207897&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%208125&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%208994=
&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%209048&field0-0-6=3Db=
ug_id&type0-0-6=3Dequals&value0-0-6=3D%209120&field0-0-7=3Dbug_id&type0-0-7=
=3Dequals&value0-0-7=3D%209254&field0-0-8=3Dbug_id&type0-0-8=3Dequals&value=
0-0-8=3D%209259&field0-0-9=3Dbug_id&type0-0-9=3Dequals&value0-0-9=3D%209267=
&field0-0-10=3Dbug_id&type0-0-10=3Dequals&value0-0-10=3D%209271&field0-1-0=
=3Dbug_status&type0-1-0=3Dnotequals&value0-1-0=3DCLOSED>

P

Assignee

QA

Milestone

Status

Resolution

cf_regression_type

Created

---

9267<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9267>

test_parselogs (oeqa.runtime.parselogs.ParseLogsTest) failed on NUC 6i5SYH,=
 firmware load for i915/skl_guc_ver4.bin failed

Medium

California Sullivan

Francisco Pedraza

2.1 M4

NEW

---

2016-03-15

New (Never tested)

7897<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7897>

Dmesg error BAR 14 and BAR 15 failed to assign in Minnow Max

Medium

Saul Wold

Cristina Agurida

2.1 M3

RESOLVED

FIXED

New (Never tested)

2015-06-17

OE-Core

9048<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9048>

Failed to build iptables with extensible sdk on Fedora 23 i686

Medium+

Armin Kuster

Yi Zhao

2.1 M3

ACCEPTED

New (Never tested)

2016-02-04

Regression (Found by QA test)

9254<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9254>

Mismatch between genericx86 and genericx86-64 keyboards

Medium

Saul Wold

Francisco Pedraza

2.1 M4

RESOLVED

FIXED

Regression (Found by QA test)

2016-03-14

BSPs

9271<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9271>

[Test Case 1059] test_parselogs (oeqa.runtime.parselogs.ParseLogsTest)

Medium

California Sullivan

Francisco Pedraza

2.1 M4

NEW

Regression (Found by QA test)

2016-03-16

Regression (Used to work)

8994<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8994>

Parselogs error: *ERROR* Timed out waiting for forcewake old ack to clear i=
n lsb image on NUC

Medium

Cristina Agurida

Cristina Agurida

2.1 M3

VERIFIED

WORKSFORME

Regression (Used to work)

2016-01-25

OE-Core

9120<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9120>

The patch file is not applied to linux-yocto by yocto-kernel add patch comm=
and

Medium



Yi Zhao

2.1

NEW

Regression (Used to work)

2016-02-16

9259<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9259>

The rpm database costs lots of disk space after install a package

Medium

Ross Burton

Yi Zhao

2.2

NEW

Regression (Used to work)

2016-03-15

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

[crosstap] no trace message output on qemuarm

Medium

Kevin Hao



2.1

ACCEPTED

Regression (Used to work)

2014-04-14

7054<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054>

OprofileUI needs to be updated to reflect new oprofile functionality

Medium

Ross Burton

Mihail Stanciu

2.1

ACCEPTED

Regression (Used to work)

2014-12-09

Toaster

8125<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8125>

Filter does not work as expected after clearing the search results

Medium

Michael Wood

Cristina Agurida

2.2

NEW

Regression (Used to work)

2015-08-07


pTest open bugs
ID

Summary (10 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.c=
gi?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D8146&field0-0-1=3Db=
ug_id&type0-0-1=3Dequals&value0-0-1=3D%208172&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%208471&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%208655&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%208656=
&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%208828&field0-0-6=3Db=
ug_id&type0-0-6=3Dequals&value0-0-6=3D%208830&field0-0-7=3Dbug_id&type0-0-7=
=3Dequals&value0-0-7=3D%208831&field0-0-8=3Dbug_id&type0-0-8=3Dequals&value=
0-0-8=3D%208832&field0-0-9=3Dbug_id&type0-0-9=3Dequals&value0-0-9=3D%208834=
&field0-0-10=3Dbug_id&type0-0-10=3Dequals&value0-0-10=3D%209042&field0-1-0=
=3Dbug_status&type0-1-0=3Dnotequals&value0-1-0=3DCLOSED>

P

Assignee

QA

Milestone

Status

Resolution

cf_regression_type

Created

Automated Runtime Testing

8831<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8831>

pTest - busybox tests fail for 2.1_M1.rc1

Medium

Chen Qi



2.1 M4

ACCEPTED

---

2015-12-17

8832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8832>

pTest - bash tests fail for 2.1_M1.rc1

Medium

Hongxu Jia



2.1

NEW

---

2015-12-17

8834<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8834>

pTest - attr test fail ln -s f

Medium

Chen Qi



2.1 M4

ACCEPTED

---

2015-12-17

9042<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9042>

pTest - strace fails on NUC 5425WYK for YP 2.1_M2.rc1

Medium

dengke

Francisco Pedraza

2.1 M3

ACCEPTED

Regression (Used to work)

2016-02-03

8146<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8146>

ptest - some test cases are failing for acl

Medium

Cristina Agurida

Ross Burton

2.1

NEW

---

2015-08-11

8471<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8471>

ptest - some valgrind ptests fail on 2.0.rc1

Medium

Ross Burton

Alexandru Georgescu

2.1

NEW

Regression (Used to work)

2015-10-09

8656<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8656>

ptest - perl tests fail for genericx86-64 on NUC - 2.0.rc3

Medium

Armin Kuster

Cristina Agurida

2.1

NEW

Regression (Used to work)

2015-11-06

8828<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8828>

pTest - lttng-tools tests fail for 2.1_M1.rc1

Medium

Richard Purdie



2.1

NEW

Regression (Used to work)

2015-12-17

8830<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8830>

pTest - pango tests fail for 2.1_M1.rc1

Medium

Jussi Kukkonen



2.1

RESOLVED

FIXED

---

2015-12-17

8655<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8655>

ptest - two openssl ptests fail on 2.0.rc3

Medium+

Maxin B. John

Francisco Pedraza

2.1 M3

RESOLVED

WORKSFORME

Regression (Used to work)

2015-11-06


Current community Open Bugs - Medium+/High

Overview of the open bugs opened against current milestone or release which=
 are Medium+ or High and are not targeted for the next milestones
ID

P

Summary (26 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.c=
gi?&field0-0-0=3Dtarget_milestone&type0-0-0=3Dequals&value0-0-0=3D2.1&field=
0-0-1=3Dtarget_milestone&type0-0-1=3Dequals&value0-0-1=3D2.1%20M1&field0-0-=
2=3Dtarget_milestone&type0-0-2=3Dequals&value0-0-2=3D2.1%20M2&field0-0-3=3D=
target_milestone&type0-0-3=3Dequals&value0-0-3=3D2.1%20M3&field0-1-0=3Dprio=
rity&type0-1-0=3Dequals&value0-1-0=3Dhigh&field0-1-1=3Dpriority&type0-1-1=
=3Dequals&value0-1-1=3DMedium%2B&field0-2-0=3Dbug_severity&type0-2-0=3Dnote=
quals&value0-2-0=3Denhancement&field0-3-0=3Dbug_status&type0-3-0=3Dnotequal=
s&value0-3-0=3DRESOLVED&field0-4-0=3Dbug_status&type0-4-0=3Dnotequals&value=
0-4-0=3DVERIFIED>

Assignee

QA

Milestone

Status

cf_regression_type

Created





0













AutoBuilder

7690<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7690>

Medium+

autobuilder PRSERV setup

Beth Flanagan



2.1 M3

NEW

---

2015-04-30





1













Automated Runtime Testing

8525<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8525>

Medium+

selftest needs to control distro configuration

Daniel Istrate

Alexandru Georgescu

2.1

ACCEPTED

---

2015-10-15

8576<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8576>

Medium+

QemuRunner logging for qemu start failure does not log anything to the cons=
ole in oe-selftest

Costin



2.1 M3

NEW

---

2015-10-26

8861<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8861>

Medium+

System envs in /etc/profile are not injected in oeqa ssh connection

Ross Burton

Costin

2.1 M3

CLOSED

---

2015-12-24

5319<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5319>

Medium+

Need a test to verify firstboot postinst script order

Costin

Alexandru Georgescu

2.1 M3

NEW

---

2013-10-04

8694<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8694>

Medium+

Add support for multiple binaries in one test

Costin



2.1 M3

IN PROGRESS IMPLEMENTATION

---

2015-11-16





5













BitBake

9275<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9275>

Medium+

right now, bitbake server has a concept of single_use which has the server =
auto exit in anonymous port case

Ed Bartosh



2.1 M3

IN PROGRESS REVIEW

---

2016-03-16

8884<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8884>

Medium+

Locked signature warning is shown even if package can be fetched from SSTAT=
E_MIRRORS

Paul Eggleton



2.1 M3

NEW

---

2016-01-06





2













Eclipse Plugin

9105<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9105>

Medium+

[MARS] Cannot install eclipse-poky plugin

Tim Orling



2.1 M3

IN PROGRESS IMPLEMENTATION

Regression (Used to work)

2016-02-12





1













Layers

8997<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8997>

Medium+

qwt fails in poky-lsb builds

Beth Flanagan



2.1 M3

NEW

---

2016-01-25





1













OE-Core

8748<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8748>

Medium+

qemu86-64 with corei7-64 did not support gcc optimization level 3 '-O3' ver=
y well

Hongxu Jia



2.1 M3

NEW

---

2015-12-02

9083<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9083>

Medium+

Extensible SDK: SDK installation ERROR: Unexpected tasks left over to be ex=
ecuted

Paul Eggleton

Bogdan Alexandru Voiculescu

2.1 M3

ACCEPTED

---

2016-02-09

9194<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9194>

Medium+

rpm upgrade leaves package removal broken

Mark Hatle



2.1 M3

ACCEPTED

---

2016-03-01

7436<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7436>

Medium+

kdb build race

Maxin B. John



2.1

IN PROGRESS DESIGN

---

2015-03-09

8871<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8871>

High

Support Fedora 23

Michael Halstead



2.1

NEW

---

2016-01-05

9038<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9038>

Medium+

extensible sdk - generates empty manifests/needs file with what is installe=
d

Paul Eggleton



2.1 M3

NEW

---

2016-02-03

8078<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8078>

Medium+

useradd.bbclass: useradd_preinst not run when rebuilding on second MACHINE

Maxin B. John



2.1

ACCEPTED

---

2015-07-29

8879<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8879>

Medium+

opkg-utils is built when build lib32-image

Robert Yang



2.1 M3

IN PROGRESS IMPLEMENTATION

---

2016-01-06

8668<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8668>

Medium+

lttng-tools ptest output confuses QA analysis

Madhusudhanan



2.1 M3

NEW

New (Never tested)

2015-11-09

9048<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9048>

Medium+

Failed to build iptables with extensible sdk on Fedora 23 i686

Armin Kuster

Yi Zhao

2.1 M3

ACCEPTED

New (Never tested)

2016-02-04

8380<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8380>

Medium+

multiple pointer devices in qemu

Jussi Kukkonen



2.1 M3

ACCEPTED

Regression (Used to work)

2015-09-23





11













Pseudo

9112<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9112>

High

pseudo server connection failed

Seebs



2.1 M3

NEW

---

2016-02-14

9031<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9031>

Medium+

Intermittent loss of file attributes during do_packagedata

Seebs



2.1 M3

IN PROGRESS REVIEW

---

2016-02-02





2













Sato

9026<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9026>

Medium+

Missing 'Home' icon on sato for qemuppc and qemumips

Jussi Kukkonen

Yi Zhao

2.1 M3

IN PROGRESS REVIEW

Regression (Used to work)

2016-02-02





1













Toaster

9266<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9266>

Medium+

Image builds aren't identified as images

Michael Wood

Mihail Stanciu

2.1 M3

IN PROGRESS REVIEW

---

2016-03-15

7880<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7880>

Medium+

Toaster uses the same /tmp dir across releases

Ed Bartosh

Mihail Stanciu

2.1 M3

IN PROGRESS REVIEW

New (Never tested)

2015-06-11





2
















Regards,
AlexG

--_000_1FFB62CE8AEB0D4298B51122D8903E96261EC174irsmsx110gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
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
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:24.0pt;
	font-family:"Times New Roman",serif;
	font-weight:bold;}
h2
	{mso-style-priority:9;
	mso-style-link:"Heading 2 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:18.0pt;
	font-family:"Times New Roman",serif;
	font-weight:bold;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Times New Roman",serif;
	font-weight:bold;}
span.Heading2Char
	{mso-style-name:"Heading 2 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 2";
	font-family:"Times New Roman",serif;
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
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1778089317;
	mso-list-type:hybrid;
	mso-list-template-ids:-92078440 -770683798 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
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
<p class=3D"MsoNormal">Here is the Full Pass test report for YP 2.1_M3.rc1 =
build. The full report can be accessed here as well:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW12_-_2016-03-14_-_Full_Pass=
_2.1_M3.rc1">
https://wiki.yoctoproject.org/wiki/WW12_-_2016-03-14_-_Full_Pass_2.1_M3.rc1=
</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issue summary:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>During this release, Hob was removed and was remove=
d from Build Appliance as well. This change also affected the Build Applian=
ce, and building a core-image-minimal via cmd line failed - YP<a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9314">9314</a><o:p></o:p>=
</p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>Many of the Toaster tests were blocked (80%) by<spa=
n style=3D"font-size:10.0pt">
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9252"><span =
style=3D"font-family:&quot;Verdana&quot;,sans-serif;color:#663366">9252</sp=
an></a>
</span>&#8211; Images cannot be built within Toaster. The issue has been ad=
dressed and fixed and is being reviewed.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>Nightly-world failed on our local AB machines while=
 building webkitgtk with a compiler on Fedora23, OpenSuse 12.3, CentOS 7 ho=
sts - 9198<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>There are few issues on i686 hosts (fedora 23) wher=
e some builds failed:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>9287&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Failed to=
 build nativesdk-glibc for qemumips and qemumips64 on Fedora 23 i686<o:p></=
o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>9286&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Failed to=
 build gst-player for qemuarm64 on Fedora23 i686<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>9285&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Failed to=
 build gobject-introspection for qemumips64 on i686 hosts<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>There are few eSDK fails as well:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>9019 - Failed to install sdk_ext if sdk_ext =
build with 'rm_work' feature<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>9301&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Extensibl=
e SDK: failed to run sdk-update: checksum mismatch for uninative<o:p></o:p>=
</p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>Besides the issues reported by our test runs, there=
 are quite a few opened Medium&#43;/High issues (24 Medium&#43; and 2 High)=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A side note regarding <a href=3D"https://wiki.yoctop=
roject.org/charts/perf_milestone/performance_test.html">
build performance</a> test, <a href=3D"https://wiki.yoctoproject.org/charts=
/perf_milestone/bitbake-virtual-kernel.html">
building the kernel</a> now takes on average 2:20 minutes less than the pre=
vious milestone, with 6:23 minutes on average on Ubuntu 12 and 7:09 on Fedo=
ra 19. Besides that, also the
<a href=3D"https://wiki.yoctoproject.org/charts/perf_milestone/bitbake-core=
-image-sato.html">
core-image-sato</a> build takes substantially less, with 3:30 minutes on av=
erage less than the previous build (1:24:53 hours compared with 1:28:28/ pr=
evious build on Ubuntu 12 and 1:28:02 compared with 1:31:22 on Fedora 19)<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">Testing data</spa=
n></span><span style=3D"font-size:18.0pt;font-family:&quot;Arial&quot;,sans=
-serif;color:black;font-weight:normal"><o:p></o:p></span></h1>
</div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
;orphans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0px;wo=
rd-spacing:0px"><span style=3D"font-size:9.5pt;color:black"> Test type:&nbs=
p; Full Pass Release Test<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:9.5pt;color:black"> Branch: master<o:p></o:p></s=
pan></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:9.5pt;color:black"> Build name: 2.1_M3.rc1<o:p><=
/o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:9.5pt;color:black"> poky commit: 8debfea81e69d03=
8bd2d56314b272cb74f5582ed<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:9.5pt;color:black"> Autobuilder images repositor=
y: http://autobuilder.yoctoproject.org/pub/releases/yocto-2.1_M3.rc1/<o:p><=
/o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:9.5pt;color:black"> Distributions tested: Ubuntu=
 15.04 64 bit, Ubuntu 14.04 64bit, Fedora 21 64bit, Fedora 22 64bit, Opensu=
se 13.2 64bit, CentOS 7 64 bit <o:p></o:p></span></pre>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white;border:none;padding:0in;orphans: auto;text-align:start;widow=
s: 1;-webkit-text-stroke-width: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal"><o:p>&nbsp;</o:p>=
</span></span></h1>
<h1 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">Test Run Summary =
Report</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Arial=
&quot;,sans-serif;color:black;font-weight:normal"><o:p></o:p></span></h1>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0" style=3D"background:white;orphans: auto;text-align:start;widows: 1;-=
webkit-text-stroke-width: 0px;word-spacing:0px">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Testing Summary Report</span></b><b><span style=
=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,serif"><o:p></o=
:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Run<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Plan<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Environment<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Passed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Other issues<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Failed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Failing bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Blocked<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Blocking bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Complete<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5575"><span style=3D"colo=
r:#5A3696">5575</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D557=
6"><span style=3D"color:#5A3696">5576</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">ADT: master branch<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Fedora 23 i686<o:p><=
/o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9048"><span style=3D"color:#5A36=
96">9048</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9285"><span style=3D"color:#5A36=
96">9285</span></a><span class=3D"apple-converted-space">&nbsp;</span><a hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9286"><span style=
=3D"color:#5A3696">9286</span></a><span class=3D"apple-converted-space">&nb=
sp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D92=
87"><span style=3D"color:#5A3696">9287</span></a><span class=3D"apple-conve=
rted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D9019"><span style=3D"color:#5A3696">9019</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D9301"><span style=3D"color:#5A3696">9301</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5573"><span style=3D"colo=
r:#5A3696">5573</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D557=
4"><span style=3D"color:#5A3696">5574</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">ADT: master branch<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Ubuntu 14.04 x86_64<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">99.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9019"><span style=3D"color:#5A36=
96">9019</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9301"><span style=3D"color:#5A36=
96">9301</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5583"><span style=3D"colo=
r:#5A3696">5583</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D558=
4"><span style=3D"color:#5A3696">5584</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Beaglebone Black<o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9259"><span style=3D"color:#5A36=
96">9259</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5589"><span style=3D"colo=
r:#5A3696">5589</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D559=
0"><span style=3D"color:#5A3696">5590</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">EdgeRouter<o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9259"><span style=3D"color:#5A36=
96">9259</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5551"><span style=3D"colo=
r:#5A3696">5551</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D555=
2"><span style=3D"color:#5A3696">5552</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">genericx86 - on MMAX=
32bit<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9271"><span style=3D"color:#5A36=
96">9271</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5547"><span style=3D"colo=
r:#5A3696">5547</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">genericx86-64 on MMA=
X64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5545"><span style=3D"colo=
r:#5A3696">5545</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D554=
6"><span style=3D"color:#5A3696">5546</span></a><span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D5599"><span style=3D"color:#5A3696">5599</span></a><o:p>=
</o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">genericx86-64 on NUC=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9254"><span style=3D"color:#5A36=
96">9254</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">2.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D7897"><span style=3D"color:#5A36=
96">7897</span></a><span class=3D"apple-converted-space">&nbsp;</span><a hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9267"><span style=
=3D"color:#5A3696">9267</span></a><span class=3D"apple-converted-space">&nb=
sp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D92=
96"><span style=3D"color:#5A3696">9296</span></a><span class=3D"apple-conve=
rted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D8988"><span style=3D"color:#5A3696">8988</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5597"><span style=3D"colo=
r:#5A3696">5597</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">genericx86-64-lsb on=
 NUC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9267"><span style=3D"color:#5A36=
96">9267</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5549"><span style=3D"colo=
r:#5A3696">5549</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">genericx86-64-lsb on=
 NUC D54250WYK<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5604"><span style=3D"colo=
r:#5A3696">5604</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">genericx86-64-WIC on=
 MMAX64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5603"><span style=3D"colo=
r:#5A3696">5603</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">genericx86-64-WIC on=
 NUC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">97.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">2.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9179"><span style=3D"color:#5A36=
96">9179</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5550"><span style=3D"colo=
r:#5A3696">5550</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">genericx86-lsb - on =
MMAX32bit<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5605"><span style=3D"colo=
r:#5A3696">5605</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">genericx86-WIC on MM=
AX32<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">97.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">2.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9271"><span style=3D"color:#5A36=
96">9271</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5591"><span style=3D"colo=
r:#5A3696">5591</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D559=
2"><span style=3D"color:#5A3696">5592</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">MPC8315e-rdb<o:p></o=
:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9259"><span style=3D"color:#5A36=
96">9259</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5581"><span style=3D"colo=
r:#5A3696">5581</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D558=
2"><span style=3D"color:#5A3696">5582</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">P1022ds<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9259"><span style=3D"color:#5A36=
96">9259</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5553"><span style=3D"colo=
r:#5A3696">5553</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D555=
4"><span style=3D"color:#5A3696">5554</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">qemu-x86<o:p></o:p><=
/span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5557"><span style=3D"colo=
r:#5A3696">5557</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D555=
8"><span style=3D"color:#5A3696">5558</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">qemuarm<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9259"><span style=3D"color:#5A36=
96">9259</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5593"><span style=3D"colo=
r:#5A3696">5593</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D559=
4"><span style=3D"color:#5A3696">5594</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">qemuarm64<o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9259"><span style=3D"color:#5A36=
96">9259</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5559"><span style=3D"colo=
r:#5A3696">5559</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D556=
0"><span style=3D"color:#5A3696">5560</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">qemumips<o:p></o:p><=
/span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9259"><span style=3D"color:#5A36=
96">9259</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5595"><span style=3D"colo=
r:#5A3696">5595</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D559=
6"><span style=3D"color:#5A3696">5596</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">qemumips64<o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9284"><span style=3D"color:#5A36=
96">9284</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9259"><span style=3D"color:#5A36=
96">9259</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5561"><span style=3D"colo=
r:#5A3696">5561</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D556=
2"><span style=3D"color:#5A3696">5562</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">qemuppc<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">98.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9259"><span style=3D"color:#5A36=
96">9259</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5555"><span style=3D"colo=
r:#5A3696">5555</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D555=
6"><span style=3D"color:#5A3696">5556</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BSP/QEMU: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">qemux86-64<o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5579"><span style=3D"colo=
r:#5A3696">5579</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Eclipse Plugin: mast=
er branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Luna on Fedora 22 X8=
6_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">95.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">4.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D7054"><span style=3D"color:#5A36=
96">7054</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5580"><span style=3D"colo=
r:#5A3696">5580</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Eclipse Plugin: mast=
er branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Mars on Fedora 22 x8=
6_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">95.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">4.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D7054"><span style=3D"color:#5A36=
96">7054</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5600"><span style=3D"colo=
r:#5A3696">5600</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D560=
1"><span style=3D"color:#5A3696">5601</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Meta-yocto: master b=
ranch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Ubuntu 14.04 x86_64<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">96.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D6156"><span style=3D"color:#5A36=
96">6156</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">3.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9120"><span style=3D"color:#5A36=
96">9120</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5539"><span style=3D"colo=
r:#5A3696">5539</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D554=
0"><span style=3D"color:#5A3696">5540</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Toaster: master bran=
ch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">'Ubuntu 14.10 x86_64=
'<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">20.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">2.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D8125"><span style=3D"color:#5A36=
96">8125</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">76.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9252"><span style=3D"color:#5A36=
96">9252</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5570"><span style=3D"colo=
r:#5A3696">5570</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">OE-Core: master bran=
ch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">CentOS 7.1 x86_64<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">99.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9273"><span style=3D"color:#5A36=
96">9273</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5568"><span style=3D"colo=
r:#5A3696">5568</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">OE-Core: master bran=
ch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Fedora 21 x86_64<o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5569"><span style=3D"colo=
r:#5A3696">5569</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">OE-Core: master bran=
ch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Fedora 23 x86_64<o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5571"><span style=3D"colo=
r:#5A3696">5571</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">OE-Core: master bran=
ch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">OpenSuse 13.2 x86_64=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5572"><span style=3D"colo=
r:#5A3696">5572</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">OE-Core: master bran=
ch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Ubuntu 15.04 x86_64<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">99.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9273"><span style=3D"color:#5A36=
96">9273</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5585"><span style=3D"colo=
r:#5A3696">5585</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">OE-Core: master bran=
ch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Ubuntu 15.10 x86_64<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">99.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9273"><span style=3D"color:#5A36=
96">9273</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5567"><span style=3D"colo=
r:#5A3696">5567</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Automated Build Test=
ing: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">CentOS 7 x86_64<o:p>=
</o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">94.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">5.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9198"><span style=3D"color:#5A36=
96">9198</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5566"><span style=3D"colo=
r:#5A3696">5566</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Automated Build Test=
ing: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Fedora 23 x86-64<o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">94.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">5.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9198"><span style=3D"color:#5A36=
96">9198</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5565"><span style=3D"colo=
r:#5A3696">5565</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Automated Build Test=
ing: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">OpenSuse 13.2 x86_64=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">94.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">5.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9198"><span style=3D"color:#5A36=
96">9198</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5564"><span style=3D"colo=
r:#5A3696">5564</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Automated Build Test=
ing: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Ubuntu 15.10 x86-64<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5563"><span style=3D"colo=
r:#5A3696">5563</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Runtime: master bran=
ch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Multiple Environment=
s<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D5602"><span style=3D"colo=
r:#5A3696">5602</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Build Appliance: mas=
ter branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">VMWare Player on Ubu=
ntu<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">16.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">none<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">16.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9314"><span style=3D"color:#5A36=
96">9314</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:black">66.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D9314"><span style=3D"color:#5A36=
96">9314</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 38</span><=
/b><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:18.0pt"><span styl=
e=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">=
<br>
<img border=3D"0" width=3D"465" height=3D"150" id=3D"Picture_x0020_2" src=
=3D"cid:image005.jpg@01D18462.F19859D0" alt=3D"Bug Status"><o:p></o:p></spa=
n></p>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:18.0pt"><span styl=
e=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">=
<o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
<tbody>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Case Status Report</span></b><b><span styl=
e=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,serif"><o:p></=
o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Count<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">BLOCKED<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">60<o:p></o:p></span>=
</p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">FAILED<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">31<o:p></o:p></span>=
</p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">PASSED<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">2796<o:p></o:p></spa=
n></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 2887</span=
></b><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><img border=3D"0" wi=
dth=3D"465" height=3D"150" id=3D"Picture_x0020_1" src=3D"cid:image006.jpg@0=
1D18462.F19859D0" alt=3D"http://chart.apis.google.com/chart?cht=3Dbvg&amp;c=
hs=3D372x120&amp;chbh=3Da&amp;chds=3D0,2796&amp;chxt=3Dy&amp;chxr=3D0,0,279=
6,466&amp;chd=3Dt:&amp;chd=3Dt:60,31,2796&amp;chco=3DFFFF66|FF9933|00FF00&a=
mp;chdl=3DBLOCKED(60)&#43;2%25|FAILED(31)&#43;1%25|PASSED(2796)&#43;97%25">=
</span><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:14.3pt;background:=
white;orphans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0=
px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:14.3pt;background:=
white;orphans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0=
px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white;border:none;padding:0in;orphans: auto;text-align:start;widow=
s: 1;-webkit-text-stroke-width: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">Bugs Found during=
 QA Test</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;font-weight:normal"><o:p></o:p></span></h1>
<h2 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white;border:none;padding:0in;orphans: auto;text-align:start;widow=
s: 1;-webkit-text-stroke-width: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:red;font-weight:normal">New and notable iss=
ues Found during QA Test &amp; Community</span></span><span style=3D"font-s=
ize:14.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;font-weight=
:normal"><o:p></o:p></span></h2>
</div>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:white;border-collapse:collapse;border:none;borde=
r-radius: 8px;border-spacing: 0px;orphans: auto;text-align:start;widows: 1;=
-webkit-text-stroke-width: 0px;word-spacing:0px">
<tbody>
<tr>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">ID<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Summary (11 tasks)<span class=3D"apple-converted-space">&nbsp;=
</span><a href=3D"https://bugzilla.yoctoproject.org/buglist.cgi?&amp;field0=
-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;value0-0-0=3D9314&amp;field0-0-1=
=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0-0-1=3D%209301&amp;field0-0-2=3D=
bug_id&amp;type0-0-2=3Dequals&amp;value0-0-2=3D%209284&amp;field0-0-3=3Dbug=
_id&amp;type0-0-3=3Dequals&amp;value0-0-3=3D%209285&amp;field0-0-4=3Dbug_id=
&amp;type0-0-4=3Dequals&amp;value0-0-4=3D%209286&amp;field0-0-5=3Dbug_id&am=
p;type0-0-5=3Dequals&amp;value0-0-5=3D%209287&amp;field0-0-6=3Dbug_id&amp;t=
ype0-0-6=3Dequals&amp;value0-0-6=3D%209273&amp;field0-0-7=3Dbug_id&amp;type=
0-0-7=3Dequals&amp;value0-0-7=3D%209198&amp;field0-0-8=3Dbug_id&amp;type0-0=
-8=3Dequals&amp;value0-0-8=3D%209252&amp;field0-0-9=3Dbug_id&amp;type0-0-9=
=3Dequals&amp;value0-0-9=3D%209019&amp;field0-0-10=3Dbug_id&amp;type0-0-10=
=3Dequals&amp;value0-0-10=3D%208988&amp;field0-1-0=3Dbug_status&amp;type0-1=
-0=3Dnotequals&amp;value0-1-0=3DCLOSED"><span style=3D"font-family:&quot;Ca=
mbria Math&quot;,serif;color:#3366BB">=1B$B"M=1B(B</span></a><o:p></o:p></s=
pan></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">P<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Assignee<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">QA<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Milestone<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Status<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Resolution<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">cf_regression_type<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Created<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Automated Build Testing<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9273" title=3D"bugzilla:9=
273"><span style=3D"color:#3366BB">9273</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">test_recipeto=
ol_create_simple fails on Ubuntu 15.04, 15.10 and CentOS 7.2<o:p></o:p></sp=
an></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Paul&nbsp;Egg=
leton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Alexandru&nbs=
p;Georgescu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1 M4<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">IN PROGRESS R=
EVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2016-03-16<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Automated Runtime Testing<o:p></o:p></span></b></p=
>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8988" title=3D"bugzilla=
:8988"><span style=3D"color:#3366BB">8988</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">test_rpm_qu=
ery_nonroot (oeqa.runtime.rpm.RpmInstallRemoveTest) - Failed to create new =
user<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Ross&nbsp;B=
urton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-01-22<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Build Appliance<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9314" title=3D"bugzilla:9=
314"><span style=3D"color:#3366BB">9314</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Yocto 2.1M3 r=
c1 Build Appliance: bitbake core-image-minimal with command-line failed<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Undecided<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Juro&nbsp;Bys=
tricky<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">---<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">---<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2016-03-21<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Matchbox<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9284" title=3D"bugzilla=
:9284"><span style=3D"color:#3366BB">9284</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Click 'Home=
' icon can not back to desktop on sato for qemumips64<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Jussi&nbsp;=
Kukkonen<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGRESS=
 REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-03-17<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">OE-Core<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9285" title=3D"bugzilla=
:9285"><span style=3D"color:#3366BB">9285</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Failed to b=
uild gobject-introspection for qemumips64 on i686 hosts<o:p></o:p></span></=
p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Alexander&n=
bsp;Kanavin<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-03-17<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9286" title=3D"bugzilla=
:9286"><span style=3D"color:#3366BB">9286</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Failed to b=
uild gst-player for qemuarm64 on Fedora23 i686<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Alexander&n=
bsp;Kanavin<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-03-17<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9287" title=3D"bugzilla=
:9287"><span style=3D"color:#3366BB">9287</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Failed to b=
uild nativesdk-glibc for qemumips and qemumips64 on Fedora 23 i686<o:p></o:=
p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Ross&nbsp;B=
urton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-03-17<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9019" title=3D"bugzilla=
:9019"><span style=3D"color:#3366BB">9019</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Failed to i=
nstall sdk_ext if sdk_ext build with 'rm_work' feature<o:p></o:p></span></p=
>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Randy&nbsp;=
Witt<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-02-01<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9198" title=3D"bugzilla=
:9198"><span style=3D"color:#3366BB">9198</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">webkitgtk c=
ompiler error<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Alexander&n=
bsp;Kanavin<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Mihail&nbsp=
;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-03-02<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9301" title=3D"bugzilla:9=
301"><span style=3D"color:#3366BB">9301</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Extensible SD=
K: failed to run sdk-update: checksum mismatch for uninative<o:p></o:p></sp=
an></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Undecided<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Paul&nbsp;Egg=
leton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Yi&nbsp;Zhao<=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">---<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">New (Never te=
sted)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2016-03-18<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Toaster<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9252" title=3D"bugzilla=
:9252"><span style=3D"color:#3366BB">9252</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">Build image=
s doesn't work in Toaster<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">High<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">Ed&nbsp;Bar=
tosh<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">Cristina&nb=
sp;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">2.1 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">IN PROGRESS=
 REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">2016-03-14<=
o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:14.3pt;background:=
white;orphans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0=
px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h2 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white;border:none;padding:0in;orphans: auto;text-align:start;widow=
s: 1;-webkit-text-stroke-width: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">Other Bugs found =
during QA Test</span></span><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal"><o:p></o:p></span=
></h2>
</div>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:white;border-collapse:collapse;border:none;borde=
r-radius: 8px;border-spacing: 0px;orphans: auto;text-align:start;widows: 1;=
-webkit-text-stroke-width: 0px;word-spacing:0px">
<tbody>
<tr>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">ID<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Summary (11 tasks)<span class=3D"apple-converted-space">&nbsp;=
</span><a href=3D"https://bugzilla.yoctoproject.org/buglist.cgi?&amp;field0=
-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;value0-0-0=3D6156&amp;field0-0-1=
=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0-0-1=3D%207054&amp;field0-0-2=3D=
bug_id&amp;type0-0-2=3Dequals&amp;value0-0-2=3D%207897&amp;field0-0-3=3Dbug=
_id&amp;type0-0-3=3Dequals&amp;value0-0-3=3D%208125&amp;field0-0-4=3Dbug_id=
&amp;type0-0-4=3Dequals&amp;value0-0-4=3D%208994&amp;field0-0-5=3Dbug_id&am=
p;type0-0-5=3Dequals&amp;value0-0-5=3D%209048&amp;field0-0-6=3Dbug_id&amp;t=
ype0-0-6=3Dequals&amp;value0-0-6=3D%209120&amp;field0-0-7=3Dbug_id&amp;type=
0-0-7=3Dequals&amp;value0-0-7=3D%209254&amp;field0-0-8=3Dbug_id&amp;type0-0=
-8=3Dequals&amp;value0-0-8=3D%209259&amp;field0-0-9=3Dbug_id&amp;type0-0-9=
=3Dequals&amp;value0-0-9=3D%209267&amp;field0-0-10=3Dbug_id&amp;type0-0-10=
=3Dequals&amp;value0-0-10=3D%209271&amp;field0-1-0=3Dbug_status&amp;type0-1=
-0=3Dnotequals&amp;value0-1-0=3DCLOSED"><span style=3D"font-family:&quot;Ca=
mbria Math&quot;,serif;color:#3366BB">=1B$B"M=1B(B</span></a><o:p></o:p></s=
pan></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">P<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Assignee<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">QA<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Milestone<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Status<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Resolution<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">cf_regression_type<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Created<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">---<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9267" title=3D"bugzilla:9=
267"><span style=3D"color:#3366BB">9267</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">test_parselog=
s (oeqa.runtime.parselogs.ParseLogsTest) failed on NUC 6i5SYH, firmware loa=
d for i915/skl_guc_ver4.bin failed<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">California&nb=
sp;Sullivan<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Francisco&nbs=
p;Pedraza<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1 M4<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">---<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2016-03-15<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">New (Never tested)<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7897" title=3D"bugzill=
a:7897"><span style=3D"color:#3366BB">7897</span></a><o:p></o:p></span></i>=
</p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Dmesg erro=
r BAR 14 and BAR 15 failed to assign in Minnow Max<o:p></o:p></span></i></p=
>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Saul&nbsp;=
Wold<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Cristina&n=
bsp;Agurida<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1 M3<o:p=
></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">RESOLVED<o=
:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">FIXED<o:p>=
</o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">New (Never=
 tested)<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-06-17=
<o:p></o:p></span></i></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">OE-Core<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9048" title=3D"bugzilla=
:9048"><span style=3D"color:#3366BB">9048</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Failed to b=
uild iptables with extensible sdk on Fedora 23 i686<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Armin&nbsp;=
Kuster<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">ACCEPTED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-02-04<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Regression (Found by QA test)<o:p></o:p></span></b=
></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9254" title=3D"bugzill=
a:9254"><span style=3D"color:#3366BB">9254</span></a><o:p></o:p></span></i>=
</p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Mismatch b=
etween genericx86 and genericx86-64 keyboards<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Saul&nbsp;=
Wold<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Francisco&=
nbsp;Pedraza<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1 M4<o:p=
></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">RESOLVED<o=
:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">FIXED<o:p>=
</o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression=
 (Found by QA test)<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2016-03-14=
<o:p></o:p></span></i></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">BSPs<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9271" title=3D"bugzilla:9=
271"><span style=3D"color:#3366BB">9271</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">[Test Case 10=
59] test_parselogs (oeqa.runtime.parselogs.ParseLogsTest)<o:p></o:p></span>=
</p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">California&nb=
sp;Sullivan<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Francisco&nbs=
p;Pedraza<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1 M4<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (F=
ound by QA test)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2016-03-16<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Regression (Used to work)<o:p></o:p></span></b></p=
>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8994" title=3D"bugzilla:8=
994"><span style=3D"color:#3366BB">8994</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Parselogs err=
or: *ERROR* Timed out waiting for forcewake old ack to clear in lsb image o=
n NUC<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Cristina&nbsp=
;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Cristina&nbsp=
;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1 M3<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">VERIFIED<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">WORKSFORME<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2016-01-25<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">OE-Core<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9120" title=3D"bugzilla:9=
120"><span style=3D"color:#3366BB">9120</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">The patch fil=
e is not applied to linux-yocto by yocto-kernel add patch command<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Yi&nbsp;Zhao<=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2016-02-16<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9259" title=3D"bugzilla:9=
259"><span style=3D"color:#3366BB">9259</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">The rpm datab=
ase costs lots of disk space after install a package<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Ross&nbsp;Bur=
ton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Yi&nbsp;Zhao<=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.2<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2016-03-15<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156" title=3D"bugzilla:6=
156"><span style=3D"color:#3366BB">6156</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">[crosstap] no=
 trace message output on qemuarm<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Kevin&nbsp;Ha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">ACCEPTED<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2014-04-14<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054" title=3D"bugzilla:7=
054"><span style=3D"color:#3366BB">7054</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">OprofileUI ne=
eds to be updated to reflect new oprofile functionality<o:p></o:p></span></=
p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Ross&nbsp;Bur=
ton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Mihail&nbsp;S=
tanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">ACCEPTED<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2014-12-09<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Toaster<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8125" title=3D"bugzilla:8=
125"><span style=3D"color:#3366BB">8125</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Filter does n=
ot work as expected after clearing the search results<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Michael&nbsp;=
Wood<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Cristina&nbsp=
;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.2<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-08-07<o:=
p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h2 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white;border:none;padding:0in;orphans: auto;text-align:start;widow=
s: 1;-webkit-text-stroke-width: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal"><o:p>&nbsp;</o:p>=
</span></span></h2>
<h2 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">pTest open bugs</=
span></span><span style=3D"font-size:14.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:black;font-weight:normal"><o:p></o:p></span></h2>
</div>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:white;border-collapse:collapse;border:none;borde=
r-radius: 8px;border-spacing: 0px;orphans: auto;text-align:start;widows: 1;=
-webkit-text-stroke-width: 0px;word-spacing:0px">
<tbody>
<tr>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">ID<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Summary (10 tasks)<span class=3D"apple-converted-space">&nbsp;=
</span><a href=3D"https://bugzilla.yoctoproject.org/buglist.cgi?&amp;field0=
-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;value0-0-0=3D8146&amp;field0-0-1=
=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0-0-1=3D%208172&amp;field0-0-2=3D=
bug_id&amp;type0-0-2=3Dequals&amp;value0-0-2=3D%208471&amp;field0-0-3=3Dbug=
_id&amp;type0-0-3=3Dequals&amp;value0-0-3=3D%208655&amp;field0-0-4=3Dbug_id=
&amp;type0-0-4=3Dequals&amp;value0-0-4=3D%208656&amp;field0-0-5=3Dbug_id&am=
p;type0-0-5=3Dequals&amp;value0-0-5=3D%208828&amp;field0-0-6=3Dbug_id&amp;t=
ype0-0-6=3Dequals&amp;value0-0-6=3D%208830&amp;field0-0-7=3Dbug_id&amp;type=
0-0-7=3Dequals&amp;value0-0-7=3D%208831&amp;field0-0-8=3Dbug_id&amp;type0-0=
-8=3Dequals&amp;value0-0-8=3D%208832&amp;field0-0-9=3Dbug_id&amp;type0-0-9=
=3Dequals&amp;value0-0-9=3D%208834&amp;field0-0-10=3Dbug_id&amp;type0-0-10=
=3Dequals&amp;value0-0-10=3D%209042&amp;field0-1-0=3Dbug_status&amp;type0-1=
-0=3Dnotequals&amp;value0-1-0=3DCLOSED"><span style=3D"font-family:&quot;Ca=
mbria Math&quot;,serif;color:#3366BB">=1B$B"M=1B(B</span></a><o:p></o:p></s=
pan></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">P<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Assignee<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">QA<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Milestone<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Status<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Resolution<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">cf_regression_type<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Created<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Automated Runtime Testing<o:p></o:p></span></b></p=
>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8831" title=3D"bugzilla:8=
831"><span style=3D"color:#3366BB">8831</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">pTest - busyb=
ox tests fail for 2.1_M1.rc1<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Chen&nbsp;Qi<=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1 M4<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">ACCEPTED<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">---<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-12-17<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8832" title=3D"bugzilla:8=
832"><span style=3D"color:#3366BB">8832</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">pTest - bash =
tests fail for 2.1_M1.rc1<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Hongxu&nbsp;J=
ia<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">---<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-12-17<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8834" title=3D"bugzilla:8=
834"><span style=3D"color:#3366BB">8834</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">pTest - attr =
test fail ln -s f<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Chen&nbsp;Qi<=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1 M4<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">ACCEPTED<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">---<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-12-17<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9042" title=3D"bugzilla:9=
042"><span style=3D"color:#3366BB">9042</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">pTest - strac=
e fails on NUC 5425WYK for YP 2.1_M2.rc1<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">dengke<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Francisco&nbs=
p;Pedraza<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1 M3<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">ACCEPTED<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2016-02-03<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8146" title=3D"bugzilla:8=
146"><span style=3D"color:#3366BB">8146</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">ptest - some =
test cases are failing for acl<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Cristina&nbsp=
;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Ross&nbsp;Bur=
ton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">---<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-08-11<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8471" title=3D"bugzilla:8=
471"><span style=3D"color:#3366BB">8471</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">ptest - some =
valgrind ptests fail on 2.0.rc1<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Ross&nbsp;Bur=
ton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Alexandru&nbs=
p;Georgescu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-10-09<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8656" title=3D"bugzilla:8=
656"><span style=3D"color:#3366BB">8656</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">ptest - perl =
tests fail for genericx86-64 on NUC - 2.0.rc3<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Armin&nbsp;Ku=
ster<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Cristina&nbsp=
;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-11-06<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8828" title=3D"bugzilla:8=
828"><span style=3D"color:#3366BB">8828</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">pTest - lttng=
-tools tests fail for 2.1_M1.rc1<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Richard&nbsp;=
Purdie<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-12-17<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8830" title=3D"bugzill=
a:8830"><span style=3D"color:#3366BB">8830</span></a><o:p></o:p></span></i>=
</p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">pTest - pa=
ngo tests fail for 2.1_M1.rc1<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Jussi&nbsp=
;Kukkonen<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1<o:p></=
o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">RESOLVED<o=
:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">FIXED<o:p>=
</o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">---<o:p></=
o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-12-17=
<o:p></o:p></span></i></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;padding:1.5pt 3.75pt 1=
.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8655" title=3D"bugz=
illa:8655"><span style=3D"color:#3366BB">8655</span></a><o:p></o:p></span><=
/i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">ptest - =
two openssl ptests fail on 2.0.rc3<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#=
43;<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Maxin&nb=
sp;B.&nbsp;John<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Francisc=
o&nbsp;Pedraza<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o=
:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">RESOLVED=
<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">WORKSFOR=
ME<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regressi=
on (Used to work)<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;padding:1.5pt 3.75pt 1=
.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-11-=
06<o:p></o:p></span></i></p>
</td>
</tr>
</tbody>
</table>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white;border:none;padding:0in;orphans: auto;text-align:start;widow=
s: 1;-webkit-text-stroke-width: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal"><o:p>&nbsp;</o:p>=
</span></span></h1>
<h1 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">Current community=
 Open Bugs - Medium&#43;/High</span></span><span style=3D"font-size:18.0pt;=
font-family:&quot;Arial&quot;,sans-serif;color:black;font-weight:normal"><o=
:p></o:p></span></h1>
</div>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:14.3pt;background:=
white;orphans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0=
px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black">Overview of the open bugs opened against current milestone or rel=
ease which are Medium&#43; or High and are not targeted for the next milest=
ones<o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:white;border-collapse:collapse;border:none;borde=
r-radius: 8px;border-spacing: 0px;orphans: auto;text-align:start;widows: 1;=
-webkit-text-stroke-width: 0px;word-spacing:0px">
<tbody>
<tr>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">ID<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">P<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Summary (26 tasks)<span class=3D"apple-converted-space">&nbsp;=
</span><a href=3D"https://bugzilla.yoctoproject.org/buglist.cgi?&amp;field0=
-0-0=3Dtarget_milestone&amp;type0-0-0=3Dequals&amp;value0-0-0=3D2.1&amp;fie=
ld0-0-1=3Dtarget_milestone&amp;type0-0-1=3Dequals&amp;value0-0-1=3D2.1%20M1=
&amp;field0-0-2=3Dtarget_milestone&amp;type0-0-2=3Dequals&amp;value0-0-2=3D=
2.1%20M2&amp;field0-0-3=3Dtarget_milestone&amp;type0-0-3=3Dequals&amp;value=
0-0-3=3D2.1%20M3&amp;field0-1-0=3Dpriority&amp;type0-1-0=3Dequals&amp;value=
0-1-0=3Dhigh&amp;field0-1-1=3Dpriority&amp;type0-1-1=3Dequals&amp;value0-1-=
1=3DMedium%2B&amp;field0-2-0=3Dbug_severity&amp;type0-2-0=3Dnotequals&amp;v=
alue0-2-0=3Denhancement&amp;field0-3-0=3Dbug_status&amp;type0-3-0=3Dnotequa=
ls&amp;value0-3-0=3DRESOLVED&amp;field0-4-0=3Dbug_status&amp;type0-4-0=3Dno=
tequals&amp;value0-4-0=3DVERIFIED"><span style=3D"font-family:&quot;Cambria=
 Math&quot;,serif;color:#3366BB">=1B$B"M=1B(B</span></a><o:p></o:p></span><=
/b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Assignee<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">QA<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Milestone<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Status<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">cf_regression_type<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Created<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">0<o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">AutoBuilder<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7690" title=3D"bugzilla=
:7690"><span style=3D"color:#3366BB">7690</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">autobuilder=
 PRSERV setup<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Beth&nbsp;F=
lanagan<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-04-30<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1<o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Automated Runtime Testing<o:p></o:p></span></b></p=
>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8525" title=3D"bugzilla=
:8525"><span style=3D"color:#3366BB">8525</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">selftest ne=
eds to control distro configuration<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Daniel&nbsp=
;Istrate<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Alexandru&n=
bsp;Georgescu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">ACCEPTED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-10-15<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8576" title=3D"bugz=
illa:8576"><span style=3D"color:#3366BB">8576</span></a><o:p></o:p></span><=
/b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#=
43;<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">QemuRunn=
er logging for qemu start failure does not log anything to the console in o=
e-selftest<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Costin<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p>=
</o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p>=
</o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-10-=
26<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><s><span style=3D"fo=
nt-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8861" title=3D"bu=
gzilla:8861"><span style=3D"color:#3366BB;text-decoration:none underline"><=
span style=3D"text-decoration:none underline">886</span></span><span style=
=3D"color:#3366BB;text-decoration:none underline"><span style=3D"text-decor=
ation:none underline">1</span></span></a><o:p></o:p></span></s></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><s><span style=3D"fo=
nt-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Mediu=
m&#43;<o:p></o:p></span></s></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><s><span style=3D"fo=
nt-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Syste=
m envs in /etc/profile are not injected in oeqa ssh connection<o:p></o:p></=
span></s></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><s><span style=3D"fo=
nt-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Ross&=
nbsp;Burton<o:p></o:p></span></s></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><s><span style=3D"fo=
nt-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Costi=
n<o:p></o:p></span></s></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><s><span style=3D"fo=
nt-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M=
3<o:p></o:p></span></s></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><s><span style=3D"fo=
nt-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">CLOSE=
D<o:p></o:p></span></s></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><s><span style=3D"fo=
nt-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o=
:p></o:p></span></s></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><s><span style=3D"fo=
nt-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-=
12-24<o:p></o:p></span></s></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5319" title=3D"bugzilla=
:5319"><span style=3D"color:#3366BB">5319</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Need a test=
 to verify firstboot postinst script order<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Costin<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Alexandru&n=
bsp;Georgescu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2013-10-04<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8694" title=3D"bugz=
illa:8694"><span style=3D"color:#3366BB">8694</span></a><o:p></o:p></span><=
/b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#=
43;<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Add supp=
ort for multiple binaries in one test<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Costin<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGR=
ESS IMPLEMENTATION<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p>=
</o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-11-=
16<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">5<o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">BitBake<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9275" title=3D"bugzilla=
:9275"><span style=3D"color:#3366BB">9275</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">right now, =
bitbake server has a concept of single_use which has the server auto exit i=
n anonymous port case<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Ed&nbsp;Bar=
tosh<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGRESS=
 REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-03-16<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8884" title=3D"bugzilla=
:8884"><span style=3D"color:#3366BB">8884</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Locked sign=
ature warning is shown even if package can be fetched from SSTATE_MIRRORS<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Paul&nbsp;E=
ggleton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-01-06<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2<o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Eclipse Plugin<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9105" title=3D"bugzilla=
:9105"><span style=3D"color:#3366BB">9105</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">[MARS] Cann=
ot install eclipse-poky plugin<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Tim&nbsp;Or=
ling<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGRESS=
 IMPLEMENTATION<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-02-12<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1<o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Layers<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8997" title=3D"bugzilla=
:8997"><span style=3D"color:#3366BB">8997</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">qwt fails i=
n poky-lsb builds<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Beth&nbsp;F=
lanagan<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-01-25<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1<o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">OE-Core<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8748" title=3D"bugzilla=
:8748"><span style=3D"color:#3366BB">8748</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">qemu86-64 w=
ith corei7-64 did not support gcc optimization level 3 '-O3' very well<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Hongxu&nbsp=
;Jia<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-12-02<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9083" title=3D"bugzilla=
:9083"><span style=3D"color:#3366BB">9083</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Extensible =
SDK: SDK installation ERROR: Unexpected tasks left over to be executed<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Paul&nbsp;E=
ggleton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Bogdan&nbsp=
;Alexandru&nbsp;Voiculescu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">ACCEPTED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-02-09<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9194" title=3D"bugzilla=
:9194"><span style=3D"color:#3366BB">9194</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">rpm upgrade=
 leaves package removal broken<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Mark&nbsp;H=
atle<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">ACCEPTED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-03-01<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7436" title=3D"bugzilla=
:7436"><span style=3D"color:#3366BB">7436</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">kdb build r=
ace<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Maxin&nbsp;=
B.&nbsp;John<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGRESS=
 DESIGN<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-03-09<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8871" title=3D"bugzilla=
:8871"><span style=3D"color:#3366BB">8871</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">High<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">Support Fed=
ora 23<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">Michael&nbs=
p;Halstead<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">2.1<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">2016-01-05<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9038" title=3D"bugzilla=
:9038"><span style=3D"color:#3366BB">9038</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">extensible =
sdk - generates empty manifests/needs file with what is installed<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Paul&nbsp;E=
ggleton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-02-03<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8078" title=3D"bugz=
illa:8078"><span style=3D"color:#3366BB">8078</span></a><o:p></o:p></span><=
/b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#=
43;<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">useradd.=
bbclass: useradd_preinst not run when rebuilding on second MACHINE<o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Maxin&nb=
sp;B.&nbsp;John<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1<o:p>=
</o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">ACCEPTED=
<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p>=
</o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-07-=
29<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8879" title=3D"bugz=
illa:8879"><span style=3D"color:#3366BB">8879</span></a><o:p></o:p></span><=
/b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#=
43;<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">opkg-uti=
ls is built when build lib32-image<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Robert&n=
bsp;Yang<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGR=
ESS IMPLEMENTATION<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p>=
</o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-01-=
06<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8668" title=3D"bugzilla=
:8668"><span style=3D"color:#3366BB">8668</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">lttng-tools=
 ptest output confuses QA analysis<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Madhusudhan=
an<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-11-09<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9048" title=3D"bugzilla=
:9048"><span style=3D"color:#3366BB">9048</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Failed to b=
uild iptables with extensible sdk on Fedora 23 i686<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Armin&nbsp;=
Kuster<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">ACCEPTED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-02-04<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8380" title=3D"bugzilla=
:8380"><span style=3D"color:#3366BB">8380</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">multiple po=
inter devices in qemu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Jussi&nbsp;=
Kukkonen<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">ACCEPTED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-09-23<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">11<o:p></o=
:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Pseudo<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9112" title=3D"bugzilla=
:9112"><span style=3D"color:#3366BB">9112</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">High<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">pseudo serv=
er connection failed<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">Seebs<o:p><=
/o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#BF1919">2016-02-14<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9031" title=3D"bugzilla=
:9031"><span style=3D"color:#3366BB">9031</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Intermitten=
t loss of file attributes during do_packagedata<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Seebs<o:p><=
/o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGRESS=
 REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-02-02<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2<o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Sato<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9026" title=3D"bugzilla=
:9026"><span style=3D"color:#3366BB">9026</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Missing 'Ho=
me' icon on sato for qemuppc and qemumips<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Jussi&nbsp;=
Kukkonen<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGRESS=
 REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-02-02<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1<o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #222222 1.5pt;back=
ground:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Toaster<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9266" title=3D"bugz=
illa:9266"><span style=3D"color:#3366BB">9266</span></a><o:p></o:p></span><=
/b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#=
43;<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Image bu=
ilds aren't identified as images<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Michael&=
nbsp;Wood<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Mihail&n=
bsp;Stanciu<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGR=
ESS REVIEW<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p>=
</o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2016-03-=
15<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7880" title=3D"bugzilla=
:7880"><span style=3D"color:#3366BB">7880</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Toaster use=
s the same /tmp dir across releases<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Ed&nbsp;Bar=
tosh<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Mihail&nbsp=
;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2.1 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGRESS=
 REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-06-11<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #F0F0F0 1.0pt;border-right:none;backgro=
und:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2<o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#CCCCCC;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #222222 1.5pt;border-left:none=
;border-bottom:solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;backgro=
und:#CCCCCC;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">AlexG<o:p></o:p></p>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E96261EC174irsmsx110gercor_--

--_005_1FFB62CE8AEB0D4298B51122D8903E96261EC174irsmsx110gercor_
Content-Type: image/jpeg; name="image005.jpg"
Content-Description: image005.jpg
Content-Disposition: inline; filename="image005.jpg"; size=7641;
	creation-date="Tue, 22 Mar 2016 15:47:49 GMT";
	modification-date="Tue, 22 Mar 2016 15:47:49 GMT"
Content-ID: <image005.jpg@01D18462.F19859D0>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAeAB4AAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIf
IiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7
Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAARCACWAdEDASIA
AhEBAxEB/8QAHAABAAEFAQEAAAAAAAAAAAAAAAQBAgMFBgcI/8QARxAAAQQBAgMBCwkGBQIHAAAA
AQACAwQRBRITITFRBhQiNUFhcXORkrEVIzIzUlNUgdEWF1WTobIHNEJiwXJ0JTZDgqLh8P/EABsB
AQABBQEAAAAAAAAAAAAAAAAFAgMEBgcB/8QALxEBAAECAgcIAgIDAAAAAAAAAAECAwQREhMUITFR
UgUVMjNhcZGhQdEG4SKBsf/aAAwDAQACEQMRAD8A9mREQEREBERAREQEREEa1fp09vfVqKDd9HiP
Dc+1XVrla2wvrWYp2jqY3h2PYuU7qS0d1ekl2mjUfmJfmSAeznz5KJRs9463qlqPTvkqRtAujpkD
bKWnO/ly8yDvUWgn1qzFp2jWA1m67Yjjl8wcCTj2LWWdb12XSr2tUu9m1qxkbHXe07nhpxuJ/qg7
JQnavpzLHe7r0AmzjYZBnPYq15HWtKilcQx80IcXDyEtXFR1GaRo76GuaAZY8O36lWAkc7y7/tAo
PQMjOM81VcfC6w/up0rvS8JaZo5aXZJe0eU+dYbHdLqNOeOWW7RkLrAjfTh8IsaTjm4eVB2gIJIz
zHVXLijc1KhrHdPb74jkZXbE5kZBwMs5f0W6sarYhn0hjWtIug8T3QeSDdouN03ug1O5qTWSWqcU
hmLH6fKCyRrO0E9SuyQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERA
REQEREBFa5zWDc5wA7SUc5rGlznAAdSSguRU6qqAiIgIiICIiDR6xot29qdTUaGoMqTVmOZ4cPED
g7HnHYsMXc3YnsTWtW1Dvud9d0DOHFw2xtPUgZPNdEiDl4O5rUnfJ8dvVGSQadM2SNjIcF4AIw7n
51oNTL46up6NTvyRNnleGUnVzxSXH/S7ptJ5+hejqmEEStV/8KhqTDpA2N4z/twVoWaBrsNN2mwa
1F3iWljXSQbpWsPkznny8q6pEHPjubdWt6e+lYEcNWua72ObkuafKD5Ctb+x+ojTW0G6jXbDBIHx
OFfw34ORuOea7FVQc9P3O2LNzVHvttEGpQMY9oZ4THtbgEHsVlfuf1F9qhPf1Jko08ERsii27uWM
nn15LpEQcpJ3Lahaliiu6lFPWhmErZODic4OQC9dWiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIi
AiIgIiICIiAiIgIiICIiAiIgIiICIiDS90kAfp7ZS94McrMAHAPhDqofdNYkeySu6Kw2CNgeXsZk
Pd5BnsC6CaKGWMtna1zMgkO6eZJ+93R8OwWbH8tryMFBGiuPEdbMDhFKGtDicEEjyhT1DuADvUDk
BO3HsKmICIiAiIgIiICIiAiIgKh5Aqqo76J9CDgLf+J8NS7NW+S5HcGRzC7igZwcZ6LF+9iD+FSf
zR+i4LWvHV717/7ioSiKsTdieLodnsPA126apo/HOf29L/ezB/CZP5o/RP3swfwmT+aP0XmaKnar
vNd7gwHR9z+3pn72YP4VJ/NH6LJW/wAUobFiOAaXIDI8NzxRyyfQvL1K0zxpW9a34qqMVcz4qLnY
WBpomYp+5/b6EYdzQe0Kqsj+rb6Ar1Lw51KqIiAiIgIiICKmUyEFUREBERAREQEREBERAREQEREB
ERAREQEREBERAREQEREBERBpu6SHfp7ZeI9vDkZ4LTgO8IdVZq0MEt0sELrVqSHayInDWDP0s+Rb
S2KroC21s4eRyeeWc8v6qDqVPRnztl1COLivG0Oc4gkfkgcC1WiowyyMkayRoLue4nBW2UCeOOGO
nHEAGNmaGgHyYKnoCIiAiIgIiICIiAiIgKh+ifQqqh+ifQg+fta8d3vXv/uKgqdrXju969/9xUFa
/X4pddw/k0+0CIipZCqk6Z40q+ub8VGUnTPGlX1zfiqqeMLN3y59n0FF9W30BXqyL6tvoCvWwOQz
xVRER4IiICoqqiDyHX9Qvx90OoMju2GMbO4Na2UgALWnVNS/H2uv3zlM7oYZj3R6iRDKQZ3YIYTl
a4wT/cS9fuz+i3ezTb1NO6OEf8Q1c1aUvcK5JrREnJLBz/JaSfVrDNdbtmaKUTxDI3lkucOR/I8l
uq4PekYHI7B+XJaw9zlZ1KWJ5Dp5HF/HxzDicg48y0mrimI4KtNzUrlpsNx1WKs/hAMaCXOwCSc+
lUklvyT1tOM4imdE6SWZjQeQOOQPblXnTLkMr5qdtjHTAGYSR7g54GNw58lT5GkiZBJWtFtmEEGV
7dweDzII9K8esGoSajpumTF90u+dYI5tg3hpPPI6KkVmRla1LHqVidzIiQJYg0A9vRZpdGsT15uN
dBsSvY4P2eC3aeQDcrKKGoSxSw2rsL45Iy3DINpB7eqDW0r1uSem2HUpbZnHzzTE0CMY65A7VIrx
agdYmrP1aZ0cMbX4MbOec8jyW4q1m1q8cTQCWNDS4DGcLFHR2alPc4meLG1m3HTGf1QaKnfmsSOM
2qWGOExbw2QNLcA9M4Utgv3tR1BsepPgbBI1sbBG0j6IPPIz1KyV9L1GoXMhvw8IyF4Dq+SMnpnK
qdKvsuWpquoMiZZcHOaYckEADkc+ZBSnqc1yOk0NDJZGufJjp4PLH5rHFaus1SKnNZDpJmEyRhoA
h5ci0+VZ26aKU1NsG4xMjdC4jrz55+KpHpdlliCa1bEzKuXM2sw93LHM+Xkgss6lcboMlqBjDPFk
P3dBg9Vmvy2xXZMydteBsW+WUN3Oz5AB2KkOnPm0WarK7hyWdxccZxk/phZbVK24xOq2mx7GbHMe
zc13nx2oNezVb74asgjyHs3ZawuEhzjBPk5c1s6No2HPe57Q1/1TM89o8v8A+7Fjg0019MFJkxyS
S9+OuTl2OzqsY0ctvsnbMBE14eG7fC5DGM9nmQbZERAREQEREBERAREQEREGm7pII5NObK8ZdHKz
ac9PCCwX3V49WuG2WBrqeGbvKMnIHnyt65rXjDmhw7CMqBfu6fBK2OywSPa3efm92xvaewII1eOw
KWmulmON7csLR2HHNbtQrTmvbUcwgtMzSCOzBU1AREQEREBERAREQEREBUP0T6FVUP0T6EHz9rXj
u969/wDcVBU7WvHd717/AO4qCtfr8Uuu4fyafaBERUslVSdM8aVfXN+KjKTpnjSr65vxVVPGFi75
c+z6Ci+rb6Ar1ZF9W30BXrYHIZ4qoiI8EREBUVVQ9Cgjut12uLXTRhw6guHJW9+Vd318fvBcbqQA
1Kx0+sKjYHmULX2nVTXNOjw9WvXO16qa5o0I3TzeiZyFXyLHCfm2+gLjyyN1TUJ3VLMkzbEu2w2R
2GYccHrjAUzG+GwROcO1RcpLF3zq4bNXkuhtKI+BKWjJJyeR8qlXKcjm02x1i+CNpL6fHId5nZ6n
C9euhRcuyWOVsGnwSWIYpLBbMyQkOiAbnZnsKkWqselWoe9C9jbDXskj3kg+Dndz7EHQItVpcRt9
zVeJ73ZlrhpdnnzHXKg17Ml9unUXOc2SJ5NjB5jZ0B9KDo0XJ6dWZO6SWTTZp3d8O+d47gOvZnyK
VBp1fUNU1V1jiF0crWscJHDYNg6c8IOiRc9p1qe6yhHJITiN73P+0WnDSrWQuq6vVhdJKWztcJZn
Oy2ckZwB5EHRoufszWpO5uwY7Bjlr7mueOpAP6KTerOs1o3udJK1kO7gRuw6R3LByg26LmYO/wCe
nXsMmLo2MILi8N4bg453duByWwo343TnjykTTkbWno0eRvp6lBtkREBERAREQEREBERAREQFy+tt
B1GxxJ5a4dX2s4bC7i+YrqFrrmpitNwY677EjWcR7WY8Fvb6fMgwtik4GnySbozvYDF5ByK26hWX
iRtR4BAdM08xz6FTUBERAREQEREBERAREQFQ/RPoVVQ/RPoQfP2teO73r3/3FQVO1rx3e9e/+4qC
tfr8Uuu4fyafaBERUslVSdM8aVfXN+KjKTpnjSr65vxVVPGFi75c+z6Ci+rb6Ar1ZF9W30BXrYHI
Z4qoiI8EREBUPQqqp5EHIXtJ1CS9NI2uXNc8kHI5hYBo2o/hXe0LY2+7vQaNuWpYsyCSJxY8CJxw
R51i/eN3N/ipP5Lv0URXgcPNUzNX3DDn+M3Lk6yKat+/hz/06eNpEbQeoAUaPTq8dSeq0O4c5eXg
u5+F1+KkxvEjA9vNrgCFY2zBJG+RkrHMjJD3B3JuOuVLRwZmWW5CfoVZ0rJY7FqF7YmxZimLctHT
Kuk0eKRsWbFkSxZDZuKd+D1BPlCzTanQrua2a5DGXN3AOeBkdqyw2605AhnjkLm7htcDkdq9EUaN
UFV8DjI8yPD3SOf4ZcOhz2pBpEEUhlklmsSFhYHSv3FoPXHYpIuVzFxRPGY923fuGM5xhZeIzc5u
4ZaMkZ6IIFLRoaDo+DatlkYw2N8xLMehZoNMq1r1i7GwiazjiHPI4UlrmvaHNcHNPQg9Va2eJ+3b
I12/O3B6464Qa9mgwxPc6K5djDnl5YychuT5lWXQq0tmafj2ozMQZGxzENdgY5j0KcbMDZxAZmCU
jIZu5n8lfvbv2bhuxnGeeEEJ+nsZNWdAxrWRNMZZ5Nh6/BWQ6NBWkZKx80pgB4MckmWsOPIp7ZY3
btr2nb9LB6K5rg5oc0gg8wR5UEGDTWHTHU5yXCQHiEHBOTlXWdLhsOieJZoXxN2NfE/advYpyIIT
NOgjpCmwOEQOSM83c8nPpVDpdY2xYy8EODwwO8Hd247VORAREQEREBERAREQEREBERAXOarTcNTn
ndWsWBLCBGYf9DwujWu1bVG6bA1wjMsjzhrB2eUnzIMZrysjovsSOdMJGh/PlnBW1UO27cKju2Zp
/oVMQEREBERAREQEREBERAVD9E+hVVD9E+hB8/a147vevf8A3FQVO1rx3e9e/wDuKgrX6/FLruH8
mn2gREVLJVUnTPGlX1zfioyk6Z40q+ub8VVTxhYu+XPs+govq2+gK9WRfVt9AV62ByGeKqIiPBER
AVD0KqqHog8H7qP/ADRqX/cP+K1K9F1f/DnUdS1e3cju12MnkL2hwOQCfLyUP91eqfja3/y/RRFe
HuzVM5OiYftbBU2KaZuRnERz5PTqX+Uh9W34LlGn5N029cbk17Lp2Tgf6XZIa7/hdbXZwoI4yclj
Q0n0BU73gMToTCzhvzuZtGDnrkKWjg57VvmXNwh51VnDdWafk+HPHAPb0WbVZfk/vO+TGXOa6s4x
fRy7p/UBbmXS6FhzXTU4ZC1oa0uYDgdivFGo2FsArRCNp3NZtGAe3C9UuZiq97Xa2huH1sjbOOwN
ALva7K2teFtrTLxlLgZZHl2Dgjl0W14ERmExjaZWjaH45gdmVjhqthfPg5ZM7cWntPVBpoZZmdzu
nQwwTSNlYGyPiGSxuOft6KNpcgHc3RdGyRhhs7W7xzcN55LqI42RMDI2hjGjAaBgBRn0onmFjWhk
cL94Y0YG7qD7coOfifJHJLanZBJi8QYyPnOuAQfN2LZRwMj7qZS1zsy08uyenheRbE0KhsCya8fG
HPft5rLwo+Lxdjd+3buxzx2IOekp/J29kk29hZmThtwdgPl85JW4oXG2myR8MxvhIDm5yBkZGCpB
gicXudG0l4w7I6hUgrQVmcOCJsbc5w0YQZkREBERAREQEREBERAREQEREBERAWk1bRZrhmmr25Wy
SNDdmRtwFu1qdTs3oHSSRPihrxR7t8gzxHfZ8yC6aq2LvNzi58rZGtLyevI/kppswNJDpmAjqC4K
G6yLMFJ7wGSPka4szzHIryjXS75f1Dwnf5h/lPas3BYTaqppzyyWL13VRE5PZO+oPv4/eCd9Qffx
++F4Zud9p3vFNzvtO94qV7jjr+mNtk8nuffUH38fvhO+oPv4/eC8M3O+073im532ne8U7jjr+jbJ
5PchZr/fx+8Fe57WDLiAPOV4hUc7vyDwnfWN/wBR7V6n3QeLovy+Ch+1MPsNGlnpfSucVMWqrmXB
u+NH9tvtTjR/bb7VwOT2n2pk9p9q1nvaej7/AKRPfc9H3/TvuNH9tvtTjR/bb7VwOT2n2pk9p9qd
7T0ff9Hfc9H270zxj/1G+1VD2PaS0g+hcAC7H0j7V0PcyfmrGCSc/wDCv4bHzeuRRo5Z+rKwnae0
XYt6OWfq8g1rx1e9e/8AuKgqdrXjq969/wDcVBWJX4pd2w/k0+0CIipZCqk6Z40q+ub8VGUnTPGl
X1zfiqqeMLN3y59n0A17GQtL3BowOpwnfEH3zPeC5fu4JGj1sEjwx0PmXDbnfad7SpO7itXVo5OO
V3NGrJ7D3xB99H7wTviD76P3gvHtzvtO9pTc77TvaVb22elRrvR7D3xB99H7wTviD76P3gvHtzvt
O9pTc77TvaU22ek13o9jZIyQEscHAdhyr1yXcASaNrJJ+dHU+Zdb5Fm269OiKl2mc4zcpe7t46V6
er3hI8wvLC4SAZwsP7wY/wCHSfzR+i5nXfH1717lr/1UbViLkVTGaxNyrN7LG7fG1+MbgDha9+u0
IzHvkc3izurtJby3jqp1f/Lxf9I+C5qKp3w+CGaFxjdfsbstPIYOD/8AalY4Ml0QtxG46oCeK1gk
PLlgnCi2NagrWpK3e9maSJoc/hRFwAPTmoGkC03XZ4LLHboK7WNlxykGTgq7vSzY1/UTHZkrsMcQ
JazO7kehXomSa5UaIeGyecztLmiKMuOB1z2K5ms1H1ZLDi+IRO2vZIzDwezC179NdBqlOvUmkhZH
A75wDOTnnlRjXmgMrpWvsGrdbNI/bzezHXHlwg3VbV4J7AgdFPBI4ZYJ49u/0LE/X6jC4iOw+Jhw
6ZkRMY/NRLtmPWJq0FEuc5ji90uwgRjBHlWBl4Q6UKTXvr24tzTEIS7ec+zmg21jWYK9gQCGxO8s
3/MxF3JWO12oK0c7WTv4jzGI2xkvDuwha+rDcuX4peNJWeajd5azkT2KHI10FSFs0kzHRXXcSdrD
uPYeSDfjV4RWlsTQWYGRYzxYi0uz2dqQ6vXkdI2SOau6OMyETx7fBHUha6SenY02w0z2bsYLTJlr
mujHaMhY4LDnzSwQyyalVMDt4kYQ9vm3HrlBta+s17EzI+FYj4o+bfJGWtf6Csl7UoaD4mPjmkfK
cNbEzcStLUsCOxUi0+1NYjc4B9edhJib5TuI5YU7V4Jp9ToCGR8RBdl7W5xyQZRrtTveaV7J4zAQ
HxvjIfz6clczWY3se91S5ExjN5dJAQMLTXoJoI9TimkkmeeG8TbDnbnoMdin6ZNVsSGFuoT2S6PB
jkY4DH5hBsX6hXZFBJuLm2CBHtGc5Ud+uVGRxOayeUzPcxjY4y5xLevJa7S4Jnak2rNG4RaZu4bi
ORz9HH/tULHBh0580k1ZjZ590jGEluTy6DyoOgbq0J4XEgsQGWThs4sRbk4z7OSuGr1HT24d5302
7peXQYzy7Vq7MkdnRbD6lia3JXc2RpexwIIOcDI7MqFZrztq1Z2QvMmpExT4HNrXHIz6MoOjGpVT
GyQuLWuj4mXDG1vn7FZDq9WZshHEYYwHFr2YO37WOzzqGQytZv74TM2OCIcMDO5oyo8Mkc+oXp2S
PnruqO3Pcwt4f+wZ83NBurF6tWEXFlDeM4Nj/wBxPRYrWrVak3CkLy4AF+xuQwHyu7Fr7ULpNJ0x
7490jZosEDJAz+ia1PARarEyV5XNaQ9sZPH5cm/8fmg2Y1GqbAriUF7umOnaBlZoZ2Ttc6Pm1ri3
PbjsWnkoM4UD2tkjsztbmJrvBY4NGTjzBZNLuym0KnCDY2tOQGkGMjtPlz1QbpERAWmv6dqE+ots
RPqSRMbhkU7XENPbyW5WkuzW571iOvYMDa0O8AD6bvP5kEmzHg1Xysj4vFbuc1vmPTyrybXs/L9/
/uH/ABXqb9Rhnr0pHvDXmRrnDB5cjlebazpl+xrV2aGnM+OSZzmuDeRGeqmeyLlNFyrSmI3flh4q
mZpjKGnRTfkbU/wE/uJ8jan+An9xbJtFnrj5hH6uvlKEim/I2p/gJ/cT5G1P8BP7ibRZ64+YNXXy
lHqf5yD1jfivVu6HxXD+XwXmtbSNSZahc6jOGteCTt6DK9G1uxHZ0+NkLjI8EZAaVq38jrpuWoii
c908N65XRXs9cZb8nO586fmr+FN9y/3SnCm+5f7pXOtRd6Z+Ja1s97on4lZ+afmr+FN9y/3SnCm+
5f7pTUXemfiTZ73RPxLHyBXRdyx+Zs8vKPgtBwZ854T/AHSt53PzMrRTtsEx7nAjc08+SzsDauU3
4maZjj+PRI9mWbtOJpmqmYjf+PR5HrXju969/wDcVCW81TQtVm1W3LHp8743zPc1wZyIJOCon7Pa
z/DbHuK/VbrzndLv+HxeHi1TE1xwj8w1yLY/s7rP8Nse4n7O6z/DbHuKnV18pX9sw3XHzDXKTpnj
Sr65vxUj9ntZ/htj3FIoaDq0V+vI/T52sbK0uJZ0GV7Tbrz4StXcXh5tz/nHDnD0ju48T1v+sfBc
Ku57rnd/aZBHVDpnteCWtaeS5D5Mv/g5vdV/E0VTXnEOR3YmakVFK+TL/wCDm91Pky/+Dm91Y2rr
5StaM8kVFK+TL/4Ob3U+TL/4Ob3U1dfKTRnk7DuA/wAhb9aPgutXKdw8b61azFOx0Uj5A5rXDGRh
dWpjDxMW4iWTR4Yczc7iqVy5NZfana6V5eQMYGfyWL9gaH4ux/T9F1aJOHtzOeRoU8lrG7GBg5ho
AV6Ir6sREQEREFAAOgwmBnOOaqiAiIgKgAHQYVUQUwBnl1VURAREQEREBERBiMMZnE+MPALcjyhJ
oWTROjePBd1A8qyogtDQ1oa0YAGAFXAKqiCiqiICIiAtZc0p1md80Np0Blj4coDQdw/4KIgnwwsg
iZEwYawYCvREFUREBERBRERAwEwiIGEwiICYCIgJhEQMDsTA7ERAwmERAREQVREQFREQFVEQEREB
ERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQf/2Q==

--_005_1FFB62CE8AEB0D4298B51122D8903E96261EC174irsmsx110gercor_
Content-Type: image/jpeg; name="image006.jpg"
Content-Description: image006.jpg
Content-Disposition: inline; filename="image006.jpg"; size=6249;
	creation-date="Tue, 22 Mar 2016 15:47:49 GMT";
	modification-date="Tue, 22 Mar 2016 15:47:49 GMT"
Content-ID: <image006.jpg@01D18462.F19859D0>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAeAB4AAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIf
IiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7
Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAARCACWAdEDASIA
AhEBAxEB/8QAGwABAAIDAQEAAAAAAAAAAAAAAAUGAgMEBwH/xAA/EAACAgECAwMIBwcEAgMAAAAA
AQIDBAUREiExE0FRBhQiNWFxkdEVFjJUcoGSI0JSU1VzsSQzocFD8WLh8P/EABsBAQEBAAMBAQAA
AAAAAAAAAAAFBgECBAMH/8QAKhEBAAEBBgMJAQEAAAAAAAAAAAECAwQFEXGREjNRBhMUFTEyNFJh
QSH/2gAMAwEAAhEDEQA/APTNYpx7LodsrMmxwapxYLv/AIvy8TnzNNqen41WXRXfn2pVRnJbteL9
uyJLL0bCzchZF0bO1UeHihbKPL8mba8HHg6JKLcqE1W5Sba35PqBA52H5rK6Dxrb66aIrGlCS/ZN
b7v2M0u6/MnkZOTjO2OLVXJy4+GVfo7tx9pYMnScXLv7a6MnLZKXDNpSS6brvGRpOJk3drZCXFsl
JRm4qSXTdLqBlHNilR+zscLVHhse23NctztOPNSjDHjFbJXwSSOwAAAAAAAAAAAAAAAAAAAAAAAA
AAAMX0aIXO8osbBy5Y9lc5OPXZLb/JNFB8ovXFvuROxC8V2FlFVHrmlYperS7WMV0euae+uOH/Jt
+C+Y+uOH/Jt+C+ZTQQ/Nrx1jZmvPb3+bLl9ccP8Ak2/BfMfXHD/k2/BfMpoHm146xsee3v8ANly+
uOH/ACbfgvmPrjh/ybfgvmU0Dza8dY2PPb3+bLl9ccP+Tb8F8x9ccP8Ak2/BfMpoHm146xsee3v8
2XH634X8q3f3L5k5j3RyKIWx+zJb8zzI9G0vlp1P4VuVcOvlpeKqor/i1hOIW17rqi0y/wAh3AAs
NAAAAAAAAAAAAAAAAAAAAAAAAAAADCU4w5yko7+L2EpwjtxSit+m76kRq9VFmTFThPKvlW41Y8ei
/wDk/D3nLlabNadLjay8yqjh4JT/ANvv3Xt9oFhc4RaUpJN9N31DnGLUXJJvom+pW8uiGRpryqX5
1aqYJ8ctnUl+8vb8jGShmV6jlTslOeNVXKibezj6O+697Anc7pj/AN+B2EVbPJspwpyVfBKdblvv
xbkqAAAAAAAAAAAAAAAAAAAAAAAAAAAGPeULyk9c2+5F972ULyk9c2+5EfGORGqBj3xo1RQAMoxI
AAAAAAAAekaX6to/Cjzc9I0v1bR+FF7BffXo03Z7mV6Q7AAaVrwAAAAAAAAAAAAAAAAAAAAAAAAA
AcGVo+DnXK/Io47FHh4lOUXt4cmY2aJgWqClS/QjwLab5rwfPmdl2RTjw47rIwjvtu2asnPxMOUY
5F0a3Lon/kDRfo2BkTU7KOaio+jJpNLonsZXaThZFsbbKU5RSXJtJpdN13mzI1DExeDt74w4/s9/
5my7Kox4RndbGEZSUYtvq302A1Z3KOOl/Pgdhx53TH/vwOwAAAAAAAAAAAAAAAAAAAAAAAAAAAMe
9lC8pPXNvuRfe9lC8pPXNvuRHxjkRqgY98aNUUADKMSAAAAAAAAHpGl+raPwo83PSNL9W0fhRewX
316NN2e5lekOsDojQ8jZtbf8l22vNnY5cc5ZthETPo3g0LI3aW3/ACbt9ot+wWN5s7fPgnPImJj1
ZAhsfygruVU5YeTVTdLhhdNLhb7u/ckMTMrzFa61JdnY63xLvR6HDpBE2a1FTs7DDvyK6ntO2tLh
TXXv57GyzV8dV0yx4TyZ3x4q4Vrm13vn0AkgRkNZpdSnOm6ufbRplXKPpRlLp+RldrFFXnLjCyyG
NHeycFy3/hXtAkQRuPqdl8lx6flUxcXLjsUdly9jNNWv12QhZPEyaaZy4VbOK4eu3cwJgHHdqGPR
K1Tk0qYqU5bclv0XvZpWsUKi226u2h1NJwsjs3v0294EkCPq1amypzlCytxmoWQmtnDfo37DfmZd
WDjyvubUU0tkt22+SSA6QRsdbxnGashbXbBpOmUfT59OR0VZ1F7qVbc+1i5LZdF7QOoAAAABD+Ul
FVmnK2cd512Q4X4ekiP1p76revOK8T/ScLlYt+0W/RFmaUltJJr2mNlNVrTsrhNrpxR32AqanKFt
1ll8MRPEr7OuyKfaJb8uf/XifdWnm249ORfp0lXCVLpjGaSi91vuvHuLXOmqxpzrhJrpvFPYyaUl
s0mvaBwZsLXPHsdjjHtob17Ll+ZInHndMf8AvwOwAAAAAAAAAAAAAAAAAAAAAAAAAAAMe9lC8pPX
NvuRfe9lC8pPXNvuRHxjkRqgY98aNUUADKMSAAAAAAAAHpGl+raPwo83PSNL9W0fhRewX316NN2e
5lekOpnG+Un7ztNToi//AGUcQu1d4ing/mbZUVRHq54/aXvOqX2Je5mKoiv/AGbBh91ru8VcX9yK
6olTMKiXmmLVXTnLLqsT4La5KpPie++/LbYltOzo4duTj3Y2UpzyZtONEnFpvk9yfBUdEBgZn0Ti
Swb8a+VtcpcLrrclYm200/zNGHTfpN1GVkUTlCyqUZquPE6m3ulsu4swArme8nVsP0caymp5VahN
Rascd+cmu4xuxcjD03N0uNNllXZudFkY7trfnF+3/JZQBXtOnTvGutag7HW1tdVJR329pz13WZWh
R0qvEyVfJcEnOpxjD0uu7LSAK5m4112HqVEeKVysrk1Hq48ttvyTNM67rY2TxYZM8Sq2q3hti+Jy
Ut5bb83yLIqYK52qO02tm/E2gVrJc8inU81V2RqthXXBTjwuTT67fmSmp5FmJpvaRx3kWJxSiocW
z8dvYdllNd3D2kd+CSkvebQIHAxsbOhdO9ZVl7alO2yuVT5dFH2GniycJV2Y9M4Rsi+H9m5tJP0Y
vw372WQAa6ZTlVCVkeGbinKPgzYAAAAHHnalj6fCEr5PeclGMUubbexrzdVhh2utUWXOEO0s4F9i
PiYa5RO/TXGupzs44NJLd/aW5z61Z2kbcSzFyXGcN4W48d3J+DA6Ltborl+zhZdGMFOyUFyhF9Gx
frVFNsoxrsshWou2yC5Vp9NyIyse+EOHs8uq+/HjGSoinCb6bPwaNWTp91crKracmdiqrhjulbwk
0v3vz/4AsWZJTrxpRe6d0GmdpGZNEuHDssbVisrUop+jv3kmAAAAAAAAAAAAAAAAAAAAAAAAAAAG
PeyheUnrm33IvveyheUnrm33Ij4xyI1QMe+NGqKABlGJAAAAAAAAD0jS/VtH4UebnpGl+raPwovY
L769Gm7PcyvSHU+m5UbNd1CFtkVbDaM2l6C8S3PoygXv/UW/jl/k9+JWtdnFPDOXq/QcPs6K5q4o
z9EjVruoTtri7YbSmk/QXiW5dNygUP8A1FX9yP8Akv8A+7+Qw20rtIq4pz9HGIWdFE08MZeqE0zV
NQ1Cuq7fAhXY36HaS40t2unjyNz1ia13zLsV5v8AY7bf/wAm2+3wGkaTDA02lWY9fnUE22nvz3b6
nE/J/IeF23bz887Xt+Di9BS33a+HIrJzrt1myvIsrVUHwZtePvu+kl195v1fOuwaqXRGpzttVe9s
mox3T5vb3Efk6bnt3XVVQnN5tWRGDs23UUt1ubNQp1DUcertNNrUqb4z7J3pqcdnvz25AbbNQzqM
G/IseFbKCXAqZya39pnVn5tOTRVqFNChkcoTpk2lLrs9zntxMu7T8mmvTKsWcknHa5S43v06cjYs
fPz7sfzrHhi1Y3pJKxTc5bbLp0QG2epZM6VLGx4y47JQjKb2jFL96TNc9cdeiS1B40puDacYPdbp
9d/Awp87hp9VNOPG6NUpV3VSlwuS8Uz5XpmUvJ7Jw1CFdlql2dSluq0+7cCRll8F2MpxShkLZPfn
xbbpfDcx1TP+jcCzJ7GVrgm+GP8A2acyuU79PpiuKddinL2JJpv4tHRqePZl6Xk0U7dpZVKMd3st
2gObM1jzTsv2SlxwU5byS5cuS8XzOvHyvOLbeCP7KtpKf8T7/gYW47eDCKprsvhBRjxJPZ7HAsDO
pzoKmT7GLjtPjWyW3pbx722BOAAAAAAAAAETm6nkV5N1WLVXJY9faWub239iAlgQmVrF8KvOaqa1
jRhGW9ktnY33R9qM8vU8untba8WKxqYxcnY2pT3/AIfcB2Z3TH/vwOw4MmxWU4s1y47YS2fXmd4A
AAAAAAAAAAAAAAAAAAAAAAAAAAY97KF5Seubfci+97KF5SeubfciPjHIjVAx740aooAGUYkAAAAA
AAAPSNL9W0/gR5uekaX6to/Ci9gvvr0abs9zK9IdS5o45abgyk28ap7vd+idU/sPbwPOsjMyllWp
ZNqSnLZcb8Srfb1RYRTNdOea/fcR8DETlM59Jy9F7jpuDGSaxqls916PM6+485xs3KeVUnk2tOcd
/Tfieiw+wvHYXK9UW8VTRTlkXHEfHRVOUxl1nP1Zn0qGHqebZi42RDUZ5GRZZtLG7KPDtxNPmluu
R35+q5FGsx7O2Kw8ZxhkQ2W8pT6be4oKCwAr+pZmTXqUq7su7Cx1BOuyutSjJ9/E2uR8y8zMjHE4
8pxonU3Zk41fGnLu9y2AsIK1lZ99eDi8GpcUbLnF5FMFKTj3brxM7sq+rScm2jUL7bOKMVOypJw3
fctuYFgSSbaWzfUyIVW5emZ+PXkZcsqnJ4o7zik4NJvfl3bIO/OvxKb1fDGqscp22vb9nFfZS38Q
JjZb8Wy38TIgIZGZkaV53PNljKpyXFCtPtlv6MufTc1+d51Tx8XKzY483Q7ndOKXE9+UPDkuoFjB
V/p+3LroULnjt0drNwr49+bS9y5cyWx8ux5NMJzhOF9CnGUOnF37ezvAkgQmpZ11efLHWVDDhCnt
Yzkl+0e75c/d/wAmm7Ky8rTKNRpzp0O+EeCiEIveT94FhBBPOz8XJjXfvKNajxyVb4Zrb0pb92z7
iSwbp21yds49o3xcCfOCfRAdYAAEJq+nXZl7deHRap18CslNxlB+3xRNgCAytOzfNvMYY9ORjqEV
XKcuF1vvftMbsPVHlxlbj05lNSiquO9xSaXOTW3NlhAEdmUVuWNdKtK3tobtPoSJx53TH/vwOwAA
AAAAAAAAAAAAAAAAAAAAAAAAAMe9lC8pPXNvuRfe9lC8pPXNvuRHxjkRqgY98aNUUADKMSAAAAAA
AAHpGl+raPwo83PSNL9W0fhRewX316NN2e5lekOixehL3Hm+TTa8u79nP/cl+6/E9KaMXCP8KK18
ucXqIjPLJdxC4RfIpiassvzN5vjU2rKpfZz/ANyP7r8T0etehH3H1Qj14UZJC5XOLrFUZ55mH3CL
nFURVnn+ZOTTNPjp2BVjKSnKtNcfDs3u2/8As4/q9jWY2TG/a2++Upds1zi30+BMg96kiPo3Phyp
zoSjKCjON1XEt0tt1zMa9IycSqmOFmKLhBxnGyG8Z7899u4mQBBvQr1VCVeVXDIVzulLst4N7bbK
O/I236bnZeDdj5GbU5TacJwo24Wn3rfmS4Aiq9LvsyI3Z+VG91xarjCvgUd1s31fPY5paZmZWNi1
q+FPmspKULKuOM/B9V0J4ARssC+/GopysiE+zsUp8FfCppdFtvy7jLPw8nJlCVF9cEk042Vqa969
pIACG+hLKIwWDdCpqnsp8cOLiXs8OrM8XAdGZjVR3dOHTwqT75P/AOiWAEdn4OTlWRlTkVwjw8Mo
2VKe3tXgxDS665YkYT2pxI+jDbq+57/EkQBzZWM8js4OW1alxTX8W3RHHiaTLGz/ADh3KUUpKKUd
m9/F9/QlQAAAAhtb1K7Gh2OG49stpWSb+xHf/LJkjNR0LC1GM3ZVGNs9t7EufICPztUuedZTDJnT
GiEJcUK+Jbvrx+CGTq1tmbbGGVKqGO4bShXxQlut25PuR13aJNymsXJWPXZXGuyPZqW6Xh4HyzQ5
LtK8bK7HHvjGNtbgpNpLbk+7kB0ZmTU3jV9rF2O6D2XeSJw5VcaqsWEVyhbCK9yO4AAAAAAAAAAA
AAAAAAAAAAAAAAAAMe9lC8pPXNvuRfe9lB8pPXNvuRHxjkRqgY98aNUWADKMSAAAAAAAAHpGl+ra
Pwo83PSNL9W0fhRewX316NN2e5lekOwAGla8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAACs5KlbLUM2
Vs4241sY1bS24EtuW3tAms7pj/34HUR+VdZKGPw49s2pwnJxjy9pnLMt/dxMjb2wXzPnaV8FOeUz
o5h3Aj/PL/ul/wChfMeeX/dL/wBC+Z8PEz9J2c8P6kAR/nl/3S/9C+Y88v8Aul/6F8x4mfpOxw/q
QBH+eX/dL/0L5jzy/wC6X/oXzHiZ+k7HD+pAEf55f90v/QvmPPL/ALpf+hfMeJn6TscP6kAR/nt/
3W/9C+Zsjmz4VxYmTv8AgXzO9nbTXOXDMaw4mMnYCLu1DOU9qNOnOO3VvZmH0lqn9Ll+o7zaRE5Z
TtLvFnMxnnG8Jf8AMfmRH0lqn9Ll+ofSWqf0uX6h3sdJ2k7uesbwl/zH5kR9Jap/S5fqH0lqn9Ll
+od7HSdpO7nrG8Jf8x+ZEfSWqf0uX6h9Jap/S5fqHex0naTu56xvCX/MfmRH0lqn9Ll+ofSWqf0u
X6h3sdJ2O7nrG8JX/wDMoflHy1m1exFwrzrHFOzCyIy70op/9la1fSs/O1Gy+nFm4NLbi5M8GJ2V
drYxFEZzmhYzYWlrYRTRGc5/xXwSf1d1T7rL4j6u6p91l8TOeCvH0lkvLr39J2RgJP6u6p91l8R9
XdU+6y+I8FePpJ5de/pOyMBJ/V3VPusviPq7qn3WXxHgrx9JPLr39J2RgJP6u6p91l8R9XdU+6y+
I8FePpJ5de/pOyMPRtL9XUfgKZ9XtU+7S+JcdMlOONCmyqyEoRW7ktkyxhV3tLKuqa6Zj/GgwS7W
1jXVNpTMZx/UgAC+0wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEffo+Lfku+anvJpziptRm103XeABI
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAPgAA+gAAAAAAAAAD4AAPoAAAAAAAAAAAAAAAAAAAAAAAAAA
AAD/2Q==

--_005_1FFB62CE8AEB0D4298B51122D8903E96261EC174irsmsx110gercor_--
