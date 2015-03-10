Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C223BE00754; Tue, 10 Mar 2015 12:41:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4402AE006E9
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 12:40:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Mar 2015 12:40:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,376,1422950400"; 
	d="jpg'145?scan'145,208,217,145";a="689996566"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
	by fmsmga002.fm.intel.com with ESMTP; 10 Mar 2015 12:40:51 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.236]) by
	irsmsx105.ger.corp.intel.com ([169.254.7.117]) with mapi id
	14.03.0195.001; Tue, 10 Mar 2015 19:40:50 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Full Pass Test Report 1.8_M3.rc3
Thread-Index: AdBbZvBBvQB5ItreRxCLJ8InGs5ALQAAknBw
Date: Tue, 10 Mar 2015 19:40:49 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E962249D9A1@irsmsx110.ger.corp.intel.com>
References: <1FFB62CE8AEB0D4298B51122D8903E962249C92D@irsmsx110.ger.corp.intel.com>
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E962249C92D@irsmsx110.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Yocto Full Pass Test Report 1.8_M3.rc3
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
X-List-Received-Date: Tue, 10 Mar 2015 19:41:02 -0000
X-Groupsio-MsgNum: 23946
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_1FFB62CE8AEB0D4298B51122D8903E962249D9A1irsmsx110gercor_";
	type="multipart/alternative"

--_004_1FFB62CE8AEB0D4298B51122D8903E962249D9A1irsmsx110gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E962249D9A1irsmsx110gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E962249D9A1irsmsx110gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the full pass of Yocto 1.8_M3.rc3.
The detailed Full Pass test report if available here: https://wiki.yoctopro=
ject.org/wiki/WW10_-_2015-03-03_-_Full_Pass_1.8_M3.rc3.
Bellow you can see the testind data and summary report.


Testing data

 Test type:  Full Pass Release Test

 Branch: master

 Build name: 1.8_M3.rc3

 poky commit: 5c1c8af083ca7b57cc339d16ce0513b27c5dac90

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rel=
eases/yocto-1.8_M3.rc3

 Distributions tested: Ubuntu 14.10 64bit, Fedora 21 64bit, Opensuse 13.2 6=
4bit, CentOS 7 64 bit


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

3541<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3541> 3542<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3542>

ADT: master branch

Fedora 21 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

3537<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3537> 3540<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3540>

ADT: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3545<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3545> 3546<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3546>

BSP/QEMU: master branch

Beaglebone Black

98.7%

7390<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7390>

1.3%

6665<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6665>

0.0%

none

100.0%

3530<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3530> 3531<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3531>

BSP/QEMU: master branch

EdgeRouter

100.0%

none

0.0%

none

0.0%

none

100.0%

3549<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3549> 3550<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3550>

BSP/QEMU: master branch

generic-x86 on AtomPC

97.6%

none

2.4%

7416<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7416>

0.0%

none

100.0%

3543<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3543>

BSP/QEMU: master branch

genericx86-64 on NUC

97.7%

7397<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7397>

2.3%

6584<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6584> 7397<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7397>

0.0%

none

100.0%

3544<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3544>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

100.0%

none

0.0%

none

0.0%

none

100.0%

3532<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3532> 3533<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3533>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

3547<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3547> 3548<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3548>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

3526<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3526> 3529<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3529>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

3551<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3551> 3552<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3552>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

3553<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3553> 3554<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3554>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

3555<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3555> 3556<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3556>

BSP/QEMU: master branch

qemuppc

100.0%

7236<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236>

0.0%

none

0.0%

none

100.0%

3527<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3527> 3528<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3528>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

3517<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3517>

Eclipse Plugin: master branch

Ubuntu 14.04 x86_64

97.0%

none

3.0%

7054<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054>

0.0%

none

100.0%

3536<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3536> 3538<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3538>

Meta-yocto: master branch

Ubuntu 14.04 x86_64

86.7%

none

13.3%

7391<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7391> 7401<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7401>

0.0%

none

100.0%

3534<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3534> 3535<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3535>

Hob: master branch

Fedora 19 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3519<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3519> 3521<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3521>

Toaster: master branch

Fedora 20 x86_64

90.1%

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>

8.5%

6832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6832> 7200<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7200> 7201<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D7201> 7198<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D7198>

1.4%

none

100.0%

3520<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3520> 3525<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3525>

Toaster: master branch

Ubuntu 14.04 LTS x86_64

93.3%

none

6.7%

7371<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7371> 7026<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7026> 7025<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D7025>

0.0%

none

100.0%

3515<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3515> 3516<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3516>

OE-Core: master branch

Ubuntu 14.10 x86_64

93.1%

none

6.9%

7393<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7393> 7392<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7392>

0.0%

none

100.0%

3523<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3523> 3524<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3524>

BitBake: master branch

Ubuntu 14.10 x86_64

97.4%

none

0.0%

none

2.6%

none

100.0%

3518<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3518>

Runtime: master branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

3539<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3539>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 23




Test Case Status Report

Status

Count

BLOCKED

2

FAILED

20

PASSED

1247

Total: 1269


[http://chart.apis.google.com/chart?cht=3Dbvg&chs=3D372x120&chbh=3Da&chds=
=3D0,1247&chxt=3Dy&chxr=3D0,0,1247,208&chd=3Dt:&chd=3Dt:2,20,1247&chco=3DFF=
FF66|FF9933|00FF00&chdl=3DBLOCKED(2)+0%25|FAILED(20)+2%25|PASSED(1247)+98%2=
5]




Bugs Found during QA Test
New or notable issues Found during QA Test & Community
ID

