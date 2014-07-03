Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 416A6E0045F; Thu,  3 Jul 2014 07:50:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=5.0 tests=BAYES_00, HTML_IMAGE_RATIO_04,
	HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.6 HTML_IMAGE_RATIO_04 BODY: HTML has a low ratio of text to image
	area *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 509CFE00404
	for <yocto@yoctoproject.org>; Thu,  3 Jul 2014 07:50:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Jul 2014 07:50:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,595,1400050800"; 
	d="gif'147?png'147,150?scan'147,150,208,217,147,150";a="557009292"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2014 07:50:08 -0700
Received: from irsmsx108.ger.corp.intel.com (163.33.3.3) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 3 Jul 2014 15:50:08 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.106]) by
	IRSMSX108.ger.corp.intel.com ([169.254.11.100]) with mapi id
	14.03.0123.003; Thu, 3 Jul 2014 15:50:07 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Full Pass test report for 1.7_M1.rc1
Thread-Index: AQHPlp/HpmyhODg52UWfLUbURXyUTZuOa7aA
Date: Thu, 3 Jul 2014 14:50:07 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E96219BDFE0@IRSMSX104.ger.corp.intel.com>
References: <CFDAF4A7.51CE%alexandru.c.georgescu@intel.com>
In-Reply-To: <CFDAF4A7.51CE%alexandru.c.georgescu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>
Subject: Yocto Full Pass test report for 1.7_M1.rc1
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
X-List-Received-Date: Thu, 03 Jul 2014 14:50:29 -0000
X-Groupsio-MsgNum: 20356
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_008_1FFB62CE8AEB0D4298B51122D8903E96219BDFE0IRSMSX104gercor_";
	type="multipart/alternative"

--_008_1FFB62CE8AEB0D4298B51122D8903E96219BDFE0IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E96219BDFE0IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E96219BDFE0IRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the Yocto 1.7_M1.rc1 test report. During this test run we have adde=
d two no sets of test runs, focusing on testing the profiling tools on qemu=
arm<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2557> and qe=
muppc<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2558>. Amo=
ng the tests, lttng, latency top, powertop, perf and crosstap are tested.

New issues found during this build:

  *   compiling with the ppc cross toolchain fails #6409<https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D6409>
  *   building qemux86_64 and qemuppc BSPs created with yocto-bsp fails at =
parsing: #6482<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6482>
  *   Cannot build a core-image-minimal in Build Appliance: #6495<https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D6495>
  *   Genericx86-64 cannot mount an USB stick: #6492<https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D6492>
  *   mpc8315e-rdb BSP cannot mount the sata drive: #6489<https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D6489>
  *   no permissions when first deploying an app to QEMU and running it: #6=
500<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6500>

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

2553<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2553>2555<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2555>

ADT: master branch

Fedora 20 i686

94.0%

none

6.0%

6490<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6490>

0.0%

none

100.0%

2552<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2552>2554<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2554>

ADT: master branch

Ubuntu 14.04 x86_64

94.0%

none

6.0%

6490<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6490>

0.0%

none

100.0%

2549<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2549>2550<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2550>

BSP/QEMU: master branch

Beaglebone Black

100.0%

none

0.0%

none

0.0%

none

100.0%

2543<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2543>2544<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2544>

BSP/QEMU: master branch

EdgeRouter

100.0%

none

0.0%

none

0.0%

none

100.0%

2551<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2551>2556<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2556>

BSP/QEMU: master branch

generic-x86 on AtomPC

92.8%

none

7.2%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>6492<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6492>5834<https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D5834>

0.0%

none

100.0%

2512<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2512>2513<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2513>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

92.8%

none

7.2%

6492<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6492>5834<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834>

0.0%

none

100.0%

2547<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2547>2548<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2548>

BSP/QEMU: master branch

MPC8315e-rdb

96.1%

none

3.9%

6489<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6489>

0.0%

none

100.0%

2545<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2545>2546<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2546>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

2534<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2534>2535<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2535>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

2539<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2539>2541<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2541>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

2537<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2537>2538<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2538>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

2561<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2561>

Eclipse Plugin: master branch

Fedora 20 x86_64

100.0%

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>6500<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6500>

0.0%

none

0.0%

none

100.0%

2536<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2536>2540<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2540>

Meta-yocto: master branch

Ubuntu 14.04 x86_64

92.0%

6162<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6162>

8.0%

6482<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6482>6156<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

0.0%

none

100.0%

2496<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2496>

Hob: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2506<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2506>

Toaster: master branch

Fedora 20 x86_64

89.2%

none

10.8%

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>6445<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6445>5226<https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D5226>5844<https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D5844>

0.0%

none

100.0%

2542<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2542>

Toaster: master branch

Ubuntu 12.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2510<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2510>2511<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2511>

OE-Core: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2508<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2508>2509<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2509>

BitBake: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2564<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2564>

Runtime: master branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

2557<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2557>

Runtime: master branch

qemuarm

40.0%

none

60.0%

6498<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6498>6015<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6015>6016<https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D6016>

0.0%

none

100.0%

2558<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2558>

Runtime: master branch

qemuppc

60.0%

none

40.0%

6498<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6498>6121<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6121>

0.0%

none

100.0%

2533<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2533>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

66.7%

none

33.3%

6495<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6495>

0.0%

none

100.0%

Total: 22



Test Case Status Report

Status

Count

FAILED

39

PASSED

927

RUNNING

3

Total: 969


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:39,927,3&chco=3DFF9933|00FF00|0000FF&chl=3DFAILED(39)+4%25|PASSED(927)+96%=
25|RUNNING(3)+0%25]



*
Bug Status Report


ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-25_-_Ful=
l_Pass_Release_1.7_M1.rc1>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-25=
_-_Full_Pass_Release_1.7_M1.rc1>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-25_-=
_Full_Pass_Release_1.7_M1.rc1>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-=
25_-_Full_Pass_Release_1.7_M1.rc1>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-2=
5_-_Full_Pass_Release_1.7_M1.rc1>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06=
-25_-_Full_Pass_Release_1.7_M1.rc1>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-25_=
-_Full_Pass_Release_1.7_M1.rc1>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_20=
14-06-25_-_Full_Pass_Release_1.7_M1.rc1>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-=
25_-_Full_Pass_Release_1.7_M1.rc1>

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

2551<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2551>

dmesg log errors in Atom-PC

1.3.1

1.7

471

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>

Medium

ACCEPTED

2506<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2506>

same cooker log file name used for several builds

unspecified

1.7 M3

285

5226<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226>

Medium

NEW

2506<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2506>

in 'variables' API, the 'changed' field seems to return always 'FALSE'

1.5

Future

280

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>

Low

NEW

2561<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2561>

headless build takes took long

1.6

Future

149

5834<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834>

Medium

NEW

2556<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2556> 2513<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2513>

Cannot wake from suspend state using the USB mouse or keyboard

1.6

1.6

128

5844<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844>

Medium

ACCEPTED

2506<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2506>

Wrong script_type when task is not executed.

unspecified

1.7 M4

127

6015<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6015>

Medium

WaitForUpstream

2557<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2557>

Lttng does not work on qemuarm due to lttng-tracer module not found

1.6

1.6 M5

97

6016<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6016>

Medium

REOPENED

2557<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2557>

CrossTap has issues on running scheduler script against qemuppc

1.6

1.6 M5

97

6121<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6121>

Medium+

REOPENED

2558<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2558>

powertop --calibrate does not work on QemuPPC

1.6

1.6.1

82

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

Medium

ACCEPTED

2540<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2540>

[crosstap] no trace message output on qemuarm

1.6

1.7

72

6162<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6162>

Medium+

NEEDINFO

2540<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2540>

linux-yocto failed to do_patch after add a patch by yocto-kernel tool

1.6

1.7

71

6445<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6445>

Medium

RESOLVED

NOTABUG

2506<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2506>

The value of the revision field from Package table doesn't start with 'r'

1.6.1

1.6.2

12

6482<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6482>

Medium

NEW

2540<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2540>

yocto-bsp tool: Wrong tune files for qemux86-64 and qemuppc

1.7

1.7

NEW

6489<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6489>

Undecided

NEW

2548<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2548> 2547<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2547>

SATA harddisk error on mpc8315e-rdb

1.7

---

NEW

6490<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6490>

Undecided

NEW

2552<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2552> 2555<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2555> 2554<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2554>2553<https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2553>

[ADT-INSTALLER] build yocto-1.7_M1.rc1: ADT ppc cross compilation error

1.7

---

NEW

6492<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6492>

Undecided

NEW

2513<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2513> 2556<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2556>

[Generic x86_64] USB not mounted

1.7

---

NEW

6495<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6495>

Undecided

IN PROGRESS IMPLEMENTATION

2533<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2533>

[Build Appliance] qemu-native: do configure failed

1.7

---

NEW

6498<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6498>

Undecided

NEW

2557<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2557> 2558<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2558>

Latencytop -d does not work for qemuppc and qemuarm

1.7

---

NEW

6500<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6500>

Undecided

NEW

2561<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2561>

no permissions when first deploying an app to QEMU and running it

1.7

---

NEW

Total: 19