Summary (10 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.c=
gi?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D7391&field0-0-1=3Db=
ug_id&type0-0-1=3Dequals&value0-0-1=3D%207392&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%207393&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%207246&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%207172=
&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%206571&field0-0-6=3Db=
ug_id&type0-0-6=3Dequals&value0-0-6=3D%207354&field0-0-7=3Dbug_id&type0-0-7=
=3Dequals&value0-0-7=3D%207401&field0-0-8=3Dbug_id&type0-0-8=3Dequals&value=
0-0-8=3D%206665&field0-0-9=3Dbug_id&type0-0-9=3Dequals&value0-0-9=3D%207390=
&field0-1-0=3Dbug_status&type0-1-0=3Dnotequals&value0-1-0=3DCLOSED>

P

Assignee

QA

Milestone

Status

cf_regression_type

Created

OE-Core

7390<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7390>

neard can not startup with 1.8 M3 rc3

Medium

Cristian Iorga

Yi Zhao

1.8 M4

NEEDINFO

Regression (Used to work)

2015-03-04

6665<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6665>

[Beaglebone] Xserver segmentation fault when reboot the system

Medium

Ross Burton



1.8 M3

RESOLVED

Regression (Found by QA test)

2014-08-28

7393<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7393>

systemd - check failed services - failed for systemd-tmpfiles-setup.service

Medium+

Randy Witt

Ionut Chisanovici

1.8 M4

ACCEPTED

Regression (Used to work)

2015-03-04

6571<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6571>

do_rootfs failure when using RPM, during createrepo step

Medium+

Chong Lu



1.8 M3

NEW

Regression (Used to work)

2014-07-24

7391<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7391>

yocto-bsp-tool: can not create qemu BSP

Medium+

Tom Zanussi

Yi Zhao

1.8 M4

ACCEPTED

Regression (Used to work)

2015-03-04

7354<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7354>

CONFIG_PCI_GOANY enabled in config but not enabled in build

Medium+

Bruce Ashfield



1.8

IN PROGRESS IMPLEMENTATION

Unknown (Hard to categorize)

2015-02-24

7392<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7392>

btrfs format image missing rootfs

Medium+

Saul Wold

Ionut Chisanovici

1.8 M4

RESOLVED

Regression (Used to work)

2015-03-04

Runtime

7401<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7401>

Crosstap fails when running on qemuarm/qemupcc

Medium+

Saul Wold



1.8 M4

RESOLVED

Regression (Used to work)

2015-03-05

Toaster

7172<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7172>

In managed mode, recipes and packages information shows layer unknown

Medium+

Alexandru Damian

Ionut Chisanovici

1.8 M3

IN PROGRESS REVIEW

New (Never tested)

2015-01-16

7246<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7246>

Hardcoded variables in /configuration page

Medium+

David Reyna

Mihail Stanciu

1.8 M3

IN PROGRESS REVIEW

New (Never tested)

2015-01-23




Other Bugs found during QA Test (including regressions)
ID

Summary (16 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.c=
gi?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D5187&field0-0-1=3Db=
ug_id&type0-0-1=3Dequals&value0-0-1=3D%206584&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%206832&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%207025&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%207026=
&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%207054&field0-0-6=3Db=
ug_id&type0-0-6=3Dequals&value0-0-6=3D%207198&field0-0-7=3Dbug_id&type0-0-7=
=3Dequals&value0-0-7=3D%207200&field0-0-8=3Dbug_id&type0-0-8=3Dequals&value=
0-0-8=3D%207201&field0-0-9=3Dbug_id&type0-0-9=3Dequals&value0-0-9=3D%207236=
&field0-0-10=3Dbug_id&type0-0-10=3Dequals&value0-0-10=3D%207371&field0-0-11=
=3Dbug_id&type0-0-11=3Dequals&value0-0-11=3D%207397&field0-0-12=3Dbug_id&ty=
pe0-0-12=3Dequals&value0-0-12=3D%207416&field0-0-13=3Dbug_id&type0-0-13=3De=
quals&value0-0-13=3D%206474&field0-0-14=3Dbug_id&type0-0-14=3Dequals&value0=
-0-14=3D%201989&field0-0-15=3Dbug_id&type0-0-15=3Dequals&value0-0-15=3D%204=
872&field0-1-0=3Dbug_status&type0-1-0=3Dnotequals&value0-1-0=3DCLOSED>

P

Assignee

QA

Milestone

Status

cf_regression_type

Created

---

4872<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4872>

Do smart install and remove more times will occur Segmentation fault

Medium+

Mark Hatle

Yi Zhao

1.8 M3

NEW

---

2013-07-19

Toaster

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>

same cooker log file name used for several builds

Medium

Richard Purdie



1.8

ACCEPTED

---

2013-09-13

New (Never tested)

6832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6832>

disk_io value in database doesn't match sometime with the value in the task=
 buildstats file

Medium

Alexandru Damian

Ionut Chisanovici

1.8 M3

REOPENED

New (Never tested)

2014-10-14

7025<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7025>

View all targets: graphical overlap in table

Medium

Belen Barros Pena

Mihail Stanciu

1.8 M3

NEW

New (Never tested)

2014-12-03

7026<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7026>

All layers page: Sorting does not work

Medium

Michael Wood

Mihail Stanciu

1.8

REOPENED

New (Never tested)

2014-12-03

7371<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7371>

Toaster managed mode: configuration variables page allows empty inputs into=
 database

Medium

David Reyna

Ionut Chisanovici

1.8 M4

IN PROGRESS REVIEW

New (Never tested)

2015-02-26

Regression (Found by QA test)

6584<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6584>

genericx86-64 on Sugarbay dmesg uvesafb: probe of uvesafb.0 failed with err=
or -22

Medium

Saul Wold



1.8 M4

NEW

Regression (Found by QA test)

2014-07-28

Regression (Used to work)

7397<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7397>

[NUC][genericx86-64] Xorg log (auto) - Open ACPI failed

Medium

Lucian Musat

Alexandru Georgescu

1.8 M4

NEW

Regression (Used to work)

2015-03-05

BSPs

7416<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7416>

[Test Case 1059] Check logs for errors and failures (auto)

Undecided

Saul Wold

Lucian Musat

---

NEW

Regression (Used to work)

2015-03-06

OE-Core

7054<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054>

OprofileUI needs to be updated to reflect new oprofile functionality

Medium

Tom Zanussi

Mihail Stanciu

1.8 M3

ACCEPTED

Regression (Used to work)

2014-12-09

System Startup

7236<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236>

The color of splash screen for qemuppc is strange

Medium

Saul Wold

Yi Zhao

1.8

NEW

Regression (Used to work)

2015-01-23

Toaster

7201<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7201>

elapsed_time value in task table doesn't match sometime the value in the ta=
sk stats file

Medium

Alexandru Damian

Ionut Chisanovici

1.8 M3

NEW

Regression (Used to work)

2015-01-20

7198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198>

Hiding a sorted column does not revert to default sorting

Medium

Michael Wood

Mihail Stanciu

1.8 M4

NEW

Regression (Used to work)

2015-01-20

7200<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7200>

cpu_usage value for some tasks doesn't match the value in the stats file

Medium

Alexandru Damian

Ionut Chisanovici

1.8 M3

NEW

Regression (Used to work)

2015-01-20

Unknown (Hard to categorize)

1989<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1989>

Default module selections need attention

Medium+

Bruce Ashfield



1.8 M3

IN PROGRESS IMPLEMENTATION

Unknown (Hard to categorize)

2012-02-16

BSPs

6474<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6474>

genericx86 does not work on Emenlow hardware

Medium+

Darren Hart



1.8

ACCEPTED

Unknown (Hard to categorize)

2014-06-23


Bug Trend

An overview of this week's Yocto Bug Trend<https://wiki.yoctoproject.org/wi=
ki/Yocto_Bug_Trend> charts can be accessed on the following page<https://wi=
ki.yoctoproject.org/charts/combo.html>



Build Performance Test

Detailed description on how performance test are run can be found on Perfor=
mance Test<https://wiki.yoctoproject.org/wiki/Performance_Test> wiki. The b=
elow charts are displaying the build performance trend for 1.8 by milestone=
 starting 1.6 on Master. The charts by Milestone can be accessed at thislin=
k<https://wiki.yoctoproject.org/charts/perf_milestone/performance_test.html=
> where you can view more detailed information or by clicking on the images=
 which will open a new window with the interactive chart.

Overall we can see a fairly stable trend when building the rootfs and small=
 increase when building the kernel. On the other side, the latest changes t=
hat went in showed ups and downs when building the core-image-sato with rm-=
work. We expect this to be stabilised during M4. The current trends are ava=
ilable here<https://wiki.yoctoproject.org/wiki/WW10_-_2015-03-03_-_Full_Pas=
s_1.8_M3.rc3#Performance_Charts>.



Distro Testing

Distro Testing is intended to catch bugs that are distribution specific usi=
ng the yocto-autobuilder. The tests are all run on identical hardware and w=
ith all OS-es updated. The distributions used will be Fedora, Ubuntu, CentO=
S, OpenSuse with their latest update. More details on the coverage for the =
Distro testing is available here at Distribution_Support#Distro_Testing<htt=
ps://wiki.yoctoproject.org/wiki/Distribution_Support#Distro_Testing> wiki.

At this point all buildsets are fine excepting systemd that was observed wh=
en running nightly-qa-systemd buildest; see bug 7393<https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D7393> for details. The distro report is avail=
able here<https://wiki.yoctoproject.org/wiki/WW10_-_2015-03-03_-_Full_Pass_=
1.8_M3.rc3#Distro_Testing>.
Regards,
Alex

--_000_1FFB62CE8AEB0D4298B51122D8903E962249D9A1irsmsx110gercor_
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
	{font-family:"MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:JA;}
h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:24.0pt;
	font-family:"Times New Roman",serif;
	mso-fareast-language:JA;
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
	mso-fareast-language:JA;
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
	font-family:"Times New Roman",serif;
	mso-fareast-language:JA;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	mso-fareast-language:JA;}
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
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.EmailStyle25
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">Here is the full pass of Yocto 1.8_M3.rc3.<o:p></o:p=
></p>
<p class=3D"MsoNormal">The detailed Full Pass test report if available here=
: <a href=3D"https://wiki.yoctoproject.org/wiki/WW10_-_2015-03-03_-_Full_Pa=
ss_1.8_M3.rc3">
https://wiki.yoctoproject.org/wiki/WW10_-_2015-03-03_-_Full_Pass_1.8_M3.rc3=
</a>. <o:p>
</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Bellow you can see the=
 testind data and summary report.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">Testing data</spa=
n></span><span style=3D"font-size:18.0pt;font-family:&quot;Arial&quot;,sans=
-serif;color:black;font-weight:normal"><o:p></o:p></span></h1>
</div>
<div style=3D"border:dashed #2F6FAB 1.0pt;padding:12.0pt 12.0pt 12.0pt 12.0=
pt">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;orphans: auto;text-alig=
n:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px"><span=
 style=3D"color:black"> Test type:&nbsp; Full Pass Release Test<o:p></o:p><=
/span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Build name: 1.8_M3.rc3<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> poky commit: 5c1c8af083ca7b57cc339d16ce0513b27c5dac90 <o:p></o:p></s=
pan></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack">&nbsp;Autobuilder images repository: <a href=3D"http://autobuilder.yo=
ctoproject.org/pub/releases/yocto-1.8_M3.rc3">http://autobuilder.yoctoproje=
ct.org/pub/releases/yocto-1.8_M3.rc3</a><o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Distributions tested: Ubuntu 14.10 64bit, Fedora 21 64bit, Opensuse =
13.2 64bit, CentOS 7 64 bit <o:p></o:p></span></pre>
</div>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;overflow:hidden;wo=
rd-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;font-weight:normal"><o:p>&nbsp;</o:p></span></spa=
n></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">Test Run Summary =
Report</span></span><o:p></o:p></h1>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0" align=3D"left" style=3D"background:white;margin-left:7.5pt;margin-ri=
ght:7.5pt;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-w=
idth: 0px;word-spacing:0px">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"949" style=3D"width:474.5pt;background:#EEEEEE;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:10.95pt">
<td width=3D"949" style=3D"width:474.5pt;border:solid #AAAAAA 1.0pt;backgro=
und:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Testing Summary Report</span></b><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,serif"><=
o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:459.5pt">
<td width=3D"949" style=3D"width:474.5pt;border:solid #AAAAAA 1.0pt;border-=
top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:459.5pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"913" style=3D"width:456.5pt;margin-left:7.7pt;background:#E=
EEEEE;border-collapse:collapse">
<tbody>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Test Run<o:p></o:p></span></b></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border:solid #AAAAAA 1.0pt;border-=
left:none;background:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Test Plan<o:p></o:p></span></b></p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border:solid #AAAAAA 1.0pt;border-l=
eft:none;background:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt"=
>
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Environment<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Passed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Other issues<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Failed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Failing bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Blocked<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Blocking bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Complete<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3541"><span style=3D"color:#5A3696">3541</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3542"><span style=3D"color=
:#5A3696">3542</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2=
.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.=
4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Fedora 21 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3537"><span style=3D"color:#5A3696">3537</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3540"><span style=3D"color=
:#5A3696">3540</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgroun=
d:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;background=
:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3545"><span style=3D"color:#5A3696">3545</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3546"><span style=3D"color=
:#5A3696">3546</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2=
.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.=
4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Beaglebone Black<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">98.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D7390"><span style=3D"color:#5A3696">7390</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">1.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D6665"><span style=3D"color:#5A3696">6665</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3530"><span style=3D"color:#5A3696">3530</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3531"><span style=3D"color=
:#5A3696">3531</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgroun=
d:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;background=
:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">EdgeRouter<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3549"><span style=3D"color:#5A3696">3549</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3550"><span style=3D"color=
:#5A3696">3550</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2=
.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.=
4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">generic-x86 on AtomPC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">97.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">2.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D7416"><span style=3D"color:#5A3696">7416</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3543"><span style=3D"color:#5A3696">3543</span><=
/a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgroun=
d:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;background=
:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">genericx86-64 on NUC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">97.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D7397"><span style=3D"color:#5A3696">7397</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">2.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D6584"><span style=3D"color:#5A3696">6584</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D7397"><span style=3D"color:#5A3696">7397=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3544"><span style=3D"color:#5A3696">3544</span><=
/a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2=
.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.=
4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">genericx86-64 on Sugarbay<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3532"><span style=3D"color:#5A3696">3532</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3533"><span style=3D"color=
:#5A3696">3533</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgroun=
d:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;background=
:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">MPC8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3547"><span style=3D"color:#5A3696">3547</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3548"><span style=3D"color=
:#5A3696">3548</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2=
.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.=
4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">P1022ds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3526"><span style=3D"color:#5A3696">3526</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3529"><span style=3D"color=
:#5A3696">3529</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgroun=
d:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;background=
:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">qemu-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3551"><span style=3D"color:#5A3696">3551</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3552"><span style=3D"color=
:#5A3696">3552</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2=
.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.=
4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3553"><span style=3D"color:#5A3696">3553</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3554"><span style=3D"color=
:#5A3696">3554</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgroun=
d:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;background=
:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3555"><span style=3D"color:#5A3696">3555</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3556"><span style=3D"color=
:#5A3696">3556</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2=
.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.=
4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D7236"><span style=3D"color:#5A3696">7236</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3527"><span style=3D"color:#5A3696">3527</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3528"><span style=3D"color=
:#5A3696">3528</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgroun=
d:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;background=
:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3517"><span style=3D"color:#5A3696">3517</span><=
/a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2=
.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Eclipse Plugin: master branch<o:p></o:p></s=
pan></p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.=
4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">97.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">3.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D7054"><span style=3D"color:#5A3696">7054</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3536"><span style=3D"color:#5A3696">3536</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3538"><span style=3D"color=
:#5A3696">3538</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgroun=
d:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Meta-yocto: master branch<o:p></o:p></span>=
</p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;background=
:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt;color:black">86.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">13.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D7391"><span style=3D"color:#5A3696">7391</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D7401"><span style=3D"color:#5A3696">7401=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3534"><span style=3D"color:#5A3696">3534</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3535"><span style=3D"color=
:#5A3696">3535</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2=
.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Hob: master branch<o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.=
4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Fedora 19 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3519"><span style=3D"color:#5A3696">3519</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3521"><span style=3D"color=
:#5A3696">3521</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgroun=
d:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Toaster: master branch<o:p></o:p></span></p=
>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;background=
:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Fedora 20 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">90.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5187"><span style=3D"color:#5A3696">5187</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">8.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D6832"><span style=3D"color:#5A3696">6832</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D7200"><span style=3D"color:#5A3696">7200=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7201"><span style=3D"colo=
r:#5A3696">7201</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198"><spa=
n style=3D"color:#5A3696">7198</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3520"><span style=3D"color:#5A3696">3520</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3525"><span style=3D"color=
:#5A3696">3525</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2=
.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Toaster: master branch<o:p></o:p></span></p=
>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.=
4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Ubuntu 14.04 LTS x86_64<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">93.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">6.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D7371"><span style=3D"color:#5A3696">7371</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D7026"><span style=3D"color:#5A3696">7026=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7025"><span style=3D"colo=
r:#5A3696">7025</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3515"><span style=3D"color:#5A3696">3515</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3516"><span style=3D"color=
:#5A3696">3516</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgroun=
d:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">OE-Core: master branch<o:p></o:p></span></p=
>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;background=
:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Ubuntu 14.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">93.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">6.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D7393"><span style=3D"color:#5A3696">7393</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D7392"><span style=3D"color:#5A3696">7392=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3523"><span style=3D"color:#5A3696">3523</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3524"><span style=3D"color=
:#5A3696">3524</span></a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2=
.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BitBake: master branch<o:p></o:p></span></p=
>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.=
4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Ubuntu 14.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">97.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">2.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3518"><span style=3D"color:#5A3696">3518</span><=
/a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgroun=
d:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Runtime: master branch<o:p></o:p></span></p=
>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;background=
:#DDDDDD;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Multiple Environments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D3539"><span style=3D"color:#5A3696">3539</span><=
/a><o:p></o:p></span></p>
</td>
<td width=3D"160" style=3D"width:79.85pt;border-top:none;border-left:none;b=
order-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2=
.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">Build Appliance: master branch<o:p></o:p></=
span></p>
</td>
<td width=3D"57" style=3D"width:28.25pt;border-top:none;border-left:none;bo=
rder-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.=
4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">qemu-kvm on Ubuntu 12.04 libvirt<o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt;heigh=
t:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:10.95pt">
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt;height:10.95pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<b><span style=3D"font-size:9.5pt">Total: 23</span></b><span style=3D"font-=
size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:18.0pt;mso-element:frame;mso-element-frame-hspac=
e:9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-e=
lement-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse">
<tbody>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Test Case Status Report</span></b><b><sp=
an style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,serif">=
<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Status<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;mso-elem=
ent:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-elemen=
t-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly">
<b><span style=3D"font-size:9.5pt">Count<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">BLOCKED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">2<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">20<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt">1247<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<b><span style=3D"font-size:9.5pt">Total: 1269</span></b><span style=3D"fon=
t-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.5pt"><img border=3D"0" width=3D"558" height=3D"1=
80" id=3D"_x0000_i1049" src=3D"cid:image002.jpg@01D05B77.B3F4B8E0" alt=3D"h=
ttp://chart.apis.google.com/chart?cht=3Dbvg&amp;chs=3D372x120&amp;chbh=3Da&=
amp;chds=3D0,1247&amp;chxt=3Dy&amp;chxr=3D0,0,1247,208&amp;chd=3Dt:&amp;chd=
=3Dt:2,20,1247&amp;chco=3DFFFF66|FF9933|00FF00&amp;chdl=3DBLOCKED(2)&#43;0%=
25|FAILED(20)&#43;2%25|PASSED(1247)&#43;98%25"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:12.0pt;font-family:&quot;MS PGothic&quot;,sans-ser=
if"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:12.0pt;=
margin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-alig=
n:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black"><br clear=3D"all">
<o:p></o:p></span></p>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;overflow:hidden;wo=
rd-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">Bugs Found during=
 QA Test</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;font-weight:normal"><o:p></o:p></span></h1>
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;overflow:hidden;wo=
rd-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:red;font-weight:normal">New or notable issu=
es Found during QA Test &amp; Community</span></span><span style=3D"font-si=
ze:14.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;font-weight:=
normal"><o:p></o:p></span></h2>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:white;border-collapse:collapse;border-radius: 8p=
x;border-spacing: 0px;orphans: auto;text-align:start;widows: auto;-webkit-t=
ext-stroke-width: 0px;word-spacing:0px">
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
-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;value0-0-0=3D7391&amp;field0-0-1=
=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0-0-1=3D%207392&amp;field0-0-2=3D=
bug_id&amp;type0-0-2=3Dequals&amp;value0-0-2=3D%207393&amp;field0-0-3=3Dbug=
_id&amp;type0-0-3=3Dequals&amp;value0-0-3=3D%207246&amp;field0-0-4=3Dbug_id=
&amp;type0-0-4=3Dequals&amp;value0-0-4=3D%207172&amp;field0-0-5=3Dbug_id&am=
p;type0-0-5=3Dequals&amp;value0-0-5=3D%206571&amp;field0-0-6=3Dbug_id&amp;t=
ype0-0-6=3Dequals&amp;value0-0-6=3D%207354&amp;field0-0-7=3Dbug_id&amp;type=
0-0-7=3Dequals&amp;value0-0-7=3D%207401&amp;field0-0-8=3Dbug_id&amp;type0-0=
-8=3Dequals&amp;value0-0-8=3D%206665&amp;field0-0-9=3Dbug_id&amp;type0-0-9=
=3Dequals&amp;value0-0-9=3D%207390&amp;field0-1-0=3Dbug_status&amp;type0-1-=
0=3Dnotequals&amp;value0-1-0=3DCLOSED"><span style=3D"font-family:&quot;Cam=
bria Math&quot;,serif;color:#3366BB">=1B$B"M=1B(B</span></a><o:p></o:p></sp=
an></b></p>
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
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#555555">OE-Core<=
o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7390" title=3D"bugzilla:7=
390"><span style=3D"color:#3366BB">7390</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">neard can not=
 startup with 1.8 M3 rc3<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Cristian&nbsp=
;Iorga<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Yi&nbsp;Zhao<=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8 M4<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEEDINFO<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-03-04<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6665" title=3D"bugzill=
a:6665"><span style=3D"color:#3366BB">6665</span></a><o:p></o:p></span></i>=
</p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">[Beaglebon=
e] Xserver segmentation fault when reboot the system<o:p></o:p></span></i><=
/p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Ross&nbsp;=
Burton<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8 M3<o:p=
></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">RESOLVED<o=
:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression=
 (Found by QA test)<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2014-08-28=
<o:p></o:p></span></i></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7393" title=3D"bugzilla=
:7393"><span style=3D"color:#3366BB">7393</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">systemd - c=
heck failed services - failed for systemd-tmpfiles-setup.service<o:p></o:p>=
</span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Randy&nbsp;=
Witt<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Ionut&nbsp;=
Chisanovici<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">1.8 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">ACCEPTED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-03-04<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6571" title=3D"bugz=
illa:6571"><span style=3D"color:#3366BB">6571</span></a><o:p></o:p></span><=
/b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">do_rootf=
s failure when using RPM, during createrepo step<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#=
43;<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Chong&nb=
sp;Lu<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">1.8 M3<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p>=
</o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regressi=
on (Used to work)<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2014-07-=
24<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7391" title=3D"bugzilla=
:7391"><span style=3D"color:#3366BB">7391</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">yocto-bsp-t=
ool: can not create qemu BSP<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Tom&nbsp;Za=
nussi<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">1.8 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">ACCEPTED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-03-04<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7354" title=3D"bugzilla=
:7354"><span style=3D"color:#3366BB">7354</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">CONFIG_PCI_=
GOANY enabled in config but not enabled in build<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Bruce&nbsp;=
Ashfield<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">1.8<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGRESS=
 IMPLEMENTATION<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Unknown (Ha=
rd to categorize)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-02-24<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7392" title=3D"bugz=
illa:7392"><span style=3D"color:#3366BB">7392</span></a><o:p></o:p></span><=
/i></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">btrfs fo=
rmat image missing rootfs<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#=
43;<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Saul&nbs=
p;Wold<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Ionut&nb=
sp;Chisanovici<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">1.8 M4<o=
:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">RESOLVED=
<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regressi=
on (Used to work)<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-03-=
04<o:p></o:p></span></i></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#555555">Runtime<=
o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7401" title=3D"bugz=
illa:7401"><span style=3D"color:#3366BB">7401</span></a><o:p></o:p></span><=
/i></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Crosstap=
 fails when running on qemuarm/qemupcc<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#=
43;<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Saul&nbs=
p;Wold<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o=
:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">1.8 M4<o=
:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">RESOLVED=
<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Regressi=
on (Used to work)<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-03-=
05<o:p></o:p></span></i></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#555555">Toaster<=
o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7172" title=3D"bugzilla=
:7172"><span style=3D"color:#3366BB">7172</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">In managed =
mode, recipes and packages information shows layer unknown<o:p></o:p></span=
></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Alexandru&n=
bsp;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Ionut&nbsp;=
Chisanovici<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">1.8 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGRESS=
 REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-01-16<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;padding:1.5pt 3.75pt 1=
.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7246" title=3D"bugzilla=
:7246"><span style=3D"color:#3366BB">7246</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Hardcoded v=
ariables in /configuration page<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">David&nbsp;=
Reyna<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Mihail&nbsp=
;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">1.8 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGRESS=
 REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;padding:1.5pt 3.75pt 1=
.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-01-23<=
o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;overflow:hidden;wo=
rd-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">Other Bugs found =
during QA Test (including regressions)</span></span><span style=3D"font-siz=
e:14.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;font-weight:n=
ormal"><o:p></o:p></span></h2>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:white;border-collapse:collapse;border-radius: 8p=
x;border-spacing: 0px;orphans: auto;text-align:start;widows: auto;-webkit-t=
ext-stroke-width: 0px;word-spacing:0px">
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
color:black">Summary (16 tasks)<span class=3D"apple-converted-space">&nbsp;=
</span><a href=3D"https://bugzilla.yoctoproject.org/buglist.cgi?&amp;field0=
-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;value0-0-0=3D5187&amp;field0-0-1=
=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0-0-1=3D%206584&amp;field0-0-2=3D=
bug_id&amp;type0-0-2=3Dequals&amp;value0-0-2=3D%206832&amp;field0-0-3=3Dbug=
_id&amp;type0-0-3=3Dequals&amp;value0-0-3=3D%207025&amp;field0-0-4=3Dbug_id=
&amp;type0-0-4=3Dequals&amp;value0-0-4=3D%207026&amp;field0-0-5=3Dbug_id&am=
p;type0-0-5=3Dequals&amp;value0-0-5=3D%207054&amp;field0-0-6=3Dbug_id&amp;t=
ype0-0-6=3Dequals&amp;value0-0-6=3D%207198&amp;field0-0-7=3Dbug_id&amp;type=
0-0-7=3Dequals&amp;value0-0-7=3D%207200&amp;field0-0-8=3Dbug_id&amp;type0-0=
-8=3Dequals&amp;value0-0-8=3D%207201&amp;field0-0-9=3Dbug_id&amp;type0-0-9=
=3Dequals&amp;value0-0-9=3D%207236&amp;field0-0-10=3Dbug_id&amp;type0-0-10=
=3Dequals&amp;value0-0-10=3D%207371&amp;field0-0-11=3Dbug_id&amp;type0-0-11=
=3Dequals&amp;value0-0-11=3D%207397&amp;field0-0-12=3Dbug_id&amp;type0-0-12=
=3Dequals&amp;value0-0-12=3D%207416&amp;field0-0-13=3Dbug_id&amp;type0-0-13=
=3Dequals&amp;value0-0-13=3D%206474&amp;field0-0-14=3Dbug_id&amp;type0-0-14=
=3Dequals&amp;value0-0-14=3D%201989&amp;field0-0-15=3Dbug_id&amp;type0-0-15=
=3Dequals&amp;value0-0-15=3D%204872&amp;field0-1-0=3Dbug_status&amp;type0-1=
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
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">---<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4872" title=3D"bugzilla=
:4872"><span style=3D"color:#3366BB">4872</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Do smart in=
stall and remove more times will occur Segmentation fault<o:p></o:p></span>=
</p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Mark&nbsp;H=
atle<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">1.8 M3<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2013-07-19<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#555555">Toaster<=
o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187" title=3D"bugzilla:5=
187"><span style=3D"color:#3366BB">5187</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">same cooker l=
og file name used for several builds<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Richard&nbsp;=
Purdie<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">ACCEPTED<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">---<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2013-09-13<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#555555">New (Nev=
er tested)<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6832" title=3D"bugzilla:6=
832"><span style=3D"color:#3366BB">6832</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">disk_io value=
 in database doesn't match sometime with the value in the task buildstats f=
ile<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Alexandru&nbs=
p;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Ionut&nbsp;Ch=
isanovici<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8 M3<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">REOPENED<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">New (Never te=
sted)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2014-10-14<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7025" title=3D"bugzilla:7=
025"><span style=3D"color:#3366BB">7025</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">View all targ=
ets: graphical overlap in table<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Belen&nbsp;Ba=
rros&nbsp;Pena<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Mihail&nbsp;S=
tanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8 M3<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">New (Never te=
sted)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2014-12-03<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7026" title=3D"bugzilla:7=
026"><span style=3D"color:#3366BB">7026</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">All layers pa=
ge: Sorting does not work<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Michael&nbsp;=
Wood<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Mihail&nbsp;S=
tanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">REOPENED<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">New (Never te=
sted)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2014-12-03<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7371" title=3D"bugzill=
a:7371"><span style=3D"color:#3366BB">7371</span></a><o:p></o:p></span></b>=
</p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Toaster ma=
naged mode: configuration variables page allows empty inputs into database<=
o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">David&nbsp=
;Reyna<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Ionut&nbsp=
;Chisanovici<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8 M4<o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">IN PROGRES=
S REVIEW<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">New (Never=
 tested)<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-02-26=
<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Regression (Found by QA test)<o:p></o:p></span></b=
></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6584" title=3D"bugzilla:6=
584"><span style=3D"color:#3366BB">6584</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">genericx86-64=
 on Sugarbay dmesg uvesafb: probe of uvesafb.0 failed with error -22<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Saul&nbsp;Wol=