Distro Testing
Fedora 20 and Cent OS are all green. As well for Ubuntu with a fail on nigh=
tly-world bug #6467. The issue was fixed but wasn=1B$B!G=1B(Bt available fo=
r this release. For Opensuse distro all tests are green exepting the world =
and nightlyx86 which are still running (the 1.7 release overlapped with 1.6=
.1 point release tests so the tests were delayed by few days.

COMMIT

Poky: 68824d9b8f6e290da078383316b3f4b732585f2b

RELEASE

1.7 RC1

Ubuntu 14.04 LTS



* nighlty-world

FAIL - 6467

* buildtools

PASS

* nightly-arm

PASS

* nightly-multilib

PASS

* nightly-qa-systemd

PASS

* nightly-x86

PASS

* nightly-x86-64

PASS

* nightly-x86-64-lsb

PASS









Fedora 20



* nighlty-world

PASS

* buildtools

PASS

* nightly-arm

PASS

* nightly-multilib

PASS

* nightly-qa-systemd

PASS

* nightly-x86

PASS

* nightly-x86-64

PASS

* nightly-x86-64-lsb

PASS









CentOS 6.5



* nighlty-world

PASS

* buildtools

PASS

* nightly-arm

PASS

* nightly-multilib

PASS

* nightly-qa-systemd

PASS

* nightly-x86

PASS

* nightly-x86-64

PASS

* nightly-x86-64-lsb

PASS









OpenSuse 13.1



* nighlty-world

RUNNING

* buildtools

PASS

* nightly-arm



* nightly-multilib

PASS

* nightly-qa-systemd

PASS

* nightly-x86



* nightly-x86-64



* nightly-x86-64-lsb





Performance Test
On the build performance side, 1.7_M1.rc1 is doing fairly well against 1.6 =
release.  We have an increase of 20 seconds on building with the rootfs for=
 a core-image-sato. Also, building the actual image with rm_work set improv=
ed with an 1:30 minutes on average.
The kernel build time decreased a little bit for about 1 minute.

[cid:image003.png@01CF96E6.9D824B00]

[cid:image004.png@01CF96E6.9D824B00]

[cid:image005.png@01CF96E6.9D824B00]



Regards,
--
AlexandruGeorgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania

--_000_1FFB62CE8AEB0D4298B51122D8903E96219BDFE0IRSMSX104gercor_
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
	{font-family:"MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
@font-face
	{font-family:"\@MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	mso-fareast-language:JA;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:black;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"MS PGothic","sans-serif";
	mso-fareast-language:JA;
	font-weight:bold;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:JA;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.sortarrow
	{mso-style-name:sortarrow;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
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
	{mso-list-id:313487991;
	mso-list-template-ids:666149578;}
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
	{mso-list-id:1475828002;
	mso-list-template-ids:1897167526;}
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
	{mso-list-id:1932732830;
	mso-list-template-ids:-1123372216;}
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
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Hello,<o:p></o:p></span></p=
>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Here is the Yocto 1.7_M1.rc=
1 test report. During this test run we have added two no sets of test runs,=
 focusing on testing the profiling tools on
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2557"=
>qemuarm</a> and
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2558"=
>qemuppc</a></span><span style=3D"font-size:10.5pt;font-family:&quot;Calibr=
i&quot;,&quot;sans-serif&quot;">.&nbsp;Among the tests, lttng, latency top,=
 powertop, perf and crosstap are tested.<span style=3D"color:black"><o:p></=
o:p></span></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">New
</span><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;">issues found
<span style=3D"color:black">during this build:<o:p></o:p></span></span></p>
</div>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;mso-list:l2 level1 lfo3">
<span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">compiling with the ppc cross toolchain fails #<a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6409">6409</a><o:p></o:p></s=
pan></li><li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:au=
to;mso-margin-bottom-alt:auto;mso-list:l2 level1 lfo3">
<span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">building qemux86_64 and qemuppc BSPs created with yocto-bsp fa=
ils at parsing: #<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D6482">6482</a><o:p></o:p></span></li><li class=3D"MsoNormal" style=3D"=
color:black;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2 =
level1 lfo3">
<span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">Cannot build a core-image-minimal in Build Appliance: #<a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6495">6495</a><o:p>=
</o:p></span></li><li class=3D"MsoNormal" style=3D"color:black;mso-margin-t=
op-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2 level1 lfo3">
<span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">Genericx86-64 cannot mount an USB stick: #<a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D6492">6492</a><o:p></o:p></span>=
</li><li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;m=
so-margin-bottom-alt:auto;mso-list:l2 level1 lfo3">
<span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">mpc8315e-rdb BSP cannot mount the sata drive: #<a href=3D"http=
s://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6489">6489</a><o:p></o:p></=
span></li><li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:a=
uto;mso-margin-bottom-alt:auto;mso-list:l2 level1 lfo3">
<span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">no permissions when first deploying an app to QEMU and running=
 it: #<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6500">=
6500</a><o:p></o:p></span></li></ul>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<p class=3D"MsoNormal" style=3D"margin-bottom:.1in;mso-line-height-alt:14.3=
pt;background:white;border:none;padding:0in">
<span style=3D"font-size:18.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">Summary Report<o:p></o:p></span></p>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0" style=3D"bac=
kground:white">
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
n style=3D"font-size:10.0pt">Testing Summary Report</span></b><b><span styl=
e=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Test Run</span></b><b><span style=3D"fo=
nt-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Test Plan</span></b><b><span style=3D"f=
ont-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Environment</span></b><b><span style=3D=
"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Passed</span></b><b><span style=3D"font=
-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Other issues</span></b><b><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Failed</span></b><b><span style=3D"font=
-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Failing bugs</span></b><b><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Blocked</span></b><b><span style=3D"fon=
t-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Blocking bugs</span></b><b><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Complete</span></b><b><span style=3D"fo=
nt-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2553"><span style=3D"color:#5A3696;text-decorat=
ion:none">2553</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2555"><span style=3D"color:#5A3696;text-decoration:none=
">2555</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ADT: master branch</span><span style=3D"fo=
nt-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Fedora 20 i686</span><span style=3D"font-s=
ize:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">94.0%</span><span style=3D"font-size:10.0p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">6.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6490"><span style=3D"color:#5A3696;text-decoration:non=
e">6490</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-langua=
ge:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2552"><span style=3D"color:#5A3696;text-decorat=
ion:none">2552</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2554"><span style=3D"color:#5A3696;text-decoration:none=
">2554</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ADT: master branch</span><span style=3D"fo=
nt-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64</span><span style=3D"f=
ont-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">94.0%</span><span style=3D"font-size:10.0p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">6.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6490"><span style=3D"color:#5A3696;text-decoration:non=
e">6490</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-langua=
ge:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2549"><span style=3D"color:#5A3696;text-decorat=
ion:none">2549</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2550"><span style=3D"color:#5A3696;text-decoration:none=
">2550</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Beaglebone Black</span><span style=3D"font=
-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2543"><span style=3D"color:#5A3696;text-decorat=
ion:none">2543</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2544"><span style=3D"color:#5A3696;text-decoration:none=
">2544</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">EdgeRouter</span><span style=3D"font-size:=
10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2551"><span style=3D"color:#5A3696;text-decorat=
ion:none">2551</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2556"><span style=3D"color:#5A3696;text-decoration:none=
">2556</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">generic-x86 on AtomPC</span><span style=3D=
"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">92.8%</span><span style=3D"font-size:10.0p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">7.2%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696;text-decoration:non=
e">4005</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D6492"><span style=3D"color:#5A3696;text-decoration:none">6492</span><=
/a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834"><sp=
an style=3D"color:#5A3696;text-decoration:none">5834</span></a></span><span=
 style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2512"><span style=3D"color:#5A3696;text-decorat=
ion:none">2512</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2513"><span style=3D"color:#5A3696;text-decoration:none=
">2513</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">genericx86-64 on Sugarbay</span><span styl=
e=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">92.8%</span><span style=3D"font-size:10.0p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">7.2%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6492"><span style=3D"color:#5A3696;text-decoration:non=
e">6492</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D5834"><span style=3D"color:#5A3696;text-decoration:none">5834</span><=
/a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o=
:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2547"><span style=3D"color:#5A3696;text-decorat=
ion:none">2547</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2548"><span style=3D"color:#5A3696;text-decoration:none=
">2548</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">MPC8315e-rdb</span><span style=3D"font-siz=
e:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">96.1%</span><span style=3D"font-size:10.0p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">3.9%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6489"><span style=3D"color:#5A3696;text-decoration:non=
e">6489</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-langua=
ge:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2545"><span style=3D"color:#5A3696;text-decorat=
ion:none">2545</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2546"><span style=3D"color:#5A3696;text-decoration:none=
">2546</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">P1022ds</span><span style=3D"font-size:10.=
0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2534"><span style=3D"color:#5A3696;text-decorat=
ion:none">2534</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2535"><span style=3D"color:#5A3696;text-decoration:none=
">2535</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemuarm</span><span style=3D"font-size:10.=
0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2539"><span style=3D"color:#5A3696;text-decorat=
ion:none">2539</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2541"><span style=3D"color:#5A3696;text-decoration:none=
">2541</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemumips</span><span style=3D"font-size:10=
.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2537"><span style=3D"color:#5A3696;text-decorat=
ion:none">2537</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2538"><span style=3D"color:#5A3696;text-decoration:none=
">2538</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemuppc</span><span style=3D"font-size:10.=
0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2561"><span style=3D"color:#5A3696;text-decorat=
ion:none">2561</span></a></span><span style=3D"font-size:10.0pt;mso-fareast=
-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Eclipse Plugin: master branch</span><span =
style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Fedora 20 x86_64</span><span style=3D"font=
-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5760"><span style=3D"color:#5A3696;text-decoration:non=
e">5760</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D6500"><span style=3D"color:#5A3696;text-decoration:none">6500</span><=
/a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o=
:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2536"><span style=3D"color:#5A3696;text-decorat=
ion:none">2536</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2540"><span style=3D"color:#5A3696;text-decoration:none=
">2540</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Meta-yocto: master branch</span><span styl=
e=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64</span><span style=3D"f=
ont-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">92.0%</span><span style=3D"font-size:10.0p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6162"><span style=3D"color:#5A3696;text-decoration:non=
e">6162</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-langua=
ge:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">8.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6482"><span style=3D"color:#5A3696;text-decoration:non=
e">6482</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D6156"><span style=3D"color:#5A3696;text-decoration:none">6156</span><=
/a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o=
:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2496"><span style=3D"color:#5A3696;text-decorat=
ion:none">2496</span></a></span><span style=3D"font-size:10.0pt;mso-fareast=
-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Hob: master branch</span><span style=3D"fo=
nt-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64</span><span style=3D"f=
ont-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2506"><span style=3D"color:#5A3696;text-decorat=
ion:none">2506</span></a></span><span style=3D"font-size:10.0pt;mso-fareast=
-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Toaster: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Fedora 20 x86_64</span><span style=3D"font=
-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">89.2%</span><span style=3D"fon=
t-size:10.0pt;color:black;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">10.8%</span><span style=3D"font-size:10.0p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5187"><span style=3D"color:#5A3696;text-decoration:non=
e">5187</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D6445"><span style=3D"color:#5A3696;text-decoration:none">6445</span><=
/a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226"><sp=
an style=3D"color:#5A3696;text-decoration:none">5226</span></a><a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844"><span style=3D"col=
or:#5A3696;text-decoration:none">5844</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2542"><span style=3D"color:#5A3696;text-decorat=
ion:none">2542</span></a></span><span style=3D"font-size:10.0pt;mso-fareast=
-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Toaster: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 12.04 x86_64</span><span style=3D"f=
ont-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2510"><span style=3D"color:#5A3696;text-decorat=
ion:none">2510</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2511"><span style=3D"color:#5A3696;text-decoration:none=
">2511</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">OE-Core: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64</span><span style=3D"f=
ont-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2508"><span style=3D"color:#5A3696;text-decorat=
ion:none">2508</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2509"><span style=3D"color:#5A3696;text-decoration:none=
">2509</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BitBake: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64</span><span style=3D"f=
ont-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2564"><span style=3D"color:#5A3696;text-decorat=
ion:none">2564</span></a></span><span style=3D"font-size:10.0pt;mso-fareast=
-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Runtime: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Multiple Environments</span><span style=3D=
"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2557"><span style=3D"color:#5A3696;text-decorat=
ion:none">2557</span></a></span><span style=3D"font-size:10.0pt;mso-fareast=
-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Runtime: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemuarm</span><span style=3D"font-size:10.=
0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">40.0%</span><span style=3D"font-size:10.0p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">60.0%</span><span style=3D"fon=
t-size:10.0pt;color:black;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6498"><span style=3D"color:#5A3696;text-decoration:non=
e">6498</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D6015"><span style=3D"color:#5A3696;text-decoration:none">6015</span><=
/a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6016"><sp=
an style=3D"color:#5A3696;text-decoration:none">6016</span></a></span><span=
 style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2558"><span style=3D"color:#5A3696;text-decorat=
ion:none">2558</span></a></span><span style=3D"font-size:10.0pt;mso-fareast=
-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Runtime: master branch</span><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemuppc</span><span style=3D"font-size:10.=
0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">60.0%</span><span style=3D"fon=
t-size:10.0pt;color:black;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">40.0%</span><span style=3D"fon=
t-size:10.0pt;color:black;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6498"><span style=3D"color:#5A3696;text-decoration:non=
e">6498</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D6121"><span style=3D"color:#5A3696;text-decoration:none">6121</span><=
/a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o=
:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2533"><span style=3D"color:#5A3696;text-decorat=
ion:none">2533</span></a></span><span style=3D"font-size:10.0pt;mso-fareast=
-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Build Appliance: master branch</span><span=
 style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemu-kvm on Ubuntu 12.04 libvirt</span><sp=
an style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">66.7%</span><span style=3D"fon=
t-size:10.0pt;color:black;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">33.3%</span><span style=3D"fon=
t-size:10.0pt;color:black;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6495"><span style=3D"color:#5A3696;text-decoration:non=
e">6495</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-langua=
ge:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 22</span></b><span style=3D"font=
-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
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
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
<tbody>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Case Status Report</span></b><b><span sty=
le=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Status</span></b><b><span style=3D"font=
-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Count</span></b><b><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">FAILED</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">39</span><span style=3D"font-size:10.0pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">PASSED</span><span style=3D"font-size:10.0=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">927</span><span style=3D"font-size:10.0pt;=
mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">RUNNING</span><span style=3D"font-size:10.=
0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">3</span><span style=3D"font-size:10.0pt;ms=
o-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 969</span></b><span style=3D"fon=
t-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
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
@01CF96E6.9D824B00" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;=
chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:39,927,3&amp;chco=3DFF9933|00FF00|00=
00FF&amp;chl=3DFAILED(39)&#43;4%25|PASSED(927)&#43;96%25|RUNNING(3)&#43;0%2=
5"></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o=
:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l2 level=
1 lfo3;display:none">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol;dis=
play:none"><span style=3D"mso-list:Ignore">&middot;</span></span><![endif]>=
<span style=3D"display:none"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:black">Bug Status Report</span></b><b><span style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack;mso-fareast-language:JA"><o:p></o:p></span></b></p>
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
se;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">ID</span></b><a href=3D"https://wiki.yoctoproj=
ect.org/wiki/WW26_-_2014-06-25_-_Full_Pass_Release_1.7_M1.rc1"><b><span sty=
le=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0=
" width=3D"12" height=3D"15" id=3D"Picture_x0020_9" src=3D"cid:image002.gif=
@01CF96E6.9D824B00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"f=
ont-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Priority</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW26_-_2014-06-25_-_Full_Pass_Release_1.7_M1.rc1"><b><sp=
an style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"15" id=3D"Picture_x0020_8" src=3D"cid:image0=
02.gif@01CF96E6.9D824B00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span styl=
e=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW26_-_2014-06-25_-_Full_Pass_Release_1.7_M1.rc1"><b><span=
 style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"15" id=3D"Picture_x0020_7" src=3D"cid:image00=
2.gif@01CF96E6.9D824B00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Resolution</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW26_-_2014-06-25_-_Full_Pass_Release_1.7_M1.rc1"><b><=
span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"15" id=3D"Picture_x0020_6" src=3D"cid:imag=
e002.gif@01CF96E6.9D824B00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span st=
yle=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Runs</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW26_-_2014-06-25_-_Full_Pass_Release_1.7_M1.rc1"><b><s=
pan style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"12" height=3D"15" id=3D"Picture_x0020_5" src=3D"cid:image=
002.gif@01CF96E6.9D824B00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span sty=
le=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Description</span></b><a href=3D"https://wiki.=
yoctoproject.org/wiki/WW26_-_2014-06-25_-_Full_Pass_Release_1.7_M1.rc1"><b>=
<span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bo=
rder=3D"0" width=3D"12" height=3D"15" id=3D"Picture_x0020_4" src=3D"cid:ima=
ge002.gif@01CF96E6.9D824B00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span s=
tyle=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p=
>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Version</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW26_-_2014-06-25_-_Full_Pass_Release_1.7_M1.rc1"><b><spa=
n style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"15" id=3D"Picture_x0020_3" src=3D"cid:image00=
2.gif@01CF96E6.9D824B00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Target Milestone</span></b><a href=3D"https://=
wiki.yoctoproject.org/wiki/WW26_-_2014-06-25_-_Full_Pass_Release_1.7_M1.rc1=
"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><i=
mg border=3D"0" width=3D"12" height=3D"15" id=3D"Picture_x0020_2" src=3D"ci=
d:image002.gif@01CF96E6.9D824B00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><s=
pan style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></=
b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Age (days)</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW26_-_2014-06-25_-_Full_Pass_Release_1.7_M1.rc1"><b><=
span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"15" id=3D"Picture_x0020_1" src=3D"cid:imag=
e002.gif@01CF96E6.9D824B00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span st=
yle=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4005"><span style=3D"color:#5A3696;text-decoration:none">4005=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Low</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2551"><span style=3D"col=
or:#5A3696;text-decoration:none">2551</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">dmesg log errors in=
 Atom-PC</span><span style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.3.1</span><span style=3D"font-size:10.0pt;mso-f=
areast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">471</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5187"><span style=3D"color:#5A3696;text-decoration:none">5187=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">ACCEPTED</span><span style=3D"font-size:10.0pt;ms=
o-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2506"><span style=3D"col=
or:#5A3696;text-decoration:none">2506</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">same cooker log fil=
e name used for several builds</span><span style=3D"font-size:10.0pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7 M3</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">285</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5226"><span style=3D"color:#5A3696;text-decoration:none">5226=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2506"><span style=3D"col=
or:#5A3696;text-decoration:none">2506</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">in 'variables' API,=
 the 'changed' field seems to return always 'FALSE'</span><span style=3D"fo=
nt-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Future</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">280</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5760"><span style=3D"color:#5A3696;text-decoration:none">5760=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Low</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2561"><span style=3D"col=
or:#5A3696;text-decoration:none">2561</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">headless build take=
s took long</span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Future</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">149</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5834"><span style=3D"color:#5A3696;text-decoration:none">5834=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2556"><span style=3D"col=
or:#5A3696;text-decoration:none">2556</span></a>&nbsp;<a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2513"><span style=3D"color=
:#5A3696;text-decoration:none">2513</span></a></span><span style=3D"font-si=
ze:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Cannot wake from su=
spend state using the USB mouse or keyboard</span><span style=3D"font-size:=
10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">128</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5844"><span style=3D"color:#5A3696;text-decoration:none">5844=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">ACCEPTED</span><span style=3D"font-size:10.0pt;ms=
o-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2506"><span style=3D"col=
or:#5A3696;text-decoration:none">2506</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Wrong script_type w=
hen task is not executed.</span><span style=3D"font-size:10.0pt;mso-fareast=
-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7 M4</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">127</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6015"><span style=3D"color:#5A3696;text-decoration:none">6015=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">WaitForUpstream</span><span style=3D"font-size:10=
.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2557"><span style=3D"col=
or:#5A3696;text-decoration:none">2557</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Lttng does not work=
 on qemuarm due to lttng-tracer module not found</span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M5</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">97</span><span style=3D"font-size:10.0pt;mso-fare=
ast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6016"><span style=3D"color:#5A3696;text-decoration:none">6016=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">REOPENED</span><span style=3D"font-size:10.0pt;ms=
o-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2557"><span style=3D"col=
or:#5A3696;text-decoration:none">2557</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">CrossTap has issues=
 on running scheduler script against qemuppc</span><span style=3D"font-size=
:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M5</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">97</span><span style=3D"font-size:10.0pt;mso-fare=
ast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6121"><span style=3D"color:#5A3696;text-decoration:none">6121=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium&#43;</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">REOPENED</span><span style=3D"font-size:10.0pt;ms=
o-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2558"><span style=3D"col=
or:#5A3696;text-decoration:none">2558</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">powertop --calibrat=
e does not work on QemuPPC</span><span style=3D"font-size:10.0pt;mso-fareas=
t-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6.1</span><span style=3D"font-size:10.0pt;mso-f=
areast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">82</span><span style=3D"font-size:10.0pt;mso-fare=
ast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6156"><span style=3D"color:#5A3696;text-decoration:none">6156=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">ACCEPTED</span><span style=3D"font-size:10.0pt;ms=
o-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2540"><span style=3D"col=
or:#5A3696;text-decoration:none">2540</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[crosstap] no trace=
 message output on qemuarm</span><span style=3D"font-size:10.0pt;mso-fareas=
t-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">72</span><span style=3D"font-size:10.0pt;mso-fare=
ast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6162"><span style=3D"color:#5A3696;text-decoration:none">6162=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium&#43;</span><span style=3D"font-size:10.0pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEEDINFO</span><span style=3D"font-size:10.0pt;ms=
o-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2540"><span style=3D"col=
or:#5A3696;text-decoration:none">2540</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">linux-yocto failed =
to do_patch after add a patch by yocto-kernel tool</span><span style=3D"fon=
t-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">71</span><span style=3D"font-size:10.0pt;mso-fare=
ast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6445"><span style=3D"color:#5A3696;text-decoration:none">6445=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">RESOLVED</span><span style=3D"font-size:10.0pt;ms=
o-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NOTABUG</span><span style=3D"font-size:10.0pt;mso=
-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2506"><span style=3D"col=
or:#5A3696;text-decoration:none">2506</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">The value of the re=
vision field from Package table doesn't start with 'r'</span><span style=3D=
"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6.1</span><span style=3D"font-size:10.0pt;mso-f=
areast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6.2</span><span style=3D"font-size:10.0pt;mso-f=
areast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">12</span><span style=3D"font-size:10.0pt;mso-fare=
ast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6482"><span style=3D"color:#5A3696;text-decoration:none">6482=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2540"><span style=3D"col=
or:#5A3696;text-decoration:none">2540</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">yocto-bsp tool: Wro=
ng tune files for qemux86-64 and qemuppc</span><span style=3D"font-size:10.=
0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6489"><span style=3D"color:#5A3696;text-decoration:none">6489=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Undecided</span><span style=3D"font-size:10.0pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2548"><span style=3D"col=
or:#5A3696;text-decoration:none">2548</span></a>&nbsp;<a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2547"><span style=3D"color=
:#5A3696;text-decoration:none">2547</span></a></span><span style=3D"font-si=
ze:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">SATA harddisk error=
 on mpc8315e-rdb</span><span style=3D"font-size:10.0pt;mso-fareast-language=
:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">---</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6490"><span style=3D"color:#5A3696;text-decoration:none">6490=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Undecided</span><span style=3D"font-size:10.0pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2552"><span style=3D"col=
or:#5A3696;text-decoration:none">2552</span></a>&nbsp;<a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2555"><span style=3D"color=
:#5A3696;text-decoration:none">2555</span></a>&nbsp;<a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D2554"><span style=3D"color:#=
5A3696;text-decoration:none">2554</span></a><a href=3D"https://bugzilla.yoc=
toproject.org/tr_show_run.cgi?run_id=3D2553"><span style=3D"color:#5A3696;t=
ext-decoration:none">2553</span></a></span><span style=3D"font-size:10.0pt;=
mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[ADT-INSTALLER] bui=
ld yocto-1.7_M1.rc1: ADT ppc cross compilation error</span><span style=3D"f=
ont-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">---</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6492"><span style=3D"color:#5A3696;text-decoration:none">6492=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Undecided</span><span style=3D"font-size:10.0pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2513"><span style=3D"col=
or:#5A3696;text-decoration:none">2513</span></a>&nbsp;<a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2556"><span style=3D"color=
:#5A3696;text-decoration:none">2556</span></a></span><span style=3D"font-si=
ze:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Generic x86_64] US=
B not mounted</span><span style=3D"font-size:10.0pt;mso-fareast-language:JA=
"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">---</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6495"><span style=3D"color:#5A3696;text-decoration:none">6495=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Undecided</span><span style=3D"font-size:10.0pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">IN PROGRESS IMPLEMENTATION</span><span style=3D"f=
ont-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2533"><span style=3D"col=
or:#5A3696;text-decoration:none">2533</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Build Appliance] q=
emu-native: do configure failed</span><span style=3D"font-size:10.0pt;mso-f=
areast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">---</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6498"><span style=3D"color:#5A3696;text-decoration:none">6498=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Undecided</span><span style=3D"font-size:10.0pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2557"><span style=3D"col=
or:#5A3696;text-decoration:none">2557</span></a>&nbsp;<a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2558"><span style=3D"color=
:#5A3696;text-decoration:none">2558</span></a></span><span style=3D"font-si=
ze:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Latencytop -d does =
not work for qemuppc and qemuarm</span><span style=3D"font-size:10.0pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">---</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6500"><span style=3D"color:#5A3696;text-decoration:none">6500=
</span></a></span><span style=3D"font-size:10.0pt;mso-fareast-language:JA">=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Undecided</span><span style=3D"font-size:10.0pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2561"><span style=3D"col=
or:#5A3696;text-decoration:none">2561</span></a></span><span style=3D"font-=
size:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">no permissions when=
 first deploying an app to QEMU and running it</span><span style=3D"font-si=
ze:10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">---</span><span style=3D"font-size:10.0pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Total: 19</span>=
</b><span style=3D"font-size:10.0pt;mso-fareast-language:JA"><o:p></o:p></s=
pan></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;=
,&quot;sans-serif&quot;;color:black">Distro Testing<o:p></o:p></span></b></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:black">Fedora 20 and Cent OS are all green. As w=
ell for Ubuntu with a fail on nightly-world bug #6467. The
 issue was fixed but wasn=1B$B!G=1B(Bt available for this release. For Open=
suse distro all tests are green exepting the world and nightlyx86 which are=
 still running (the 1.7 release overlapped with 1.6.1 point release tests s=
o the tests were delayed by few days.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"588" style=3D"width:441.0pt;margin-left:-1.15pt;border-coll=
apse:collapse">
<tbody>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;background:#D99694;padding:0in 5.4pt 0in 5.4pt;he=
ight:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">COMMIT<o:p></o:p></span>=
</b></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er:solid windowtext 1.0pt;border-left:none;background:#D99694;padding:0in 5=
.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Poky: 68824d9b8f6e290da0783=
83316b3f4b732585f2b<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#D99694;padding:0in 5.=
4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">RELEASE<o:p></o:p></span=
></b></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#D99694;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">1.7 RC1<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Ubuntu 14.04 LTS<o:p></o=
:p></span></b></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#FFC7CE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#9C0006">FAIL &#8211; 6467<o:p></o=
:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Fedora 20<o:p></o:p></sp=
an></b></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">CentOS 6.5<o:p></o:p></s=
pan></b></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#8EB4E3;padding:0in 5.=
4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">OpenSuse 13.1<o:p></o:p></span></b><=
/p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#8EB4E3;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">RUNNING<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#FFEB9C;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#9C6500">&nbsp;<o:p></o:p></span><=
/p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#C6EFCE;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#006100">PASS<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#FFEB9C;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#9C6500">&nbsp;<o:p></o:p></span><=
/p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#FFEB9C;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#9C6500">&nbsp;<o:p></o:p></span><=
/p>
</td>
</tr>
<tr style=3D"height:14.7pt">
<td width=3D"225" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.7pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td width=3D"363" nowrap=3D"" valign=3D"bottom" style=3D"width:272.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#FFEB9C;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.7pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#9C6500">&nbsp;<o:p></o:p></span><=
/p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.5pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Performance Test<o:p></o=
:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">On the build performance side, 1.7_M1.rc1 is=
 doing fair</span><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans=
-serif&quot;;color:#1F497D">l</span><span style=3D"font-family:&quot;Calibr=
i&quot;,&quot;sans-serif&quot;;color:black">y
 well aga</span><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-s=
erif&quot;;color:#1F497D">inst</span><span style=3D"font-family:&quot;Calib=
ri&quot;,&quot;sans-serif&quot;;color:black"> 1.6 release. &nbsp;We have an=
 increase of 20 seconds on building with the rootfs for a core-image-sato. =
Also,
 building the actual image with rm_work set improved with an 1:30 minutes o=
n average.</span><span style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">The kernel build time decreased a little bit=
 for about 1 minute.</span><span style=3D"color:black"><o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><img border=3D"0" width=3D"=
827" height=3D"678" id=3D"_x0000_i1025" src=3D"cid:image003.png@01CF96E6.9D=
824B00"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><img border=3D"0" width=3D"=
820" height=3D"675" id=3D"_x0000_i1026" src=3D"cid:image004.png@01CF96E6.9D=
824B00"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><img border=3D"0" width=3D"=
829" height=3D"685" id=3D"_x0000_i1027" src=3D"cid:image005.png@01CF96E6.9D=
824B00"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,</span><span styl=
e=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot=
;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">--<=
/span></b><span style=3D"font-size:11.0pt;color:black"><o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Ale=
xandruGeorgescu</span></b><span style=3D"font-size:11.0pt;color:black"><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Yoc=
to QA Engineer</span></b><span style=3D"font-size:11.0pt;color:black"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">SSG=
/SSD Open Source Technology Center Romania</span></b><span style=3D"font-si=
ze:11.0pt;color:black"><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E96219BDFE0IRSMSX104gercor_--

--_008_1FFB62CE8AEB0D4298B51122D8903E96219BDFE0IRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=9934;
	creation-date="Thu, 03 Jul 2014 14:50:05 GMT";
	modification-date="Thu, 03 Jul 2014 14:50:05 GMT"
Content-ID: <image001.png@01CF96E6.9D824B00>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAbAAAAB4CAIAAAAc4DAQAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO3de1xUZf4H8M85Zy4wwHAbGEAFuXkXUfGelzIVjbxQppm2L13b/KVru221W7vW1q6V2bZr
llp52ey2sa6tZVnpqqkZIqIIKiiKyAAzMAwwMPdzzvP74+CIiHdgBnjeL1++5pw5c86XA3x4zvOc
C0MIAUVRFAWwni6AoijKW9BApCiKakQDkaIoqhENRIqiqEY0ECmKohrRQKQoimpEA5GiKKoRDUSK
oqhGNBApiqIa0UCkKIpqRAORoiiqEQ1EiqKoRjQQKYqiGtFApCiKakQDkaIoqhENRIqiqEY0ECmK
ohrRQKQoimok83QBVCdEQKpQZYSxClUVqChAQTWq61BXi9pa1JpgakADAAECAQGghJK9+m+zHHIA
PvBRQaWG2g9+3dAtGtGxiNVAo4EmHOGhCPXIV0d1YjQQqbtShrIiFJ3F2VzknsGZUpTaYefBAxAg
2GG3wCJAaK3NceBUUCmg4MCxYJVQ+sJXCspkJPdBn77oq4W2tTZHdTUMfcgUdesssJzAiRzkHMTB
POTVoEaA4IDDAosI0bO1ySEPRjAHDkAAAvqh3ziMG4ZhyUj2h79na6M6ChqI1I244MpBzs/4eTd2
n8ZpO+xOOGtQIx3qejkZZFJEKqFMQMIUTLkX9yYjWUYPjKjroIFINeeCKwtZ3+G7ndhZhjIRYi1q
W/Gw11NYsCEI4cCFIex+3D8VU8dhnA98PF0X5UVoIFKNilD0Fb76HJ9fwAUGjAmmDtEMvGPBCGbA
xCN+DuY8iAd7oZenK6I8rzUDURQbe5FYtvnZPNJWGIZptnxDQ4NarW62sNls9vf3d6+EENK0SIZh
pPVIm3NPNtvctTNv0d18tiM6juPv4b1v8a0LLjPMTjg9XVF7U0ARgAAZZHMwZyEWJiPZ0xVRHtOa
gbhkyZLg4GDpdWRk5OLFi1UqlTT5xhtv1NfXr1y5UpoUBOGTTz7Jy8uLiooyGo3p6ekpKSkAMjMz
v/zyy+DgYJvNFh8fP3/+fJZlt2zZkp+fr1AopM+qVKoVK1bk5eV98MEH/v7+AHx9fUeNGjVp0iRp
gZqamt27dz/yyCMmk+nAgQNGo3HSpEkxMTEA7Hb7V199ZTAYhg4dOnz4cJlMtnr1ap7n3V/CY489
dvTo0fT09GaZWFdXd+DAAb1ef99998XHx0szi4qKdu7cqdFo0tPTVSqVxWI5duxYQkJCVFQUAFEU
v/zyy4ceeqi1dm/rOoVTG7HxC3xhh70WtZ27MXiLWLBBCFJC+TAe/hV+NQADPF0R1e5I63nyySdd
LhchRBCElStXfvLJJ9J8vV7/wgsv/OUvfykqKpLmHD58+N13321oaCCE1NbW/va3v7XZbHa7/Xe/
+51Op5PWsG7dup9++okQsnnz5kOHDjXb1smTJ9955x3pdVlZ2auvvrp3715pcuvWrRUVFYSQDRs2
7Nq1S6/Xv/nmm7m5uYSQDz/88LPPPqusrPziiy/efPNNQojBYNDr9Xq9/sKFCy+//LLdbi8oKMjJ
yWm2uc2bN3/99dcGg+Hvf/97VlYWISQ7O3vt2rV6vX7jxo3r16+Xljlw4MAHH3xw+PBhQsi+ffvy
8vJacfe2CiMxvkZe60a6BZNghjAgoP+u/ccQJpgEx5G4t8hblaTS0980qv20yZUqLMtOnDixoaFB
mszKyho+fPjQoUOzsrKkOVL8+fn5AQgMDFyyZIkoig6Hw+l0Si1BlmVnz54tNetuKioqaubMmUeO
HAFgt9tNJlNERITJZKqvr09NTdVqtampqYWFhQAqKioefvjhsLCwtLS00tJSQkh4eLhWq9VqtYcP
H545c6ZSqezdu3deXl7T9dfX11dUVKSlpYWHh0+bNk1aVX5+fnp6ular/cUvfpGamsrzvMlkGjt2
7OTJkw0Gg8PhOHfu3IAB3tLEICA/4sdpmJaAhFfwShnKOspIsUcQkBrUXMCFFVjRC73uw327sZvu
rq6glc8/yM/P5zju0qVLu3fvXrRokTQzKytr6dKlHMe9+eabc+bMYVk2JSXl2LFjL7300sCBA/v2
7du/f3/pEHXChAlvvPFGv379+vTpM2jQII1GI63h2LFjer1eeh0WFjZu3Lhm242Li5NahWfOnImI
iADg4+NTWlpqMplCQkLq6+vPnz8PYMWKFe6Sevfu7T4uPn/+vNlsTk5u7DxyOp2XLl2Kjo6WJpVK
pcFgMBgMWq3WvaqSkpL6+vp169bFx8ePHz9eJpPFx8dv3ry5rKxs2bJlu3fvdh/Cu+3cuXPnzp2t
tatvLC4ubtGiRRqNxgHHVmx9Fa82oKEWte2z9U7DBpsNtn3Yl4tcf/i/iBcfx+O+8PV0XVRbaf1A
ZFlWoVAsXbo0MTERQHFxMc/ztbW1ADiOO3369IABA9Rq9XPPPXfp0qWCgoKvv/5627Ztzz//vEql
Sk9Pnzhx4pkzZ/Lz87dt27Zw4cKkpCQAoaGh7tZiQEDAtdv19fUlhACoqqrq1q0bAJVKNXXq1H/+
85++vr7u0R4AZrP5iy++sNlsTzzxhHvm3r17H3jgAfekRqPR6XTuQFQoFNOnT//4448DAgIEQSCE
iKKo1+szMzMfffTRAwcOrFu37plnnpk5c6bZbFapVFar1WQy9ezZ8+TJk3a7fdiwYVLypqWlpaWl
te4Ov57MzMw3Vr3BTGU23rfRBZcFlvbZbmdlgskE07N49vf4/XIsfxbPqtF8MJDqBFo5EOfOnSuT
XbXOI0eOhIWF5eTkANBqtVlZWQMGDDh8+HDfvn2jo6Ojo6MnT568YcOGw4cP9+7du6amJikpaeTI
kSNHjszOzv7222+lQOzZs6c06nI9hYWF4eHhDMM4nU5ppAVAamrquHHjrFarxWKRDqgvXry4ZcuW
6dOnDx061P1Zm81mNBrd8QdApVIJwlWn3U2cOHHMmDH19fWCIOzevZtl2cjIyNmzZ6tUqtTU1D/8
4Q88z8tkMmnE/Lvvvps6deqJEyfy8/Pj4+Pfe++9ZcuW3eWOvS022PaO3JsRndHn2z7mcWZR5uFr
SDoN6RLst/DWGqx5Bs88g2cC0MKfZ6rjatu73YiieOzYsfnz58+bN2/evHkLFizIzc11Op11dXXf
f/+9y+WSFquvr4+NjfXx8fnPf/5TU1MjzTSbzT179ryVrZSWlm7fvl06RNVoNFVVVdKm16xZYzab
NRpNZmZmXFwcgO3bty9evLhpGgLIzs5ulrYGgyE09KobB7z77rtVVVVhYWHuVSUkJOTm5gIwmUxx
cXHuPwOVlZUAwsLC8vLyJk6cOGrUqKaj2G3NCec7eKcbuq3EytKo0t2Ld9M0bHU22Mwwr8Kqbuj2
N/zNBZenK6JaTdtew3T69OmQkJDw8HBpUqPRREZG5ubmjhs3btOmTc8991xcXFxdXV1MTIx0Lsuo
UaNWrFgRExMjCIJcLl+wYIH0wW3btu3YscO92hdeeAFAYWHh888/TwjRarXjx48fMWIEgMGDB2dk
ZABgWbZ3795r1qzRarXh4eFJSUlWq/X8+fNvvfWWtBKO495++20AmZmZ8+bNa1q2wWBoNp7Tv3//
tWvXdu/ePSgoKDU1FcD48eO/+uqrnJwcnU63cOFC95K7du1KT08HMHr06O3btzudzsGDB7fqTr2u
/+K/T+JJK6xSQ4ZqUzbYALyMl/+Ov3+ID6diqqcrolqDB0e46+rqdDqdKIpNZ0oDGjab7Y5Xu2PH
DovFIr2uqamRBltunclk2rRpU4vVlpWVNZtZWVnZrH69Xu9+LQhCfX39bW39zpwj5yaQCQEkwOMn
rHTNf37EbywZe4FcaIfvNdWmOuGleyaT6cSJE/fdd9+dfXz79u3Dhg3r0aNH61bVRgjIO3jnD/iD
AIEeu3kQB04BxV/x16fxtHTHHaoj6oSBCECn03Xv3v3OPtv0hBsvdwmXHsWjucilg8hewg9+CUj4
Gl/3QMf4g0o10zkDsSvIQMZCLOTBd8Grj72ZHHIf+HyBL2ivYkdEn6nS8YgQf4/fz8d8K6w0Db2N
C6561M/EzGfxrHTncKoDoS3EDsYM88N4+CAO2mH3dC3UjfjAZzRG78AOer/uDoQGYkeih34cxknP
LfF0LdTN+cAnAQl7sIc+5qWjoIHYYeiguwf3VKCCHiZ3IEooNdAcwqGe6OnpWqibo4HYMZSgZDRG
V6GKnlvT4SigCEd4JjK7oZuna6FuggZiB1CN6mEYVopS2knfQckh74ZuR3AkHOGeroW6ETrK7O1s
sE3F1HKU0zTsuFxwlaN8FmbRBr6Xo4Ho7ZZh2QmccMDh6UKou+KE8yiOPoNnPF0IdSP0kNmrZSBj
LubSezV3GgyYrdg6H/M9XQjVMhqI3qsEJf3R3worDcROgwHjD/+zOBuBCE/XQrWAHjJ7r9/hdw44
aBp2JgTEBtuv8WtPF0K1jLYQvdRBHByP8TQNO6v92D8e4z1dBdUcDUQvlYKUXOTSkeVOSQbZGIzZ
j/2eLoRqjh4ye6NDOHQMx2gadlY8+B/xIw1EL0QD0Ru9h/dkbfx0B8qzZJC9j/c9XQXVHD1k9jom
mLTQ0uZhp+cLXyOMKqhu61PSne4BMAzjfrC4NL/FyTuef70FJIIg2O12Pz+/a8truliHQ1uIXmcP
9tA07LScChi0KOiDn0fZdk34oODA7a5g6dKlL7744h//+Mfnn3/+z3/+c1ZWFgCTyfTiiy82W4zn
+dOnT//6178uLy93z1++fDmA7Ozs3/zmN0ajUZrpcDiee+45AAaDQVrP9RYAUFJSsmXLltdee+3t
t99+6aWXzp075175jz/+WFBQAOD06dPvvffe+++/f/r0aQBFRUUnTpy49mvR6XQffvjhDz/84HA4
ABBCTpw4cfz4cXcr7bvvvjObzbe7i+4GDUSv8x2+o8fLHYlDCX2ElHH4dho+fQxrnsZzb+DxLZi2
EyMPo89pJvGcLO6SLLpcHleqSMnzmfiT78zvuBlf/2/1kDvY4CuvvPL666+vXr167ty5W7dutdls
N1jY19f3448/vvZAUKFQfPrppzf4YIsLWK3WDRs2DBkyZMWKFStWrJgyZYr0sF8ALpfr+PHjffv2
raqq+ve//z1p0qSxY8euW7eurq4uISFBCsqm9Hr92rVrR4wY4XA41q1bByAzM7OgoKC2tnb9+vUA
TCaTyWSSnnXebugvntc5gAO0hehJvAyV4agJvvKvOhS67tBrUaWBKQR1QbD5QuAgcCAAQyAyEGRw
KuBQQpBfu0qClr+jxUfu6l4PvXr1UqvVHHejZ1olJiYKgrBv375mj11LSkoyGo2ZmZkjR45s8YMt
LrB///7Y2NhBgwZJk2PGjPHz85Padzk5OcnJyQAMBkNqamqvXr0AdOvWzWQyBQYGRkZGlpSUNH26
b2Zm5vDhw5OSkpKSkv70pz+5XK6TJ0/OmTMnKChIeuL5rl27pk2bdmd75o7RQPQuLrgu4qKnq+iM
7D5XZZwpmKkMQ0UkMWhh1MAUitoguOTgZeBlIAxAIDLgZYxLQRxKuJStXtHkyRtiY08sWXLzJdPS
0tLS0tyTx44dk8lkPM/n5+dPmDBBoVDc+OPz5s17/fXXBw8eHBwc7J7JMMz8+fPffvvtAQMGyOUt
hHiLC+h0uv79+0uvy8rK7HZ7QECAlMgnT56UMnfAgAEATp8+nZmZ6efnJz2yLTo6eu/evU2fYG40
Gvv16ye9Dg8PLyoqGjdu3CeffOJyuYYPH15WVubn59e04PZBA9G7lKBEgODpKjoClxxVYS204wxa
piqMmIJRGwSbCiILngOYy+04rrEdx8tvcTCx7cYcf/hhCYBLl3C7j7zV6XRSBhUXF0sNsRsLDAyc
Nm3ap59+umzZsqbzw8LCxo8f/8UXX8yf3/K11dcuoFQq3WMmWVlZVVVVJpMpMTHxoYceqqqq6tbt
yg0f5XK5n5+fy+USRZHjOI1Go9Ppmq7c4XC4x2QCAwNtNtuQIUMSExOtVqtard60adOjjz5aXl5e
UFAwfPhwf/92egwDDUTvUoMaT5fgOddkHGPUEF03plKLqjCYQkhdICx+IIyUcczlY1XilEsZJ62m
Y502UVNz24E4Y8YMpVIJoFevXp999tmECRM4jhOEK39HpaFelr0yQjBu3LisrCxpBKapyZMnv/ba
a/n5+dfbVrMFBg8e/PPPP48ePRrArFmzAGRkZEhvORwOaYvl5eVqtToxMTExMfHzzz//3//+l5qa
qlKpmlYIICAgwGAwXN4JNVqtFoBMJlOr1YWFhdHR0SzLZmRkTJgwYc2aNcuXLw8ICLi93XRHaCB6
FwKCYiDW03W0O9nfnsEHv4LNlxE4VmAZkWMElhE4hjAMAQPpf8hZXs5Jv1fk8v8uKFxQWO9q8+0a
ogx7uZE1Z+gGR8VcJCXc2YoGDhxYV1fndDoDAwOVSmVxcXFsbKzUYxgREdE0EAHMnz9/zZo1zUZX
WJZdsGCBNIjRomYL9OvX79NPP83NzU1KSmIYprCwMDs7e8SIEQDCwsKMRmNUVFReXp7Vap01a5bT
6aypqZH6DQ0Gg0ajabrmwYMHHzp0CIDNZispKQkPv9Kdun///l/+8peFhYWJiYnJycmlpaWVlZU0
ELsiAoIyIBq4UUd5J+T36zXGwP0ysQOfwna7eJEcuWAZNnT23awkNDT0/Pnzffv2nTdv3vr166Oj
o8vKyuRy+eLFi5stGRERcc8993zzzTfN5sfExKSkpGRmZl5vE00XkMlkixYt2rRp07/+9S+VSsVx
3KxZs6TTekaNGmUwGKKiou69997Vq1eXl5frdLrIyMhhw4YBKCsri4uLa7ragQMHHjp06K233qqt
rX388cfd3ZTZ2dmDBg2SyWS9evU6ePDghx9+6HA4HnzwwbvZS7eOnpjtXUpQ0vPnnhgCtH4nvvfi
CLPgXMiW/T09XUi7srtIziXL6D/+D+rWedaKKIp6vV6lUgUFBbXKCq+HEGIwGBQKRUhICABBEDiO
E0Vx27ZtjzzyiLRMdXW1XC53nzSzefPmWbNmXTtIYjKZOI4LDAx0z6mqqtJoNO6eyrq6uqbvtjXa
QvQu3dGdYRliJ10qEAWGzLjYtr/DXsjuEjmWgX+r3RiRZdmoqKjWWtsNMAwTEXGlbGmEh2XZ0NDQ
mpoaKfVCQ0PdCxiNRqVS2eKQsRSpTYWFhTWdbM80BD0x29tw4JSCEnfXIdbhKAVmkq5dz7/1Blan
KLAKsJ2nc+See+5pNnLilp6e3s7F3BkaiF4nwhnBVHWhrjSOMKm6QD++y/0oVjbwTnl7n2fXppRK
ZbORE4lGo/H19W3/eu5Al/sp9H79mf6krgt17AoMmVnc5Y6XCSFmK4/Q3p4uhLoKDUSv05/0hwOo
93Qd7YUleOBSu/YTeQOzXXTwBEE9PV0IdRUaiF6HEziUAMWerqNdsARjDP5h9i43uFdc7Syutgto
4Zo5yoO63A+i9zNajagEagC+839/CIP04k7Vj3YrXAKps/BV9YK/ocHTtVBXoS1Er1NtqwYPlHeJ
RiIBHizpcsfL5yodF2tcgkhqauyeroW6Cg1Er9PgbADAlDIoB5yerqYtMcAAk2+8uSudcgk4eVJZ
7yozOQDYbC5Pl0NdhQai12m8dsgF5gKDPE9X05YYglld73zsUxX2cwanIAIAQ2ggehcaiF6Hu3ym
LmNgmEoGes+W04ZEBjO7WCCarHxlvctQ35iDkUFd+OZGXqmzd9p3QGrllWs22EJW8BOg6ZzfqB4N
iiHG23vEUofm5Emezn5Sd+WO/77+Xa7/1MvRFqLX6avpe2XCCe48x+QwHewmf7eAI0yXah4SghOl
1gKD3clf+V4GRcbc4CNU+6OB6HWGRQ1rOsmYGPYii1xPldNWBIakd6VAzNXZiiod1Q1XXeobP3i8
p+qhWtQZj8Q6uNTE1GZPtuXKOfhA8BOQ6KmiWl+Qkxtb0U73hfe4YqOztMZZUnP1EArDdO99J0/d
o9oObSF6HY7hIv0jm82UlcjYYpYp6SQ3fZAR5sGSII50ki/nxoqqHKfKbacqHM3mB4Z1Y1naIvEu
NBC90ZS4Kc1nESjOKdh8Fmc8UVBr4xmS3jVu6HCx2nnW4Dijb56GABKS6fGy16GB6I1eHvdyi/MV
lxSyYhlOtXM5ra+L3AAxr8yaXWI9VeG4dkiMYZh7H3/BAzVRN0QD0RvFBMX0Dmn5xlAKnUJ+Qc6c
YCC2c1GthiPMpDJ1574BoiAi55L1jN55sbrFJ9QjODJWpW5+s2jK4zrzD2WHtvK+ldd7S1Gp8Cn0
YY4wsLRnRa1GYMhDFzrzDR0sTvHwhYZjpfbSmpbTEMADS1e1Z0nULaKB6KXSe6fHBcVd713OyvkV
+7HHWKas441LdO4bIJbX8UcuWPPKnPX26547GqSN7jlwdHtWRd0iGojea1v6NgbXzTuGZ/xL/eWn
5Gwui45zRSxLMEbfOW+AyAsku8R6+II1r8LpEK5/Jj3DzHlxczvWRd0GGojea1D4oIf7PHyjJQh8
q339zvtxRzimtGM0FQmDmSWdcHy5st51+IL1ZLmzrI6/8VVFfUdNC4vp005lUbeJPpfZq4kQu6/v
Xu2oZliG4ZjG/90vmkza1XZHqEMcKELh6aJviAGKPxsY0+DdVd4OJ09OltlKa/nyWlEEEQkhBKTp
/yCEEJGAEKJShy7ffIzpRE/a62RoC9GrsWB3pu9kmZt/m3wtvuoKtfyonC1gcd2ufA9jgD61Pp0m
DQURZ/T2A0WW42Wu8jrxpi0LhmHnvZJB09Cb0UD0dkO0Q9bet/YGnYlunMAF1gQGlQQpjirYQhYt
PyDXkxiCR853hvFlkeCi0fnT+YajJc5zRsF1a7t62tJVYTG92rg06q50wr7tzmfxwMXF5uK3T7x9
KwtzIhdkDnLanA11DWKkKHYTveevnshgegfvQCQEJSaHzsTr6sU6O269w2nQpEeT7pt79wWI4lUn
oLIs2/StppOEEOmi+Gbzpbea9pUxDONesulks49cO7PzoX2IHcYjux7ZeXHn9foQW5x0yVz1PvWC
WhBiBXjBjfqjrHLdJ0kd7rfKIbDby7tPjygtq7EbzHy5mZgdkBKFNLrSXdhiH2KvkdNm/G793Vci
iuJTTz0VHHyllT179uwhQ4YA+PHHHz///PPf/va3vXs3ntL/5z//edGiRdHR0UuWLHn33Xdlsiut
n1WrVhmNRvecHj16PPXUU3v37t2xY4dKpQLg7+8/efLkYcMab7xUXFx89uzZKVOmlJWV/fDDDw0N
DcnJyWPHjgVgNBoPHDhQW1s7adKkHj168Dz/9ddfz5o1q8X6CwoKzpw5I71bWlp64cKFESNG+Pj4
ADh//nxtbe3QoUPvfi/dDdpC7DAypmb8377/23pu661/RCEqNA4NX8031Da4/F2uBBd82q7Am+AI
89CF4A6XhgB4njc2CKtPx/bi8+38bbQKJQnDJrVKGrqtXLmyWYsPwJEjRwYOHHj06FF3IN7YE088
0atX8+P3UaNGzZ07F8DZs2c/+ugjHx+fgQMHAvjmm29++ctfEkLef//96dOn9+jRY9WqVSEhIf37
98/IyEhMTBwzZsyWLVumT5/er18/Hx8fs9msVje/NNNisXz00UexsbEAzGbzf/7zn/Hjx69aterZ
Z5/18/Pbs2fPokWL7myHtCKvOZqibsH6e9c/0feJ2/2UnJGHICTMGuZ/0l9+Qs5VcB657K/D3QDR
JZCzBueh85b/nbMHWoocPDlDbrsHcPCUBbOe39gW5TVlNBpramoeffTR48eP83wrjKn16tVr4sSJ
WVlZAPR6fUBAgK+vr9FoTElJSUlJ0Wq1KSkpVVVVlZWVTqdz0qRJWq12ypQpZ8+eBTB69Oj9+/df
u86PP/7Y3eQ8c+ZMcnLy4MGD+/btazabjx8/PmDAALnc80+ppi3EDuYfY//h7+P/Tv47t/tBjuFC
2BAGjEvvqtXXuuQuPoInoeQWRmtah9rJ3aPvADdAJEClmdfVuursqLLCKXAEhBDEk4JT7OAs+e3d
ouZcdtW/s5fcZUlpaWlpaWnuyS+//FJ6ERAQMHnyZABZWVnDhg0LCQmJiIjIz89PTk6+6ToPHDiQ
l9f4DLPY2FjpuLup2NjYQ4cOATh58mSPHj0AhIWFTZ8+vby8fN++fTqdburUqRzHFRcX19XVBQYG
ms3m8+fPAwgMDDxx4sQDDzzAcVfG0/fv3x8ZGRkXF2c0GgEMGDBgy5YtRUVFhBCtVrtjx44nn3zy
LvZQq6GB2PH8ddhf74m8Z/7++a47ukJFKVNGsBGEJQ1lDZZyC+/Du8JdJLBtk5EjzIySIJnovUfM
hJBam6ir5c12sdbG1Ls44eqRBxmEJOGo1DMonVR4gz5ElpM/8My6+CET26LU6OhoaXxD6n0DkJWV
NX78+IKCAq1We/To0VsJRK1WGxnZeNvN0NDQaxdQqVTSl19VVZWSkuKez7Ksv7+/QqEAoFarJ02a
tHnzZqVSKYqie3f5+PjU1NRoNBppsry8PCcn5ze/+c2pU413avLz81u2bFl1dXVoaOjBgwdHjx5t
tVqPHj0aHx8vha+n0EDskFK7p5566NTk7yeX2ErubA0swwb6BgZxQYQhlgpLfWk9z/G8hudDebTB
eXICQ7zzCSpOnlSY+SqLYHWi1sE4BFYk7FVBePtU6tA5f90eGNZWv9hDhw5t2od46dIlq9VaUVFR
UVHBcVx+fr7dbndn5fX07t372j7EpgoLCyMiIgA4HA5pcyaTSRTFiIiIGTNmHD58OCMj48knn0xL
S7NYLA6Hw2QyuZucKpVKEK6ci3To0KGGhoa1a9c2NDTU1dV98skn8+fPBxAaGup0OgsKCp544omt
W7fGxcXt2bOnf//+w4cPv9N9c7doIHZUWl9t7szcp7Oe/vjix3ezHpZl1ZG/vmoAAAZ3SURBVH7q
QC4QDCwNlvrqeifj5H14V7CLqFut2agUmCml3nIDREJQZxMqzEK9U7Q4mAaBdQryy628uzzpgukz
duaUJW+hHc9QOXLkyJgxY2bMmCFN6vX648ePjxo16o5XSAi5cOHCrl27Fi9eDCAsLMxoNCYmJlZW
Vn7//fdPP/00IaSyslKtVvM8v3bt2sceeyw8PPzbb7+VRmAAVFZWNm11pqWl3X///QAKCgpycnIe
fPBB91t79uyZOHEiIcRgMDz++OMxMTFHjx6lgUjdoTXD18yNm/vY4cfqhLq7XBXDMAH+AepANcMy
IhEt9RZzldnJOHkF71K7RH/xjluOHGHu9/QNEB28aGwQjBbRwcMmwMpzvCgTwYiiFIGtcPKZwkc1
aek/Yofcd/erunWEkOzs7Keffto9JyUl5ejRo80C8cUXX5RecBz3+uuvA3j//ffdfXzumT///HNO
Tg4hJCYmZs6cOfHx8QBGjhx5+PBhAH369Dl48ODq1asdDgfP88uXL5fJZAkJCf/4xz/CwsKioqL6
9esHwOFwqFSqpmf5qFQq6WyegIAAhUIRGNh4r6OGhobKyspp06YB6Nev38aNGysqKpYuXdpG++pW
0PMQO4lXT7363vn3RFa86rTElk5UZDn2Fk9jlCZFItqstvqGeofg4AkvyARngJMPuL0j600/xiwq
1LTZV98CB08aHILRQuw8cfDEzrN2wgpEJjY9SRCQArFJP+CVSdHdPwhCRLhbkNf2IYJhB0x87J4F
f2Ju4SLLjigjI2P27NlSx2VDQ4PNZgsLC3O/W1NT43Q6tVqtNJmdnW2xWMaPv/nok8ViAeDn5+ee
9PHxaToU0/5oIHYeFy0XH89+vMBa0LqBKL0AIEUC7+St9dZ6a71LdPHgBQiCTOD9eEElwActHmKz
BPqPB7XdLb8EEQ5edPBijZ1Y7XASOHm4iIwHK4AjBJeDr0nqtV4ghnTvk7r8PbXWk0MBbe3s2bN2
uz0pKelWFt6wYcPChQuVSi+4EuD20UDsbHbqd75Q8EIVX9VGgQhy5QURCQh4nnfYHDa7zeFy8IQX
WVEggsiKIkTBV2DlwvTy4I8OxLAMI+MYjrm97jVCCE8gCMQlgBeJkycOkbE6RV6EIDIiAU8YgTAi
OIHhCFgCtmlyXR18rRyIPurQexe/3iOpSzwrSqfTde/e/aaLuVyu6upqaTSmI6KB2Dn9V//fl4pe
MvLGdgjEy5nR5C2x8Y5XvIuXO4Vt38SIgiAIAiOA5XlRFBni/oC0YgBXZhCAZRgCIgIELCGMCJaA
ISzLgCGEYTiWEOZKZl2VaGiHQFQGhI6Y8/vE0dM99O2l2goNxM5sc9nmd0rfMYpGjwSi9FouMN9/
k3CjALr86SsBdE2uXe+8v/YPRKUqKHn6U/3uX+Dp7y3VJugoc2e2qNuiRd0WHaw9+MqlV846znq6
nI7NLyRq6EPPxA2f5ulCqDZEA7HzGxs0dk/QnmJ78cqylQcaDvBee/9Yr6Tw8YsadO/gGU/7h0Z6
uhaqzdFA7CpifWI3xm8UIf6r+l+bTZtLhDu8xKWLYFg2tEe/AVN/1T1pgqdrodoPDcSuhQU7L3Te
vNB5dWLd+ur131i/qSSVni7KmzCMj39wj6GpA6b9n0LlLZfWUO2GDqp0dRV8xT/r/7nPua9MLAOH
rjmoAoYNiIiPG/VQ7OiZrKyTPPKFugM0EKlGDWLDp/ZPf3D+cBEXXayrKwQiw8r8IxKih6XFjpnN
yujREkUDkWqJTtTt4HccJAeLmWIX6+pEgchwCl+/8J5hiSOihkwJ0MZ5ek9T3oUGInUTRaRoL7P3
ODlehKIasUa8fEpexwlEcEo/lTZWkzg8amiaKpgOFlPXRQ8TqJtIYBISkCBdpEw4ckw89hP5KY/k
6QSdiTE5idPTBV6FYRjOV61Ua/zCEtTR/UN6jaYJSN06GojUbWDApLApKUgBGn92HHDkCXm5Ym6h
UFgilJhEk1k0O+Boh7MdWZZjZD6cr1qhDlUGRviGxKijkwKjB+KaBzBR1C2ih8xUWykRSs4L5032
silnXMReLzgtgtMmumyiwyrwDtHlgCBcPuwGCERRFHH5iJdhGU7BypSMwg9yJSv3ZZX+nDJA5h8s
8w1UaRNV2jj6iDSq1dFApCiKakT/xlIURTWigUhRFNWIBiJFUVQjGogURVGNaCBSFEU1+n9/FDU1
Lwg5DQAAAABJRU5ErkJggg==

--_008_1FFB62CE8AEB0D4298B51122D8903E96219BDFE0IRSMSX104gercor_
Content-Type: image/gif; name="image002.gif"
Content-Description: image002.gif
Content-Disposition: inline; filename="image002.gif"; size=462;
	creation-date="Thu, 03 Jul 2014 14:50:05 GMT";
	modification-date="Thu, 03 Jul 2014 14:50:05 GMT"
Content-ID: <image002.gif@01CF96E6.9D824B00>
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

--_008_1FFB62CE8AEB0D4298B51122D8903E96219BDFE0IRSMSX104gercor_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=50222;
	creation-date="Thu, 03 Jul 2014 14:50:05 GMT";
	modification-date="Thu, 03 Jul 2014 14:50:05 GMT"
Content-ID: <image003.png@01CF96E6.9D824B00>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAzsAAAKmCAIAAADlwhdRAAAKyGlDQ1BJQ0MgUHJvZmlsZQAASA2t
lndU08kWx+f3+6UXWkKkE3oTpBNAeg1dOohKSAIJJYZAELChsrgCa0FFBBQFF0UUXJUia0EsWFgU
G/YFWRTU52LBhsr7AUvc987b/97kzMwn37lz5/7m3DnnAkDp4YjF6bACABmibEm4nyczNi6eiX8M
8AAB8mg35nCzxB5hYUHgH9v7OwCaWrxpPuXrH83+94Iij5/FBQAKQ5eTeFncDJSPo/0oVyzJBgAR
oLresmzxFJeiTJegAaK8Z4pTZhi1B/SkGb40bRMZ7oXaPASAQOFwJCkAkEdQnZnDTUH9UAgoW4p4
QhHKLJRduQIOD+VclOdmZCyd4n0oGyf9zU/K35jDSZL55HBSZDzzLehO9GBvYZY4nZM3/ef/OWSk
S9H7mm466EgRSPzD0ZmB3ll12tJAGYuSQkJndSH6RbMskPpHzTI3ywu9y5m9PI534CxL06I8Zpkj
QekvG2E2O3KWJUvDZf5F6SFT+TEdg4DPljE/yydiVk8W+rJnOV8QGTPLOcLokFnOSouQxZAv8JLp
Emm4LOZkia/sGzOy0J1/ncvlfD8rWxDpP6vz+N4+s8wXRcniEWd7yvyI06fzezp+frqfTM/KiZDt
zZZEyvRUTsBUvk7bi7PDZHcCvIEPCEJ/TBAFrIEtsELHYACy+blo3gHgtVScJxGmCLKZHuhL4TPZ
Iq7FXKa1pZUtAFPvbsoGgLd3p98TxCB818ToWY7eaE7XfdeS1ABoQ3NBlfhd098PgHwsAK0FXKkk
Z8YfZmrCAhL6nulAFWgBPWAMzNHI7IEzcEcjDgChIBLEgcWACwQgA0jAMrACrAFFoARsBttBJagB
deAAOAyOgjZwEpwFF8FVcB3cBg/AABgGL8AYeA8mIAjCQ1SIBqlC2pABZAZZQyzIFfKBgqBwKA5K
hFIgESSFVkDroBKoDKqE9kIN0C/QCegsdBnqg+5Bg9Ao9Ab6DCMwBabDmrAhPA9mwR5wIBwJL4JT
4Ew4Hy6EN8IVcC18CG6Fz8JX4dvwAPwCHkcAQkYYiA5ijrAQLyQUiUeSEQmyCilGypFapAnpQLqR
m8gA8hL5hMFhaBgmxhzjjPHHRGG4mEzMKkwpphJzANOKOY+5iRnEjGG+YalYDawZ1gnLxsZiU7DL
sEXYcmw9tgV7AXsbO4x9j8PhGDgjnAPOHxeHS8Utx5XiduGacZ24PtwQbhyPx6vizfAu+FA8B5+N
L8LvxB/Cn8HfwA/jPxLIBG2CNcGXEE8QEdYSygkHCacJNwjPCBNEBaIB0YkYSuQR84ibiPuIHcRr
xGHiBEmRZERyIUWSUklrSBWkJtIF0kPSWzKZrEt2JC8gC8kF5AryEfIl8iD5E0WJYkrxoiRQpJSN
lP2UTso9ylsqlWpIdafGU7OpG6kN1HPUx9SPcjQ5Czm2HE9utVyVXKvcDblX8kR5A3kP+cXy+fLl
8sfkr8m/VCAqGCp4KXAUVilUKZxQ6FcYV6QpWimGKmYolioeVLysOKKEVzJU8lHiKRUq1SmdUxqi
ITQ9mheNS1tH20e7QBum4+hGdDY9lV5CP0zvpY8pKynbKkcr5ypXKZ9SHmAgDEMGm5HO2MQ4yrjD
+DxHc47HHP6cDXOa5tyY80FFXcVdha9SrNKsclvlsypT1Uc1TXWLapvqIzWMmqnaArVlarvVLqi9
VKerO6tz1YvVj6rf14A1TDXCNZZr1Gn0aIxramn6aYo1d2qe03ypxdBy10rV2qZ1WmtUm6btqi3U
3qZ9Rvs5U5npwUxnVjDPM8d0NHT8daQ6e3V6dSZ0jXSjdNfqNus+0iPpsfSS9bbpdemN6WvrB+uv
0G/Uv29ANGAZCAx2GHQbfDA0MowxXG/YZjhipGLENso3ajR6aEw1djPONK41vmWCM2GZpJnsMrlu
CpvamQpMq0yvmcFm9mZCs11mfXOxcx3niubWzu03p5h7mOeYN5oPWjAsgizWWrRZvJqnPy9+3pZ5
3fO+WdpZplvus3xgpWQVYLXWqsPqjbWpNde6yvqWDdXG12a1TbvNa1szW77tbtu7djS7YLv1dl12
X+0d7CX2TfajDvoOiQ7VDv0sOiuMVcq65Ih19HRc7XjS8ZOTvVO201GnP53NndOcDzqPzDeaz5+/
b/6Qi64Lx2Wvy4Ar0zXRdY/rgJuOG8et1u2Ju547z73e/ZmHiUeqxyGPV56WnhLPFs8PXk5eK706
vRFvP+9i714fJZ8on0qfx766vim+jb5jfnZ+y/06/bH+gf5b/PvZmmwuu4E9FuAQsDLgfCAlMCKw
MvBJkGmQJKgjGA4OCN4a/DDEIEQU0hYKQtmhW0MfhRmFZYb9ugC3IGxB1YKn4VbhK8K7I2gRSyIO
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
UsROyoLHjsA4s+GxjRMgik8UAX1dbtau+tDIULbC7rbu2NzCXcPz0CbKBhfVQ1MosnadMDeF6e6O
Wlu4y+YEWBfV5041tK5w14n6yFC2W7q722LX5u5Kd92PY3daLtGtP5ubfayeMTWFfcLW5hame+0T
hjeLpH89n4E3i+f7QGqBV32zwGOTdiByQAAEQAAEQAAEQEBeBLDyQF79AWtAAARAAARAAARAQEoA
HpuUCXJAAARAAARAAARAQF4E4LHJqz9gDQiAAAiAAAiAAAhICcBjkzJBDgiAAAiAAAiAAAjIiwA8
Nnn1B6wBARAAARAAARAAASkBeGxSJsgBARAAARAAARAAAXkRgMcmr/6ANSAAAiAAAiAAAiAgJQCP
TcoEOSAAAiAAAiAAAiAgLwLw2OTVH7AGBEAABEAABEAABKQE4LFJmSAHBEAABEAABEAABORFAB6b
vPoD1oAACIAACIAACICAlAA8NikT5IAACIAACIAACICAvAjAY5NXf8AaEAABEAABEAABEJASgMcm
ZYIcEAABEAABEAABEJAXAXhs8uoPWAMCIAACIAACIAACUgLw2KRMkAMCIAACIAACIAAC8iIAj01e
/QFrQAAEQAAEQAAEQEBKAB6blAlyQAAEQAAEQAAEQEBeBOCxyas/YA0IgAAIgAAIgAAISAnAY5My
QQ4IgAAIgAAIgAAIyIsAPDZ59QesAQEQAAEQAAEQAAEpAXhsUibIAQEQAAEQAAEQAAF5EYDHJq/+
gDUgAAIgAAIgAAIgICUAj03KBDkgAAIgAAIgAAIgIC8C8Njk1R+wBgRAAARAAARAAASkBOCxSZkg
BwRAAARAAARAAATkRQAem7z6A9aAAAiAAAiAAAiAgJQAPDYpE+SAAAiAAAiAAAiAgLwIwGOTV3/A
GhAAARAAARAAARCQEoDHJmWCHBAAARAAARAAARCQFwF4bPLqD1gDAiAAAiAAAiAAAlIC8NikTJAD
AiAAAiAAAiAAAvIiAI9NXv0Ba0AABEAABEAABEBASgAem5QJckAABEAABEAABEBAXgTgscmrP2AN
CIAACIAACIAACEgJwGOTMkEOCIAACIAACIAACMiLADw2efUHrAEBEAABEAABEAABKQF4bFImyAEB
EAABEAABEAABeRGAxyav/oA1IAACIAACIAACICAlAI9NygQ5IAACIAACIAACICAvAvDY5NUfsAYE
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
XjtUdbzJlurUe14p/V7yyhee2fzaofdg2ggFDa8j7H/P0qYnBwZBe66efW/PM2Vnv9v9zKLBcvkf
EiABEiABEiABWRJQodtvuGGWaeoxg51mNmcgKgbVi/ME1vPQNWJaJLTPaCDvwVzhrgIKcDBTa0lO
rrKeRMg2i2EnBKHq/juv3v+KRQLuKTu74P7vTrOkdrDBEueshpLdlkIcbat65lcxRc8sGOqgEot2
YYyNbU5ys8OF6XWb9wjP3L/I5iqb4EBqZ1TtyndSkE0uA0GbrAa6MJ20gP0lPCYBEiABEiABEgg2
AUfFFmyLxlD+yT3PFJUdv2bBNddgPFbqrxpDhsMv7TledXbOojkOGnN4Km+OsKLg5LRFHJn0hh2v
IQESIAESIAElEAgrxaaEBmMdSYAESIAESIAEFEhg+Dw2BQJglUmABEiABEiABEhA9gSo2GTfRDSQ
BEiABEiABEhA8QSo2BR/CxAACZAACZAACZCA7AlQscm+iWggCZAACZAACZCA4glQsSn+FiAAEiAB
EiABEiAB2ROgYpN9E9FAEiABEiABEiABxROgYlP8LUAAJEACJEACJEACsidAxSb7JqKBJEACJEAC
JEACiidAxab4W4AASIAESIAESIAEZE+Aik32TUQDSYAESIAESIAEFE+Aik3xtwABkAAJkAAJkAAJ
yJ4AFZvsm4gGkgAJkAAJkAAJKJ4AFZvibwECIAESIAESIAESkD0BKjbZNxENJAESIAESIAESUDwB
KjbF3wIEQAIkQAIkQAIkIHsCVGyybyIaSAIkQAIkQAIkoHgCVGyKvwUIgARIgARIgARIQPYEqNhk
30Q0kARIgARIgARIQPEEqNgUfwsQAAmQAAmQAAmQgOwJULHJvoloIAmQAAmQAAmQgOIJULEp/hYg
ABIgARIgARIgAdkToGKTfRPRQBIgARIgARIgAcUToGJT/C1AACRAAiRAAiRAArInQMUm+yaigSRA
AiRAAiRAAoonQMWm+FuAAEiABEiABEiABGRPgIpN9k1EA0mABEiABEiABBRPgIpN8bcAAZAACZAA
CZAACcieABWb7JuIBpIACZAACZAACSieABWb4m8BAiABEiABEiABEpA9ASo22TcRDSQBEiABEiAB
ElA8ASo2xd8CBEACJEACJEACJCB7AlRssm8iGkgCJEACJEACJKB4AlRsir8FCIAESIAESIAESED2
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
RK5CYII=

--_008_1FFB62CE8AEB0D4298B51122D8903E96219BDFE0IRSMSX104gercor_
Content-Type: image/png; name="image004.png"
Content-Description: image004.png
Content-Disposition: inline; filename="image004.png"; size=45612;
	creation-date="Thu, 03 Jul 2014 14:50:06 GMT";
	modification-date="Thu, 03 Jul 2014 14:50:06 GMT"
Content-ID: <image004.png@01CF96E6.9D824B00>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAzQAAAKjCAIAAABEBN1vAAAKyGlDQ1BJQ0MgUHJvZmlsZQAASA2t
lndU08kWx+f3+6UXWkKkE3oTpBNAeg1dOohKSAIJJYZAELChsrgCa0FFBBQFF0UUXJUia0EsWFgU
G/YFWRTU52LBhsr7AUvc987b/97kzMwn37lz5/7m3DnnAkDp4YjF6bACABmibEm4nyczNi6eiX8M
8AAB8mg35nCzxB5hYUHgH9v7OwCaWrxpPuXrH83+94Iij5/FBQAKQ5eTeFncDJSPo/0oVyzJBgAR
oLresmzxFJeiTJegAaK8Z4pTZhi1B/SkGb40bRMZ7oXaPASAQOFwJCkAkEdQnZnDTUH9UAgoW4p4
QhHKLJRduQIOD+VclOdmZCyd4n0oGyf9zU/K35jDSZL55HBSZDzzLehO9GBvYZY4nZM3/ef/OWSk
S9H7mm466EgRSPzD0ZmB3ll12tJAGYuSQkJndSH6RbMskPpHzTI3ywu9y5m9PI534CxL06I8Zpkj
QekvG2E2O3KWJUvDZf5F6SFT+TEdg4DPljE/yydiVk8W+rJnOV8QGTPLOcLokFnOSouQxZAv8JLp
Emm4LOZkia/sGzOy0J1/ncvlfD8rWxDpP6vz+N4+s8wXRcniEWd7yvyI06fzezp+frqfTM/KiZDt
zZZEyvRUTsBUvk7bi7PDZHcCvIEPCEJ/TBAFrIEtsELHYACy+blo3gHgtVScJxGmCLKZHuhL4TPZ
Iq7FXKa1pZUtAFPvbsoGgLd3p98TxCB818ToWY7eaE7XfdeS1ABoQ3NBlfhd098PgHwsAK0FXKkk
Z8YfZmrCAhL6nulAFWgBPWAMzNHI7IEzcEcjDgChIBLEgcWACwQgA0jAMrACrAFFoARsBttBJagB
deAAOAyOgjZwEpwFF8FVcB3cBg/AABgGL8AYeA8mIAjCQ1SIBqlC2pABZAZZQyzIFfKBgqBwKA5K
hFIgESSFVkDroBKoDKqE9kIN0C/QCegsdBnqg+5Bg9Ao9Ab6DCMwBabDmrAhPA9mwR5wIBwJL4JT
4Ew4Hy6EN8IVcC18CG6Fz8JX4dvwAPwCHkcAQkYYiA5ijrAQLyQUiUeSEQmyCilGypFapAnpQLqR
m8gA8hL5hMFhaBgmxhzjjPHHRGG4mEzMKkwpphJzANOKOY+5iRnEjGG+YalYDawZ1gnLxsZiU7DL
sEXYcmw9tgV7AXsbO4x9j8PhGDgjnAPOHxeHS8Utx5XiduGacZ24PtwQbhyPx6vizfAu+FA8B5+N
L8LvxB/Cn8HfwA/jPxLIBG2CNcGXEE8QEdYSygkHCacJNwjPCBNEBaIB0YkYSuQR84ibiPuIHcRr
xGHiBEmRZERyIUWSUklrSBWkJtIF0kPSWzKZrEt2JC8gC8kF5AryEfIl8iD5E0WJYkrxoiRQpJSN
lP2UTso9ylsqlWpIdafGU7OpG6kN1HPUx9SPcjQ5Czm2HE9utVyVXKvcDblX8kR5A3kP+cXy+fLl
8sfkr8m/VCAqGCp4KXAUVilUKZxQ6FcYV6QpWimGKmYolioeVLysOKKEVzJU8lHiKRUq1SmdUxqi
ITQ9mheNS1tH20e7QBum4+hGdDY9lV5CP0zvpY8pKynbKkcr5ypXKZ9SHmAgDEMGm5HO2MQ4yrjD
+DxHc47HHP6cDXOa5tyY80FFXcVdha9SrNKsclvlsypT1Uc1TXWLapvqIzWMmqnaArVlarvVLqi9
VKerO6tz1YvVj6rf14A1TDXCNZZr1Gn0aIxramn6aYo1d2qe03ypxdBy10rV2qZ1WmtUm6btqi3U
3qZ9Rvs5U5npwUxnVjDPM8d0NHT8daQ6e3V6dSZ0jXSjdNfqNus+0iPpsfSS9bbpdemN6WvrB+uv
0G/Uv29ANGAZCAx2GHQbfDA0MowxXG/YZjhipGLENso3ajR6aEw1djPONK41vmWCM2GZpJnsMrlu
CpvamQpMq0yvmcFm9mZCs11mfXOxcx3niubWzu03p5h7mOeYN5oPWjAsgizWWrRZvJqnPy9+3pZ5
3fO+WdpZplvus3xgpWQVYLXWqsPqjbWpNde6yvqWDdXG12a1TbvNa1szW77tbtu7djS7YLv1dl12
X+0d7CX2TfajDvoOiQ7VDv0sOiuMVcq65Ih19HRc7XjS8ZOTvVO201GnP53NndOcDzqPzDeaz5+/
b/6Qi64Lx2Wvy4Ar0zXRdY/rgJuOG8et1u2Ju547z73e/ZmHiUeqxyGPV56WnhLPFs8PXk5eK706
vRFvP+9i714fJZ8on0qfx766vim+jb5jfnZ+y/06/bH+gf5b/PvZmmwuu4E9FuAQsDLgfCAlMCKw
MvBJkGmQJKgjGA4OCN4a/DDEIEQU0hYKQtmhW0MfhRmFZYb9ugC3IGxB1YKn4VbhK8K7I2gRSyIO
RryP9IzcFPkgyjhKGtUVLR+dEN0Q/SHGO6YsZiB2XuzK2KtxanHCuPZ4fHx0fH38+EKfhdsXDifY
JRQl3FlktCh30eXFaovTF59aIr+Es+RYIjYxJvFg4hdOKKeWM57ETqpOGuN6cXdwX/Dcedt4o3wX
fhn/WbJLclnySIpLytaUUYGboFzwUuglrBS+TvVPrUn9kBaatj9tMj0mvTmDkJGYcUKkJEoTnV+q
tTR3aZ/YTFwkHsh0ytyeOSYJlNRnQVmLstqz6WiB0yM1lv4gHcxxzanK+bgsetmxXMVcUW5Pnmne
hrxn+b75Py/HLOcu71qhs2LNisGVHiv3roJWJa3qWq23unD1cIFfwYE1pDVpa35ba7m2bO27dTHr
Ogo1CwsKh37w+6GxSK5IUtS/3nl9zY+YH4U/9m6w2bBzw7diXvGVEsuS8pIvpdzSKz9Z/VTx0+TG
5I29m+w37d6M2yzafGeL25YDZYpl+WVDW4O3tm5jbive9m77ku2Xy23La3aQdkh3DFQEVbTv1N+5
eeeXSkHl7SrPquZqjeoN1R928Xbd2O2+u6lGs6ak5vMe4Z67e/32ttYa1pbX4epy6p7ui97X/TPr
54Z6tfqS+q/7RfsHDoQfON/g0NBwUOPgpka4Udo4eijh0PXD3ofbm8yb9jYzmkuOgCPSI89/Sfzl
ztHAo13HWMeajhscr26htRS3Qq15rWNtgraB9rj2vhMBJ7o6nDtafrX4df9JnZNVp5RPbTpNOl14
evJM/pnxTnHny7MpZ4e6lnQ9OBd77tb5Bed7LwReuHTR9+K5bo/uM5dcLp287HT5xBXWlbar9ldb
e+x6Wn6z+62l17639ZrDtfbrjtc7+ub3nb7hduPsTe+bF2+xb129HXK7707Unbv9Cf0Dd3l3R+6l
33t9P+f+xIOCh9iHxY8UHpU/1nhc+7vJ780D9gOnBr0He55EPHkwxB168UfWH1+GC59Sn5Y/037W
MGI9cnLUd/T684XPh1+IX0y8LPqX4r+qXxm/Ov6n+589Y7Fjw68lryfflL5Vfbv/ne27rvGw8cfv
M95PfCj+qPrxwCfWp+7PMZ+fTSz7gv9S8dXka8e3wG8PJzMmJ8UcCWe6FkDQEU5OBuANWidQ4wCg
XQeAJDdTF09bQDO1PMrQX31K/i+eqZ2nFtAaAtR1AhBZAEAQOu9EZ0O0y7sDEIb2SHcA29jIOphp
Wck21tMEkdvQ0qR8cvItWg/iTQD42j85OdE2Ofm1Hq117gPQ+X6mHp+yVjgEwJ48K9uYoB4vHlrj
/Gf7Nw5X/4qUI9p+AABAAElEQVR4AezdC1xU953w/8PFAXREJJCgUWPApOK2BVutPMlWyW6waaVb
jV1D3KSLJnkq2WeNbWJrLnbdmq6ppg367wq7TYRdG0Py1GhX0lptK/psGtIkgtlGSCKGKCoGogiD
DMPt/z1z4DBzZhgZ5sIAn3nlFc/ld33/zsCX37mF9fT0KHwQQAABBBBAAAEEQkMg3LEZVscVRbEa
1mWLcwLHNdfEjnt9WQ5cyb60yoe81qYmD5ADFjyUPAMWpu+wjjpevWssIIAAAgggMCIF9ODMWpIT
VljZHwBYq4tjNpRpfbL/AjcmcOiuteyZ9IzCSoctflt0bIbfCnVXUKCDlL7yrfvzC0sK78otqXXT
iqbyZ0oqy4vzHcZBS+UB300xsqmvOsNea+X+Z8Iyi7VhttYezEmPiYkJ23Cw1pCOVQQQQAABBBAY
LgE9OIteuqEozqEV0bNze/IzZYO1uiS3sFpRjAnUtL0hQHTG0nWOedVd7j79oZ/HSTjHrHozHDc6
LTuHIY5VOCXTVxxnivry9vWxN5HnQjzsNezSV/vLt1bnF8flbigrzpnpOjPZVFmeNFOprk6aGa03
V1twh29I4rDaX53DRvti9OyMjEW9G63lB5vyK3t6Lvzmx189qDfVmIN1BBBAAAEEEAiugB6cSfQV
XfzMhnU56enrSuRXdW1ZfnqOulB5sPDl4pLKJmOCpvLCDSVl+zesK6u3SpwxMym6dv+GnPz9tbJW
XVZYUpKfm1NSLdnUj7W2rFA2bciUSRpZzs8vOVi8YV1hmaQtK8wNC0uXWk+cMOaSjHozqks2hKXn
5uevy1mXX1KcnxmWU1avOLWhqfKZZ4r3S4Lc/Momq2sbpLT6suLCMpmZ2i/9csyr99G5bWrLHT+O
vbBvd2j8+46dUvvr0Md+w+qysqMnikvKqh1bolXRVH1w3bry+rL84vr6Stmfn7NO+KpLtFFwHh2r
YW9lybqwsJxnNuTkPFMmpfV1x5hMdkXHxSX1nlSNzsjNSZJNcXGLFg0mtJakfBBAAAEEEEAg8AJy
Q4D2aaso2nLkck9PW1Ga8tJHbT1tFfekFbTJetVLBRXyr2xwStD2UcWRioqCNOW5ijZJIy19ZN9H
9qLaXlqU9ty+I/uKthQc6dtyzz32Mi5/dOGy7FXr6WkrUNSK2qoKFj1XIauOuS5XVVVUVFQ5NaNg
0RY1WUHaIvWfI1ueq7js1IaK5xYVSXUVi+7ZN1BpH73092nff6mi6oJavXP77X1U2+DYNkkmn77G
XH6pvxcqiHwcG++Q0bWPvYY9PVX3LCqSzI4t0Uq6fKFiy98XHHlpy5bffGQvuWjRc1Vqem0UDPhV
zntVQ4fE+pA5J1MrUodVbUDfp+3Ic/Zh71vnXwQQQAABBBAYXgGHmTNFSYqT02nRM++6Jy46WqZq
FHXVfu6yd67FKUFteX65NSlzzT2SUP2k/X19fmG1TEnJpFRTXMZdmUtzN9yV1HsS0VpdXa9OosUp
TRc7lBP25ejZj2hn2Ox1OedqUs+YSq3W/mYoWnuio+PU6Z7opJlxSrRjG6JnZ84sLtx/sL6wcKmh
DXppSXc9U5Kj5KZukHY65u2tTbIZ26ZuUicG7Y1x6IXMFmqf3sa7ZHTuo1ZAbxb1H8eW2DdH15eX
1Gcmle+vz5gdrRYucnbZeum4/eM0Osa90gx7IsOQGZOp058yCPqnsqRYydmQGWet7xtifRcLCCCA
AAIIIDAsAg7BWVzcweKSg/sLy2evy0yS84kHXz5aKecoJUT7zh1r9st5TecEEq48np9/sEkp3LT7
rcqDi3JyN6yzpsasK69Vcgpz/ldMWG5urkRv9pghemnxuq9OCcvJWVet3PS3hfsKN+SXlZXsT9qw
VC6xqiw7Wi6lRzvmmjk7PSMjM31mnN6M2urKo9WVtbWV8k9ttWwuPFhefqW/DSX1tdX/cbS2vKys
uHj/QKVV75eAcvaGLeli7dD+kqbePlqXOrWtLyrqbUySQy+0fln1xjtnjHNeVcNKzbC2vPzlo2WV
9VbHlvQOvDVpacbM6IycTDlDLJvk9GPehg3r1hw9UameHHbGN+y1qwhL9ctHD9oT60PmXIiccD6o
Dmu1PbasLsmZe29h8QY5k72hvjfEHpaDkEoRQAABBBBAoF8gTCbu+tfUKSKZW+kNSvq3S4jWu819
gv796jyTPa0kNBbUN42jliuPk5B4w7Ui11z9rVCz9U4nOW3UVsrW5TStK1ajvZLC2ox1d81UU7u0
YaAe6u1WK3Hftt46PTTBkNF5VXOx/7930b11bzXqP8aqnPGNex0yqnn7hsyQzKEBzhlYQwABBBBA
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
6tmUpflWzT0SIAESIAESIAESEAQ2ayquAqPg7HZ40oxmNGoqds3Fu150pJoFh2+64/yHTsHR0DrX
+eKap3JePPK4ejZlaYqquUsCJEACJEACJEACdM78rgFzbKJXu6Sg3M3IEM9w+KYbF1YcOeIpae2l
t+44dV64TTWb4HuWX9VyQktLi7zNjSsSMPb0uAYu9zsJ7YqomIEESIAESEBbBGbPnu0vECNnvkzM
RqPTgpW0c2311R3GW1J8d42Cw2YTzGajIpvj1Lqil3cd+UmGcN7iFJYhsqaaza8037qH91RNNXyY
W74EevoSYpKmG9NVrm/fjNwjARIgARIgAR0QoHOmMFLuY1tT7ysqQuqqp17MNWb47tp2r17T/exr
ZUt8s6WmPri69Z6i22MF55LNu5aZbbuL1LIpS1NUzV0SIAESIAESIAESELh8k9pFMBj4Gjqk2B1K
HoqPDe1PMNtQMfz/WAlw+aaxEmN+EiABEiABLRNg5EzNOp6xAMMHFLvyAUW6Ynes2eT83CABEiAB
EiABEohgApxKI4KNT9VJgARIgARIgAS0R4DOmfZsQolIgARIgARIgAQimACdswg2PlUnARIgARIg
ARLQHgE6Z9qzCSUiARIgARIgARKIYAJ0ziLY+FSdBEiABEiABEhAewTonGnPJpSIBEiABEiABEgg
ggnQOYtg41N1EiABEiABEiAB7RGgc6Y9m1AiEiABEiABEiCBCCZA5yyCjU/VSYAESIAESIAEtEeA
zpn2bEKJSIAESIAESIAEIpgAnbMINj5VJwESIAESIAES0B4BOmfaswklIgESIAESIAESiGACdM4i
2PhUnQRIgARIgARIQHsE6JxpzyaUiARIgARIgARIIIIJ0DmLYONTdRIgARIgARIgAe0RoHOmPZtQ
IhIgARIgARIggQgmQOcsgo1P1UmABEiABEiABLRHgM6Z9mxCiUiABEiABEiABCKYAJ2zCDY+VScB
EiABEiABEtAeATpn2rMJJSIBEiABEiABEohgAnTOItj4VJ0ESIAESIAESEB7BOicac8mlIgESIAE
SIAESCCCCdA5i2DjU3USIAESIAESIAHtEaBzpj2bUCISIAESIAESIIEIJkDnLIKNT9VJgARIgARI
gAS0R4DOmfZsQolIgARIgARIgAQimACdswg2PlUnARIgARIgARLQHgE6Z9qzCSUiARIgARIgARKI
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
gARIgARIgARIQI0AnTM1KkwjARIgARIgARIggRARoHMWIvCslgRIgARIgARIgATUCNA5U6PCNBIg
ARIgARIgARIIEQE6ZyECz2pJgARIgARIgARIQI0AnTM1KkwjARIgARIgARIggRARoHMWIvCslgRI
gARIgARIgATUCNA5U6PCNBIgARIgARIgARIIEQE6ZyECz2pJgARIgARIgARIQI0AnTM1KkwjARIg
ARIgARIggRARoHMWIvCslgRIgARIgARIgATUCNA5U6PCNBIgARIgARIgARIIEQE6ZyECz2pJgARI
gARIgARIQI0AnTM1KkwjARIgARIgARIggRARoHMWIvCslgRIgARIgARIgATUCNA5U6PCNBIgARIg
ARIgARIIEQE6ZyECz2pJgARIgARIgARIQI0AnTM1KkwjARIgARIgARIggRARoHMWIvCslgRIgARI
gARIgATUCNA5U6PCNBIgARIgARIgARIIEQE6ZyECz2pJgARIgARIgARIQI0AnTM1KkwjARIgARIg
ARIggRARoHMWIvCslgRIgARIgARIgATUCNA5U6PCNBIgARIgARIgARIIEQE6ZyECz2pJgARIgARI
gARIQI0AnTM1KkwjARIgARIgARIggRARoHPmB95Wv/vRTQ8/urve5jmk2JWz+6Y7zr+74+FND/94
b4N01lA2ZbrvWUO5+H8SIAESIAESIAESGCRA50xxKdh2r9vSXfzY5pVNWza+7BAUu3JmRfqZLfc8
lnLvU5u/3Lp5414v90yRrjhLLo0bJEACJEACJEACJDBIgM6Z76Vgqz8qrNl887yFtz2+2nbwVKvv
rs328rqi3adsgiKbLfWxPS/evyQjY26Op7ihbIJvuvIs36q5RwIkQAIkQAIkQAKCEEMIvgSMgrPb
4Ukyms2CoNg1F+960ZFqFhzK9HkLzQ0HH928572UNc+ahaFsguCbLvgW7lsz90iABEiABEiABEiA
zpn/NWCOTTR6pSp3MzLEgw5BkY60hWt/cmRtw8NFW9699/fLpGyecobTS37if5Yni/Kfo0ePKpO4
TwIkQAIkQAIkEHYEVq5c6a8TI2e+TMxGo9PSJAi5tvrqDuMtKb67RsFhswlms1GRzXFqXdHLu478
JAORNsGM/waz2U6tW+OVnqgszbfu4T1VUw0f5hYJkAAJkAAJkED4EqBzprBt7mNbU+8rKkLqqqde
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
AAAAAElFTkSuQmCC

--_008_1FFB62CE8AEB0D4298B51122D8903E96219BDFE0IRSMSX104gercor_
Content-Type: image/png; name="image005.png"
Content-Description: image005.png
Content-Disposition: inline; filename="image005.png"; size=48501;
	creation-date="Thu, 03 Jul 2014 14:50:06 GMT";
	modification-date="Thu, 03 Jul 2014 14:50:06 GMT"
Content-ID: <image005.png@01CF96E6.9D824B00>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAz0AAAKtCAIAAACCG5fVAAAKyGlDQ1BJQ0MgUHJvZmlsZQAASA2t
lndU08kWx+f3+6UXWkKkE3oTpBNAeg1dOohKSAIJJYZAELChsrgCa0FFBBQFF0UUXJUia0EsWFgU
G/YFWRTU52LBhsr7AUvc987b/97kzMwn37lz5/7m3DnnAkDp4YjF6bACABmibEm4nyczNi6eiX8M
8AAB8mg35nCzxB5hYUHgH9v7OwCaWrxpPuXrH83+94Iij5/FBQAKQ5eTeFncDJSPo/0oVyzJBgAR
oLresmzxFJeiTJegAaK8Z4pTZhi1B/SkGb40bRMZ7oXaPASAQOFwJCkAkEdQnZnDTUH9UAgoW4p4
QhHKLJRduQIOD+VclOdmZCyd4n0oGyf9zU/K35jDSZL55HBSZDzzLehO9GBvYZY4nZM3/ef/OWSk
S9H7mm466EgRSPzD0ZmB3ll12tJAGYuSQkJndSH6RbMskPpHzTI3ywu9y5m9PI534CxL06I8Zpkj
QekvG2E2O3KWJUvDZf5F6SFT+TEdg4DPljE/yydiVk8W+rJnOV8QGTPLOcLokFnOSouQxZAv8JLp
Emm4LOZkia/sGzOy0J1/ncvlfD8rWxDpP6vz+N4+s8wXRcniEWd7yvyI06fzezp+frqfTM/KiZDt
zZZEyvRUTsBUvk7bi7PDZHcCvIEPCEJ/TBAFrIEtsELHYACy+blo3gHgtVScJxGmCLKZHuhL4TPZ
Iq7FXKa1pZUtAFPvbsoGgLd3p98TxCB818ToWY7eaE7XfdeS1ABoQ3NBlfhd098PgHwsAK0FXKkk
Z8YfZmrCAhL6nulAFWgBPWAMzNHI7IEzcEcjDgChIBLEgcWACwQgA0jAMrACrAFFoARsBttBJagB
deAAOAyOgjZwEpwFF8FVcB3cBg/AABgGL8AYeA8mIAjCQ1SIBqlC2pABZAZZQyzIFfKBgqBwKA5K
hFIgESSFVkDroBKoDKqE9kIN0C/QCegsdBnqg+5Bg9Ao9Ab6DCMwBabDmrAhPA9mwR5wIBwJL4JT
4Ew4Hy6EN8IVcC18CG6Fz8JX4dvwAPwCHkcAQkYYiA5ijrAQLyQUiUeSEQmyCilGypFapAnpQLqR
m8gA8hL5hMFhaBgmxhzjjPHHRGG4mEzMKkwpphJzANOKOY+5iRnEjGG+YalYDawZ1gnLxsZiU7DL
sEXYcmw9tgV7AXsbO4x9j8PhGDgjnAPOHxeHS8Utx5XiduGacZ24PtwQbhyPx6vizfAu+FA8B5+N
L8LvxB/Cn8HfwA/jPxLIBG2CNcGXEE8QEdYSygkHCacJNwjPCBNEBaIB0YkYSuQR84ibiPuIHcRr
xGHiBEmRZERyIUWSUklrSBWkJtIF0kPSWzKZrEt2JC8gC8kF5AryEfIl8iD5E0WJYkrxoiRQpJSN
lP2UTso9ylsqlWpIdafGU7OpG6kN1HPUx9SPcjQ5Czm2HE9utVyVXKvcDblX8kR5A3kP+cXy+fLl
8sfkr8m/VCAqGCp4KXAUVilUKZxQ6FcYV6QpWimGKmYolioeVLysOKKEVzJU8lHiKRUq1SmdUxqi
ITQ9mheNS1tH20e7QBum4+hGdDY9lV5CP0zvpY8pKynbKkcr5ypXKZ9SHmAgDEMGm5HO2MQ4yrjD
+DxHc47HHP6cDXOa5tyY80FFXcVdha9SrNKsclvlsypT1Uc1TXWLapvqIzWMmqnaArVlarvVLqi9
VKerO6tz1YvVj6rf14A1TDXCNZZr1Gn0aIxramn6aYo1d2qe03ypxdBy10rV2qZ1WmtUm6btqi3U
3qZ9Rvs5U5npwUxnVjDPM8d0NHT8daQ6e3V6dSZ0jXSjdNfqNus+0iPpsfSS9bbpdemN6WvrB+uv
0G/Uv29ANGAZCAx2GHQbfDA0MowxXG/YZjhipGLENso3ajR6aEw1djPONK41vmWCM2GZpJnsMrlu
CpvamQpMq0yvmcFm9mZCs11mfXOxcx3niubWzu03p5h7mOeYN5oPWjAsgizWWrRZvJqnPy9+3pZ5
3fO+WdpZplvus3xgpWQVYLXWqsPqjbWpNde6yvqWDdXG12a1TbvNa1szW77tbtu7djS7YLv1dl12
X+0d7CX2TfajDvoOiQ7VDv0sOiuMVcq65Ih19HRc7XjS8ZOTvVO201GnP53NndOcDzqPzDeaz5+/
b/6Qi64Lx2Wvy4Ar0zXRdY/rgJuOG8et1u2Ju547z73e/ZmHiUeqxyGPV56WnhLPFs8PXk5eK706
vRFvP+9i714fJZ8on0qfx766vim+jb5jfnZ+y/06/bH+gf5b/PvZmmwuu4E9FuAQsDLgfCAlMCKw
MvBJkGmQJKgjGA4OCN4a/DDEIEQU0hYKQtmhW0MfhRmFZYb9ugC3IGxB1YKn4VbhK8K7I2gRSyIO
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
AdsacVa0hTt8ycb9XcnJy2OjWpi0yyWOYSxHetciRrWFChssrv70yjXmovqspWknjqetWnKCLv1a
frBUcNJzKP9OakpqFFOyMTncTNe59d89uPMqnTXduPJkSwuz/+KN5e+n2rNaoqEIlT1Mk3ZkZ3Jy
XFQUE55WWDLYfUNFD+U8xqVwri3m00uWNF68sW9J3MHjK1ctibM35aLgpOdQMRSqLd2cxpyLphO9
FOFF3r3CNqX6VXtTVl6sLnqfyyqO7RVqi0azdP/+E8lxdGVcS1pheXR9qXP6E47RxKEiRrXkeJOb
q1cu3VpU/f7SuI3H07YuYd9hzMGLpfzbZyhzl8+LOiHtdfMqe02Z/b8qDTdXL7dntYQ+QfbD6ET5
/q60uOX0pg0vLC+pL9n9Dm1/dSPbi8v3V5/ePPjOGCpjVEuOd+xYPiyPJK9KZAuvPnkkPDWO3nUn
uM+d8j4sjDr1yNZVq+L205ty5RH6fNWfWK7QD0u0+gv7d9/l3mErj1xO1phPxNk/dwr9sLQMfliO
XB7+wxI+X7OGHaE2341dmZQquLZvVB+RoYNcPiz0GWyu7oxb6eYTzx0l198sg23CvLtDnYsleQrQ
n0gaLuqipaEqDm4b2uDN0lCe3hw19rR8uVOoKezQBi8z1l6hkME3cQ1foxEs8L3i1BRPVWGb7LGm
wyYYQbVGk8T7pgxfylCew6f1ZQq+XBaTf3liZxN62s/2r8f9fCk+XhgqV9gWT1UZSVM8t9XHTXBk
574pnqoi26Y4mkSB4kjfYUOHSCwN8Ugk8MlmxG0+YUQm4y9grt+fte9mWFQYW1RXS1fs/qJ9juvT
xr90n5ZAl1Zk7Ts72BSmqyt6Y9E+t5fH+rTU8cmM7j3cd/ZmVBjbLV1dLbEb9+9L890fyuNTZ4lc
zZf37/7FTcbeFPYdtnF/UZpi32H4sEj08mRuxodlMvWlylbgbxbEbVKdie0QgAAEIAABCEBAXgK4
L0Fe/YHaQAACEIAABCAAASkBxG1SMtgOAQhAAAIQgAAE5CWAuE1e/YHaQAACEIAABCAAASkBxG1S
MtgOAQhAAAIQgAAE5CWAuE1e/YHaQAACEIAABCAAASkBxG1SMtgOAQhAAAIQgAAE5CWAuE1e/YHa
QAACEIAABCAAASkBxG1SMtgOAQhAAAIQgAAE5CWAuE1e/YHaQAACEIAABCAAASkBxG1SMtgOAQhA
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

--_008_1FFB62CE8AEB0D4298B51122D8903E96219BDFE0IRSMSX104gercor_--