d<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8 M4<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (F=
ound by QA test)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2014-07-28<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#555555">Regressi=
on (Used to work)<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7397" title=3D"bugzilla:7=
397"><span style=3D"color:#3366BB">7397</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">[NUC][generic=
x86-64] Xorg log (auto) - Open ACPI failed<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Lucian&nbsp;M=
usat<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Alexandru&nbs=
p;Georgescu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8 M4<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-03-05<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#555555">BSPs<o:p=
></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7416" title=3D"bugzill=
a:7416"><span style=3D"color:#3366BB">7416</span></a><o:p></o:p></span></b>=
</p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">[Test Case=
 1059] Check logs for errors and failures (auto)<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Undecided<=
o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Saul&nbsp;=
Wold<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Lucian&nbs=
p;Musat<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">---<o:p></=
o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></=
o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression=
 (Used to work)<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-03-06=
<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#555555">OE-Core<=
o:p></o:p></span></b></p>
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
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">OprofileUI ne=
eds to be updated to reflect new oprofile functionality<o:p></o:p></span></=
p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Tom&nbsp;Zanu=
ssi<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Mihail&nbsp;S=
tanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8 M3<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">ACCEPTED<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
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
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#555555">System S=
tartup<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236" title=3D"bugzilla:7=
236"><span style=3D"color:#3366BB">7236</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">The color of =
splash screen for qemuppc is strange<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Saul&nbsp;Wol=
d<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Yi&nbsp;Zhao<=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-01-23<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#555555">Toaster<=
o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7201" title=3D"bugzilla:7=
201"><span style=3D"color:#3366BB">7201</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">elapsed_time =
value in task table doesn't match sometime the value in the task stats file=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Alexandru&nbs=
p;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Ionut&nbsp;Ch=
isanovici<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8 M3<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-01-20<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198" title=3D"bugzilla:7=
198"><span style=3D"color:#3366BB">7198</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Hiding a sort=
ed column does not revert to default sorting<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Michael&nbsp;=
Wood<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Mihail&nbsp;S=
tanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8 M4<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-01-20<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7200" title=3D"bugzilla:7=
200"><span style=3D"color:#3366BB">7200</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">cpu_usage val=
ue for some tasks doesn't match the value in the stats file<o:p></o:p></spa=
n></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Alexandru&nbs=
p;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Ionut&nbsp;Ch=
isanovici<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">1.8 M3<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Regression (U=
sed to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2015-01-20<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555555">Unknown (Hard to categorize)<o:p></o:p></span></b>=
</p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1989" title=3D"bugz=
illa:1989"><span style=3D"color:#3366BB">1989</span></a><o:p></o:p></span><=
/b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Default =
module selections need attention<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#=
43;<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Bruce&nb=
sp;Ashfield<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">1.8 M3<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">IN PROGR=
ESS IMPLEMENTATION<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Unknown =
(Hard to categorize)<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2012-02-=
16<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#555555">BSPs<o:p=
></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;padding:1.5pt 3.75pt 1=
.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6474" title=3D"bugzilla=
:6474"><span style=3D"color:#3366BB">6474</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">genericx86 =
does not work on Emenlow hardware<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Darren&nbsp=
;Hart<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">1.8<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">ACCEPTED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">Unknown (Ha=
rd to categorize)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;padding:1.5pt 3.75pt 1=
.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E68A00">2014-06-23<=
o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;overflow:hidden;wo=
rd-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal"><o:p>&nbsp;</o:p>=
</span></span></h2>
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white">
<span class=3D"mw-headline"><span style=3D"font-family:&quot;Arial&quot;,sa=
ns-serif;color:black;font-weight:normal">Bug Trend</span></span><o:p></o:p>=
</h2>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black">An overview of this week's<span class=3D"apple-converted-space">&=
nbsp;</span><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Bug_Trend" =
title=3D"Yocto Bug Trend"><span style=3D"color:#5A3696">Yocto
 Bug Trend</span></a><span class=3D"apple-converted-space">&nbsp;</span>cha=
rts can be accessed on the following<span class=3D"apple-converted-space">&=
nbsp;</span><a href=3D"https://wiki.yoctoproject.org/charts/combo.html"><sp=
an style=3D"color:#3366BB">page</span></a><o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;overflow:hidden;wo=
rd-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">Build Performance=
 Test</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Arial&=
quot;,sans-serif;color:black;font-weight:normal"><o:p></o:p></span></h1>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black">Detailed description on how performance test are run can be found=
 on<span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://wi=
ki.yoctoproject.org/wiki/Performance_Test" title=3D"Performance Test"><span=
 style=3D"color:#5A3696">Performance
 Test</span></a><span class=3D"apple-converted-space">&nbsp;</span>wiki. Th=
e below charts are displaying the build performance trend for 1.8 by milest=
one starting 1.6 on Master. The charts by Milestone can be accessed at this=
<a href=3D"https://wiki.yoctoproject.org/charts/perf_milestone/performance_=
test.html"><span style=3D"color:#3366BB">link</span></a><span class=3D"appl=
e-converted-space">&nbsp;</span>where
 you can view more detailed information or by clicking on the images which =
will open a new window with the interactive chart.<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black"><br>
Overall we can see a fairly stable trend when building the rootfs and small=
 increase when building the kernel. On the other side, the latest changes t=
hat went in showed ups and downs when building the core-image-sato with rm-=
work. We expect this to be stabilised
 during M4.</span><span style=3D"font-size:9.5pt;font-family:&quot;Arial&qu=
ot;,sans-serif;color:#1F497D"> The current trends are available
<a href=3D"https://wiki.yoctoproject.org/wiki/WW10_-_2015-03-03_-_Full_Pass=
_1.8_M3.rc3#Performance_Charts">
here</a>.</span><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot=
;,sans-serif;color:black"><o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">Distro Testing</s=
pan></span><span style=3D"font-size:18.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif;color:black;font-weight:normal"><o:p></o:p></span></h1>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black">Distro Testing is intended to catch bugs that are distribution sp=
ecific using the yocto-autobuilder. The tests are all run on identical hard=
ware and with all OS-es updated. The distributions
 used will be Fedora, Ubuntu, CentOS, OpenSuse with their latest update. Mo=
re details on the coverage for the Distro testing is available here at<span=
 class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://wiki.yocto=
project.org/wiki/Distribution_Support#Distro_Testing" title=3D"Distribution=
 Support"><span style=3D"color:#5A3696">Distribution_Support#Distro_Testing=
</span></a><span class=3D"apple-converted-space">&nbsp;</span>wiki.<o:p></o=
:p></span></p>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black">At this point all buildsets are fine excepting systemd that was o=
bserved when running nightly-qa-systemd buildest; see<span class=3D"apple-c=
onverted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D7393"><span style=3D"color:#3366BB">bug
 7393</span></a><span class=3D"apple-converted-space">&nbsp;</span>for deta=
ils.</span><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,san=
s-serif;color:#1F497D"> The distro report is available
<a href=3D"https://wiki.yoctoproject.org/wiki/WW10_-_2015-03-03_-_Full_Pass=
_1.8_M3.rc3#Distro_Testing">
here</a>.</span><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot=
;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Alex<o:p></o:p></p>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E962249D9A1irsmsx110gercor_--

--_004_1FFB62CE8AEB0D4298B51122D8903E962249D9A1irsmsx110gercor_
Content-Type: image/jpeg; name="image002.jpg"
Content-Description: image002.jpg
Content-Disposition: inline; filename="image002.jpg"; size=7546;
	creation-date="Tue, 10 Mar 2015 19:18:10 GMT";
	modification-date="Tue, 10 Mar 2015 19:18:10 GMT"
Content-ID: <image002.jpg@01D05B77.B3F4B8E0>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAkACQAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIf
IiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7
Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAARCAC0Ai4DASIA
AhEBAxEB/8QAGwABAAMBAQEBAAAAAAAAAAAAAAQFBgMCAQf/xAA+EAACAgECAQcLAwMDAwUAAAAA
AQIDBAUREgYTITFBUZIUFRYyMzVUYXGBkSJScyNCsVNyoSVDwWKCotHw/8QAGgEBAQEBAQEBAAAA
AAAAAAAAAAYFBAIBA//EADARAQABAQYCCAcBAQEAAAAAAAABAgMEBRE0oVJxFRYhMTNhgbESIiMk
MlHRE/FB/9oADAMBAAIRAxEAPwD9mAAAAADxKyMHFSezk9l82eyFn+2xP5kBNAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAPh9AEXJyacKl23SUYR7SCuUml9byP8AhnjlOv8ApM+kwxiX6/2l3tPgpiMs
k9iWKW11tYooiMsv/W89JNL+J/8Aix6R6X8SvCzBg4Ombb9Rv/WX1gvHDG/9bz0j0v4leFj0j0v4
leFmDA6Ytv1G/wDTrBeOGN289I9L+JXhY9I9L+JXhZgwOmLb9Rv/AE6wXjhjdvPSPS/iV4WPSPS/
iV4WYMDpi2/Ub/06wXjhjdvPSPS/iV4WPSPS/iV4WYMDpi2/Ub/06wXjhjd+iYGp4uc5Rx5qXD1k
4yXI/wBrca437nbVW1lFdXfKnuF4qvFhFpV3y+gA63cAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAImf
n4+m40sjIlwxS7F1nO3VcenTa86e6halwR7W31ICeCFgalXnKyKhKq2p7Trl1xOdGsYuRm5OLW23
jR4rJ9gFiQs/22J/MiPi65j5WRGtQnCFm/NWSXRZ9CRn+1xP5kBNAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAFLyn90z+xhTdcp/dM/sYUlcY8eOSJx7UxyAAYzAAAAAAAAAAABpuRvtbjWIyfI32tx
rEWOGaWlfYNo6fX3egAaTXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEHVq4WaXk8cVLhrk1uuroKfI/
Tomk3yW9Vcq3P5fM0jSkmmk0+tM8uquVfNuEXDbbha6PwBnrbcjMzsy7SeG1utQ4t/0t/UiYleTD
UMzEjhKrfCcZbT3f1+e7NXVRVRDgprjXHuitj1wRUnPhXE1s3t0gZiu+rI07SsPHmnk1Thxwj1wU
fW3LbMxYxzMW5WWNu5fpcuj8E6GNRXY7IU1xm+uSik2cM/22J/MgJoAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAApeU/umf2MKbrlP7pn9jCkrjHjxyROPamOQADGYAAAAAAAAAAANNyN9rcaxGT5G+1
uNYixwzS0r7BdHT6+70ADSa4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAHmUlFOUmkl1tnopeUtko4NU
YOUnK2O9UeuxdqAt4zhOPFGSlHvT3R8rtrt35uyM9uvhe5nNKqnlPUcWTnhKbjtTv6i27D7hU83r
eRj1RlhwdHBHd9Fj/cvmBoo21zk4xnGUo9aT3aI2f7bE/mRS0YtfluLRps7J2US3yMn+2fem+1ln
mWZDy8aMqUq+eW0+Lp/AFoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKXlP7pn9jCm65T+6Z/Yw
pK4x48ckTj2pjkAAxmAAAAAAAAAAADTcjfa3GsRk+RvtbjWIscM0tK+wXR0+vuN7JvuOPlC7mdJ+
o/oRF0nPiN6tLCumKJ74bdFMTHa7+ULuZ2i90mQn0EyHqr6DDr1aW9VUVz3QV0xHchZ2tYWn3Qoy
LJKyceJRjBye32ENYwp4kstXf0oy4ZNppp/NFbnrKfKqryOUIz8ke7kt+jcr7+crxNUpydnku2E5
yh6rW62+5tPzbBSUoqSfQ1vuVtvKDT6LOCdsn07cUYNx/J01BWvQ71S2rHQ+Hbv2PGnQxY6DXGPA
6ua/X3b7dO/3Al25mPTjrInbHm2uhp77/Q4YerYebOUKbHxxW7jKLi9vuZ/B2dmlc70Y3HPmE+r7
l/lTw46hTGa3ypQlzey6du3cDpHUsOWC8znlzCbXE/l0HDI17AxXWrLJ8VseKMVBt7Ga09ZFePi5
WclPT67pRUF/a+J/qZb5nlU+UtbwpQTePvvJbrbcCfXreDZi25KnONVPruUGj5i6/p+XbGqu2SlP
1eODjv8AkjamsxaJf5ZKEpbrh4VsedcVb0Kjfbn/ANHMd/F0dQFxPJqhbGqU0pyW6Xy7zhRqmHk3
Spqvi5p/Tf6d5CxlG7PzpZD2UaVXLs2jt0kbHxY6hPEWLRzODiS3ha/Wnt3fIC+purvr465cUd2t
zllahi4coxvuUHLqRF02yXnHUaN1zddkeBLs3W7IfNVXa9qPlEU2sbZcS6ogXFmZjUqErLoRVnqv
frPXlFUbIV8a4preKXau8z2Lps83S67efhXCMZQ/XHdcHy7jtj5cMayNs6p2Sde1cUumFa6GwNCD
nTbC+qNtb3jJbo6AAAAIWoafHOhX/UlVZVLihZHrTJoAp46HxVX+UZllt9239bZJx26thXolrtnd
k59l9rrddcnFLm0+1fMuABS4Gi5mBzUI6vbOmv8A7bqiuL6sm5/tsT+ZE0hZ/tsT+ZATQAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAABS8p/dM/sYU3XKf3TP7GFJXGPHjkice1McgAGMwAAAAAAAAAAA
abkb7W41iMnyN9rcaxFjhmlpX2DaOn193ya3g0iLzc+4luSSbb2S7Tl5RR/rQ8SPV7ulnbzE11ZZ
NqmZjuhx5ufcSoLaCTOflFH+tDxI6qSa3T3T7ULpdLOwqmaKs8yqZnvhAztEwtQuhfkVydkI8KlG
bi9vsI6LgRwrMPmd6rPW3k239yxBoPCtw9DwcK9XUxsUktlxWSa/DPD5Pac7pWc3Ncb3lFTai39C
1AEW/T8XIxlj2Ux5uPqpdHD9Dlh6Rh4M5WUwk5yWzlOTk9vuTwBFr0/FqwpYkalzMt94Pp6+si38
n9PyFVx1T3qjwwasaaXcWgArKtBwase7HVc5V3L9alY3uMTQdPw7I2VVSco+rxzctvpuWYAgXYKn
lTm4qVd9fN2Lq6CPjcnNNxLIWU12xdb3iudk0vtuW4Ag6fiTx+euu256+fFPbq6Or/g+ZmkYmoWR
svhLjS23jJrddzJ4A4PEpeJ5Ko7VcPDwruOGTpWJlqtWwf8ATjwxcZNdHcTgB4hCNcFCKSilskj2
AAAAAgapmywsaMq4qVlk1CPE9kt+37E8qNewpZVNE4VO502qTrT6ZR7QPFWbqEMLJslCvLlD2MqX
0T+q7Nj7i5+bVqFeFmqFkrYcalDo4Pk0Q6/LcevPzsPBurc0lXjtdLfekfdOqlcraZ4edRffBqeV
dFf8dwEqrWbMjX44VUF5NwS/qP8AukuvYlZ1kHkYsVNOSuXRuVVOjahi6zg8OXOzHprknPgXR8n9
S0zaK45OJYopSdy6QLEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUvKf3TP7GFN1yn90z+xhSVx
jx45InHtTHIABjMAAAAAAAAAAAGm5G+1uNYjJ8jfa3GsRY4ZpaV9gujp9fdG1D3fkf7H/gw0UuFG
51D3fkf7H/gw0WuFdJxYr+dPJYYZ+NXMklws3On+76P9i/wYaTXC+k3On+76P9i/wMK/Ork+4n+F
PNR63ZB8ocai/Iya6HjSlw0Sa3lxdpLouxcDSL8qi7InFJ7O+Tb4uwlWafZZr9We3DmoY7rcX17t
7nzVtOnqNdOMuGOO58Vy6m0urY32Kr+Tl+TTk24WZkO6coK6Lk9+vrX2I2Pl5LxdNbyLG56i4SfF
1x6eh/Isp6HHH1HGzMFKEq942KTb4osiz0TPrwcaOPKmV2PmO9KbfC109AE7lHbOnRLp12Sraa/V
B7NLfsIOnQwJZFLrytRlZ0NKyx8L+pIysXV9S0+/HyK8WuT2dbhJtNp9p0xlrUbK4242BGtNKUoS
lvt8gIWHp8tSyM2yzNyoThbtBQtaivse6dRypaZLHnZvlRv5jjS69ut/g91YWs4eRkrGjiyqunxK
c5Piie5aW8HCpmpuy6u3nLJbes31sDzqNWRVZbfdnPHxqYJUJS6ZS+fecIZGfqN+LhWWvHcqHbZK
K2be+yOubh6ndqzy6asTIoUUqo3Sf6e97HW/D1HyijUaoUeVRqddlfE+DbffdAcqtRthgq++xynh
381Zt0ce/R/5LjL594tnkvDzzj+hy6kylvwbadLjiSkpZWXcpy2XRvvu/wDguM+vIswba8OUY3Sj
tBy6kBTV2ZmJn1Y2PkvLslBvIhJ7qL+vZ9D7i6hm1887ecknHZKcOF8432d6O2j4uqYThVbjYca/
+5ZCcnOT7+km5GJbkZTnKSVcK2qu9TfRuB3w0448YTtVli9dp79JIKbStNysS/nLnCKjDh/RJvnH
3suQAAAAAAAAAIuLqGNmQslRYpRqlwyl2JjFz8fMjbKixTjVJxlJdW6AlELP9tifzI8VaxhXZixY
2Pjfqtr9Mvo+095/tsT+ZATQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABS8p/dM/sYU3XKf3TP7
GFJXGPHjkice1McgAGMwAAAAAAAAAAAabkb7W41iMnyN9rcaxFjhmlpX2C6On193mcIWQcJpSi1s
0+0ieaNO+Fr/AAe8++ePhW217ccYtrfvMeuVOqJ+vX4D3erzd7GYi1jPPyzdN5xOzucxTXM9v6/6
1vmfT/ha/wAEuEIVwUIJRilskuww/pTqm/r1+A2OBfLIwqrbNuOUU3t3i6XmwtpmLKMsvLIuuJ2d
8maaJns/f/UsFRqGqZdGp1YGHhxvssqdrcrOFJJ7HTTdUnl2X4+TR5PkUevHi3W3emd7uWYKfStc
WpZ2VjOh1KmW1cm/aLvR5lq+ZdkXwwMKN9eO9pylZwvfuSAugU9+tShjYkqcZyyMxtV1TfDs117s
9VaplRjkRzMLmbKa+NcMuKMl9QLY+NJrZ9KKXG1LWMqqF0NLqVc+lN3rfY9ZGqZ/nKzDw8GFzrgp
SlK3h6wLdJRWyWyR6KzE1iu/GvsurlTZjb87W+nY85mtV4GmRzMiuSc1vGEenffqAs3GLabSbXU+
49Ffm6msSiiUapW25HRVWu17bn3A1OOXZdRZW6sijbnIPqW/V0gTwVWJrMdQebHEpc5YslFbvbjZ
xjq+fHMpxrtOUJW77bW77bd4F2Dhi5CyKeNLZpuMl3NdZCyNXdWTZTRjyuVK3ukv7P8A7AtAVeRr
EUqI4lTyLL48UY77bR7z5HXKbKK51VWTsm2ubS6Vw9YFqCBDUq7njqlObufV1OKXWyeAKrXLsmGP
CnHx7bFbLax19cY9pagDNcmXVZDMxY4tldSn/ev/AN0n3Ta1j4WuV48UlC+zhj/7S+qx6aHN1VqD
m95bdrFWNRS7HXXGPOy4p7f3PvYGc0+3IxsfTJWczfG1KPNpLev5r/yW2b5R5Zi8XBzXPLbbrO1O
k4NGT5TVjxjb+5dgz/bYn8yAmgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACl5T+6Z/YwpuuU/um
f2MKSuMePHJE49qY5AAMZgAAAAAAAAAAA03I32txrEZPkb7W41iLHDNLSvsG0dPr7oWq+68j+N/4
Pzo/Ss6h5OHbTF8LnHZMyy5HZLW/lMPCcmKXW1tq6ZojPKHFjNztrxXTNlTnlDPH6LpXuvH/AI1/
gzfodkpb+Uw8JqcGh42HXTJ8ThHZsYXdrWxrqm0jLODBrnbXeuubWnLOFPqONPK5V40IXTp2xJPj
iv8A1dR7zMWvRdIyZ0cdt+Q+Bzl0tt9Be7LffZb959aT60n9TdUjJvEztIt03Ju5uVdD5mXN7tvi
7We8qemSzL5zyLNOzE+lx32mux7dRqWk+tJ/U8SpqnJSlXGTXa4gZuzJryNKw5a1XJwnJ7ZEd04P
sb26tz5RfNvLx8XLlmYfMSbco+zfYk+000oQlHhlFOPc10CNcILaMIxXckBktMu0ivFo5zU7IWLr
h+rofcTfOWJgco8mWVcq4zpjwNxfSX/M1f6UPChKuuT3lCLfzQGalGzLjqeowrlGi/gjFPocox62
WGtRjLkzc4w3/pR4ejfuLWdcJ1uuUU4SWzR5op5mlVOXGl1b9wFVqmpw0zBxN+BW2pRhOcW1Do6W
Q6qo5uFkLSs2GXlWTjz9k047x7jSShGa2lFSS70IwhDfhjGO/ctgM9oSy6tX1GFmPVVVFx34G+jo
7CdpS8py8nPkm+KXN1N/sRabLp6F09Z8cf0OMf07roa7AK3SN3kZri3zXOvb69pXahLGo1DLUM27
EtuhvOChurejZNF9i4sMSnm4dO7cpN9rfWzpKquclKUIya6m11AZKeIqo4GNn3WYtNOO2rorplJ9
ab+hO0rCoydFXlSfN0znzdibjKUO/wC5oJQhNbTipLua3PvDHh4dlw92wGdd08GEciMY0K57QlNb
qEV2fcutPyLMvBqvthwTnHdxO7hGUeFxTXc0ektlsuhAfQCBqmPfk48a6r1RDiTtnv08PagJ4MpL
OyMbGzfILpTxVtCmyfTwy7dn2kqtX6Zl8xHIlOF9DlHnH6s0t9wNCQs/22J/MjOaTqE7NQxI123K
y3i592epY13F7m5VE8vGpjYnYrlvHYCzAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFLyn90z+xh
Tdcp/dM/sYUlcY8eOSJx7UxyAAYzAAAAAAAAAAABpuRvtbjWIyfI32txrEWOGaWlfYLo6fX3egAa
TXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAArNawcvUMaFOLdXXtNSkrE2pLu6CzAFL5rzsrAtxM2zGU
JJc3zEGuFrq6z5XpOXk2TnqN9cmqnXWqk0l8y7AFFRo2ZzmNVk3Uyx8bZw4ItTbXVuyfnxSuxHst
+eXTsTiFn+2xP5kBNAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFLyn90z+xhTdcp/dM/sYUlcY8
eOSJx7UxyAAYzAAAAAAAAAAABpuRvtbjWIyfI32txrEWOGaWlfYNo6fX3egAaTXAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAADjkXwxsey+x7RhFyZ2IWqUTydNvqr9Zxey7wImDrM8jIqruxXTDJi5Uy7
0u/5kvP9rifzIp8fIWoX6dRVXOMsdb3Nxa4Gl1FtfpvP2qx5V0eGXFFJ9CYE4EPzfZ8dkeIeb7Pj
sjxHztEwEPzfZ8dkeIeb7PjsjxDtEwEPzfZ8dkeIeb7PjsjxDtEwEPzfZ8dkeIeb7PjsjxDtEwEP
zfZ8dkeIeb7PjsjxDtEwEPzfZ8dkeIeb7PjsjxDtEw5XZFWPHitmorvZH832fHZHiOV+jQyYqN+V
fZFdScj5V8WXy977T8Ofzdzv5zwvia/yPOeF8TX+SF6NYX77fEPRrC/fb4j8PuPLd+30fPZN854X
xNf5HnPC+Jr/ACQvRrC/fb4h6NYX77fEPuPLc+j57JvnPC+Jr/I854XxNf5IXo1hfvt8Q9GsL99v
iH3HlufR89k3znhfE1/kec8L4mv8kL0awv32+IejWF++3xD7jy3Po+eyb5zwvia/yPOeF8TX+SF6
NYX77fEPRrC/fb4h9x5bn0fPZN854XxMPydqsiq+PFVNTXeir9GsP91viO9GjQxouNGTfCL60pHu
j/XP58svLN5r/wA8vlzzcOU3uiz6mF7D9Bv0mGTW678m+cH1xciL6Kad3T/JmX3D67xafFTMR2Jv
EcLtb1bRXRVERll2sQDb+imnd1n5Hopp3dZ4jg6GtuKN2Z1ftuKN2IBt/RTTu6zxD0U07us8Q6Gt
uKNzq/bcUbsQDb+imnd1niHopp3dZ4h0NbcUbnV+24o3YgG39FNO7rPEPRTTu6zxDoa24o3Or9tx
RuxANv6Kad3WeIeimnd1niHQ1txRudX7bijdW8j21bd9jXFVjaFj4e7xrrquLr4ZdZZQjwx4W2/m
+03bpY1WNjFFU9sKW43eq72EWdU5zDoADrdoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPmyR9A
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAP/2Q==

--_004_1FFB62CE8AEB0D4298B51122D8903E962249D9A1irsmsx110gercor_--
