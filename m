Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C566E00947; Wed, 12 Aug 2015 08:39:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12421E00758
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 08:39:30 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 12 Aug 2015 08:39:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,662,1432623600"; 
	d="jpg'145?scan'145,208,145,217";a="767315460"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
	by fmsmga001.fm.intel.com with ESMTP; 12 Aug 2015 08:39:23 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.29]) by
	IRSMSX107.ger.corp.intel.com ([169.254.10.245]) with mapi id
	14.03.0224.002; Wed, 12 Aug 2015 16:39:20 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.9_M2.rc2 Full Pass test report
Thread-Index: AdDVEU8GvIaqwnKGQHOnx2xTvutY7Q==
Date: Wed, 12 Aug 2015 15:39:19 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E96260B2CB6@irsmsx110.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Yocto 1.9_M2.rc2 Full Pass test report
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
X-List-Received-Date: Wed, 12 Aug 2015 15:39:33 -0000
X-Groupsio-MsgNum: 26054
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_005_1FFB62CE8AEB0D4298B51122D8903E96260B2CB6irsmsx110gercor_";
	type="multipart/alternative"

--_005_1FFB62CE8AEB0D4298B51122D8903E96260B2CB6irsmsx110gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E96260B2CB6irsmsx110gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E96260B2CB6irsmsx110gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the full pass test report for YP 1.9_M2.rc2 release.

*        There are several issues opened against Toaster (see all the Bugs =
section below) like 7992, 8010, 8011, 8013, 7810.

*        #8033 which asks for root passwd in the bsp images has been fixed,=
 therefore Runtime teting (LTP, POSIX, LSB) could be run.

*        Running Ptest on 32bit MinnowMax  is being blocked by #7971 (In pr=
ogress review) which prevents installation of the pTest image using EFI bas=
ed boards. The current opened listed bugs against pTest testing are: 8063, =
8062, 8057, 8059, 8021. During this test campaign, no new issues compared w=
ith rc1 appeared when running pTest

*        The build performance tests shows no degradations during buildtime=
.

The full report can be accessed here<https://wiki.yoctoproject.org/wiki/WW3=
3_-_2015-08-10_-_Full_Pass_1.9_M2.rc2>.



Testing data

 Test type:  Full Pass Release Test

 Branch: master

 Build name: 1.9_M2.rc2

 poky commit: c75cefe8a382a63f625123c156137782db118f64

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rel=
eases/yocto-yocto-1.9_M2.rc2/

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

4268<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4268>

ADT: master branch

Fedora 22 i686

99.1%

none

0.9%

8123<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8123>

0.0%

none

100.0%

4267<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4267>

ADT: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

4285<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4285>

BSP/QEMU: master branch

Beaglebone Black

100.0%

none

0.0%

none

0.0%

none

100.0%

4280<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4280>

BSP/QEMU: master branch

EdgeRouter

100.0%

none

0.0%

none

0.0%

none

100.0%

4274<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4274> 4277<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4277>

BSP/QEMU: master branch

genericx86 - on MMAX32bit

97.2%

none

2.8%

6584<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6584> 7897<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7897> 8012<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D8012>

0.0%

none

100.0%

4273<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4273>

BSP/QEMU: master branch

genericx86-64 on MMAX64

96.4%

none

3.6%

6584<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6584> 7897<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7897>

0.0%

none

100.0%

4275<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4275> 4276<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4276>

BSP/QEMU: master branch

genericx86-64 on NUC

97.2%

none

2.8%

6584<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6584> 8012<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D8012>

0.0%

none

100.0%

4281<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4281>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

4284<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4284>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

4256<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4256>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

4260<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4260>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

4283<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4283>

BSP/QEMU: master branch

qemuarm64

100.0%

none

0.0%

none

0.0%

none

100.0%

4262<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4262>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

4282<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4282>

BSP/QEMU: master branch

qemumips64

100.0%

none

0.0%

none

0.0%

none

100.0%

4264<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4264>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

4258<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4258>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

4249<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4249>

Eclipse Plugin: master branch

Kepler - Fedora 22 x86_64

93.9%

none

6.1%

7054<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054> 7996<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7996>

0.0%

none

100.0%

4266<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4266>

Eclipse Plugin: master branch

Luna on Ubuntu 15.04

93.9%

none

6.1%

7054<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054> 7996<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7996>

0.0%

none

100.0%

4239<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4239>

Eclipse Plugin: master branch

Mars on Fedora 22 x86_64

93.9%

none

6.1%

7054<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054> 7996<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7996>

0.0%

none

100.0%

4278<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4278> 4279<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4279>

Meta-yocto: master branch

Ubuntu 14.04 x86_64

100.0%

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

0.0%

none

0.0%

none

100.0%

4241<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4241> 4242<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4242> 4243<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4243> 4244<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4244>

Toaster: master branch

Ubuntu 15.04 x86_64

85.2%

none

10.2%

8011<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8011> 8131<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D8131> 7198<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D7198> 7992<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D7992> 7810<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D7810> 8148<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D814=
8> 8125<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8125> 8126<http=
s://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8126>

4.6%

none

100.0%

4238<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4238> 4250<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4250>

OE-Core: master branch

Ubuntu 15.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

4240<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4240>

BitBake: master branch

Ubuntu 15.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

4269<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4269>

Automated Build Testing: master branch

CentOS 7 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

4270<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4270>

Automated Build Testing: master branch

Fedora 22 x86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

4272<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4272>

Automated Build Testing: master branch

OpenSuse 13.2 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

4271<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4271>

Automated Build Testing: master branch

Ubuntu 15.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

4265<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4265>

Runtime: master branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 28



[Bug Status]


Test Case Status Report

Status

Count

BLOCKED

5

FAILED

26

PASSED

1453

Total: 1484


[http://chart.apis.google.com/chart?cht=3Dbvg&chs=3D372x120&chbh=3Da&chds=
=3D0,1453&chxt=3Dy&chxr=3D0,0,1453,242&chd=3Dt:&chd=3Dt:5,26,1453&chco=3DFF=
FF66|FF9933|00FF00&chdl=3DBLOCKED(5)+0%25|FAILED(26)+2%25|PASSED(1453)+98%2=
5]





Bugs Found during QA Test
New and notable issues Found during QA Test & Community
ID

Summary (5 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.cg=
i?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D7810&field0-0-1=3Dbu=
g_id&type0-0-1=3Dequals&value0-0-1=3D%207992&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%207996&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%208011&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%208012=
&field0-1-0=3Dbug_status&type0-1-0=3Dnotequals&value0-1-0=3DCLOSED>

P

Assignee

QA

Milestone

Status

Resolution

cf_regression_type

Created

BSPs

8012<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8012>

connection errors on genericx86-64-lsb on NUC

Medium+

Darren Hart

Cristina Agurida

1.9 M2

NEW

New (Never tested)

2015-07-15

Eclipse Plugin

7996<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7996>

Create a new BitBake commander project failed

Medium+

Todor Minchev

Valentin Hangan

1.9 M3

NEW

---

2015-07-14

Toaster

7992<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7992>

Package details page throws an error

High

Alexandru Damian

Cristina Agurida

1.9 M2

IN PROGRESS REVIEW

---

2015-07-14

7810<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7810>

The Toaster directory structure does not expand / collapse

Medium+

Michael Wood

Cristina Agurida

1.9 M2

ACCEPTED

---

2015-05-27

8011<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8011>

Sorting columns breaks Toaster

Medium+

Alexandru Damian

Mihail Stanciu

1.9 M2

NEW

Regression (Used to work)

2015-07-15




Other Bugs found during QA Test (including regressions)
ID

Summary (15 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.c=
gi?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D8021&field0-0-1=3Db=
ug_id&type0-0-1=3Dequals&value0-0-1=3D%208057&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%208059&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%208062&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%208063=
&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%206156&field0-0-6=3Db=
ug_id&type0-0-6=3Dequals&value0-0-6=3D%206584&field0-0-7=3Dbug_id&type0-0-7=
=3Dequals&value0-0-7=3D%207054&field0-0-8=3Dbug_id&type0-0-8=3Dequals&value=
0-0-8=3D%207198&field0-0-9=3Dbug_id&type0-0-9=3Dequals&value0-0-9=3D%207897=
&field0-0-10=3Dbug_id&type0-0-10=3Dequals&value0-0-10=3D%208123&field0-0-11=
=3Dbug_id&type0-0-11=3Dequals&value0-0-11=3D%208125&field0-0-12=3Dbug_id&ty=
pe0-0-12=3Dequals&value0-0-12=3D%208126&field0-0-13=3Dbug_id&type0-0-13=3De=
quals&value0-0-13=3D%208131&field0-0-14=3Dbug_id&type0-0-14=3Dequals&value0=
-0-14=3D%208148&field0-1-0=3Dbug_status&type0-1-0=3Dnotequals&value0-1-0=3D=
CLOSED>

P

Assignee

QA

Milestone

Status

Resolution

cf_regression_type

Created

---

8021<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8021>

Ptest-runner hangs on certain step

High

Lucian Musat

Cristina Agurida

1.9 M3

NEW

---

2015-07-16

Automated Runtime Testing

8057<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8057>

ptest - E2fsprogs Oprofile Openssh Bash and Kmod ptest packages are skipped

Medium

Ross Burton

Lucian Musat

1.9 M3

NEW

---

2015-07-28

8059<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8059>

ptest - some openssl ptests fail

Medium

Ross Burton

Lucian Musat

1.9

NEW

---

2015-07-28

8062<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8062>

ptest - quilt ptest is broken - has many failures

Medium

Ross Burton

Lucian Musat

1.9

NEW

---

2015-07-28

8063<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8063>

ptest - Valgrind ptest is broken - has many failures

Medium

Dave Lerner

Lucian Musat

1.9

IN PROGRESS IMPLEMENTATION

---

2015-07-28

New (Never tested)

7897<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7897>

Dmesg error BAR 14 and BAR 15 failed to assign in Minnow Max

Low

Cristina Agurida

Cristina Agurida

1.9

IN PROGRESS REVIEW

New (Never tested)

2015-06-17

Regression (Found by QA test)

6584<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6584>

dmesg uvesafb: probe of uvesafb.0 failed with error -22 on genericx86/gener=
icx86-64 on NUC and MinnowMax

Medium

Saul Wold



1.9 M3

REOPENED

Regression (Found by QA test)

2014-07-28

Regression (Used to work)

8123<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8123>

the aarch64 toolchain can not build iptables on i686 host

Undecided

Jessica



---

NEW

Regression (Used to work)

2015-08-07

OE-Core

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

[crosstap] no trace message output on qemuarm

Medium

Kevin Hao



1.9

ACCEPTED

Regression (Used to work)

2014-04-14

7054<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054>

OprofileUI needs to be updated to reflect new oprofile functionality

Medium

Ross Burton

Mihail Stanciu

1.9 M2

ACCEPTED

Regression (Used to work)

2014-12-09

Toaster

7198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198>

Hiding a sorted column does not revert to default sorting

Medium

Michael Wood

Mihail Stanciu

1.9 M2

IN PROGRESS REVIEW

Regression (Used to work)

2015-01-20

8125<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8125>

Filter does not work as expected after clearing the search results

Undecided

Alexandru Damian

Cristina Agurida

---

NEW

Regression (Used to work)

2015-08-07

8126<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8126>

Messages are missing when "IMAGE_FSTYPES" field is not properly edited

Undecided

David Reyna

Cristina Agurida

1.9 M4

NEW

Regression (Used to work)

2015-08-07

8131<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8131>

All builds page "Errors"/"Warnings" filters doesn't work

Undecided

Alexandru Damian

Cristina Agurida

---

NEW

Regression (Used to work)

2015-08-10

8148<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8148>

Sorting the content of the Layer/Machines table doesn't work

Undecided

Alexandru Damian

Cristina Agurida

---

NEW

Regression (Used to work)

2015-08-11




pTest results for genericx86-64 on NUC
=1B$B!x=1B(B  Commit 1.9_M2.rc2: c75cefe8a382a63f625123c156137782db118f64
=1B$B!x=1B(B  Previous Commit 1.9_M2.rc1: f9ea480e6c26fea46c3011c4e9d0e2de3=
d5c81b4


Results

Package Name

Tests ran

Passed

Failed

Passrate

Last Passrate

Run difference

valgrind

561

351

210

63.0

63.0

No

lttng-tools

787

781

6

99.0

99.0

No

beecrypt

21

21

0

100.0

100.0

No

diffstat

439

439

0

100.0

100.0

No

strace

30

24

6

80.0

80.0

No

acl

211

197

14

93.0

93.0

No

glib-2.0

215

214

1

100.0

100.0

No

libpcre

3

3

0

100.0

100.0

No

quilt

55

3

52

5.0

5.0

No

pango

11

10

1

91.0

91.0

No

gdbm

11

11

0

100.0

100.0

No

busybox

487

473

14

97.0

97.0

No

dbus-test

15

15

0

100.0

100.0

No

openssl

48

19

29

40.0

40.0

No

libxml2

85

85

0

100.0

100.0

No

udev

139

139

0

100.0

100.0

No

diffutils

12

12

0

100.0

100.0

No

gdk-pixbuf

9

9

0

100.0

100.0

No

tcl

148

145

3

98.0

98.0

No

python

14187

14131

56

100.0

100.0

No

e2fsprogs

1

0

1

0.0

0.0

No

attr

108

108

0

100.0

100.0

No

gawk

282

281

1

100.0

100.0

No

perl

2266

2257

9

100.0

100.0

No

bzip2

6

6

0

100.0

100.0

No

zlib

2

2

0

100.0

100.0

No




Regards,
AlexG

--_000_1FFB62CE8AEB0D4298B51122D8903E96260B2CB6irsmsx110gercor_
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
	{font-family:"MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
@font-face
	{font-family:"\@MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:JA;}
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
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1092120369;
	mso-list-template-ids:-225667214;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1349259021;
	mso-list-type:hybrid;
	mso-list-template-ids:852550328 67698689 67698691 67698693 67698689 676986=
91 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">Here is the full pass test report for YP 1.9_M2.rc2 =
release.
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo1"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>There are several issues opened against Toas=
ter (see all the Bugs section below) like 7992, 8010, 8011, 8013, 7810.<o:p=
></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo1"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>#8033 which asks for root passwd in the bsp =
images has been fixed, therefore Runtime teting (LTP, POSIX, LSB) could be =
run.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo1"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Running Ptest on 32bit MinnowMax &nbsp;is be=
ing blocked by #7971 (In progress review) which prevents installation of th=
e pTest image using EFI based boards. The current opened listed bugs agains=
t pTest testing are: 8063, 8062, 8057,
 8059, 8021. During this test campaign, no new issues compared with rc1 app=
eared when running pTest<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo1"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>The build performance tests shows no degrada=
tions during buildtime.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The full report can be accessed <a href=3D"https://w=
iki.yoctoproject.org/wiki/WW33_-_2015-08-10_-_Full_Pass_1.9_M2.rc2">
here</a>.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"margin:0in;margin-bottom:.0001pt;line-height:14.3pt;background=
:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:14.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Testing data</s=
pan></span><span style=3D"font-size:14.0pt;font-family:&quot;Calibri&quot;,=
sans-serif;color:black;font-weight:normal"><o:p></o:p></span></h1>
</div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
;orphans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0px;wo=
rd-spacing:0px"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&q=
uot;,sans-serif;color:black"> Test type:&nbsp; Full Pass Release Test<o:p><=
/o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black"> Build name: 1.9_M2.rc2<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black"> poky commit: c75cefe8a382a63f625123c156137782db118f64<o:p><=
/o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black"> Autobuilder images repository: http://autobuilder.yoctoproj=
ect.org/pub/releases/yocto-yocto-1.9_M2.rc2/<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black"> Distributions tested: Ubuntu 15.04 64 bit, Ubuntu 14.04 64b=
it, Fedora 21 64bit, Fedora 22 64bit, Opensuse 13.2 64bit, CentOS 7 64 bit =
<o:p></o:p></span></pre>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;margin-bottom:0in;m=
argin-left:0in;margin-bottom:.0001pt;line-height:14.3pt;background:white;bo=
rder:none;padding:0in;orphans: auto;text-align:start;widows: 1;-webkit-text=
-stroke-width: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Test Run Summar=
y Report</span></span><span style=3D"font-size:14.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:black;font-weight:normal"><o:p></o:p></span></h=
1>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
ing Summary Report</b><b><o:p></o:p></b></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
 Run<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
 Plan<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Envi=
ronment<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Pass=
ed<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Othe=
r issues<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Fail=
ed<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Fail=
ing bugs<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Bloc=
ked<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Bloc=
king bugs<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comp=
lete<o:p></o:p></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4268"><span style=3D"color:#5A3696">4268</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">ADT: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Fedora 22 i686<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">99.1%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.9%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D8123"><span style=3D"color:#5A3696">8123</span></a><o:p></o:p></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4267"><span style=3D"color:#5A3696">4267</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">ADT: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 14.04 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4285"><span style=3D"color:#5A3696">4285</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Beaglebone Black<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4280"><span style=3D"color:#5A3696">4280</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">EdgeRouter<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4274"><span style=3D"color:#5A3696">4274</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D4277"><span style=3D"color:#5A3696"=
>4277</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">genericx86 - on MMAX32bit<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">97.2%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">2.8%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D6584"><span style=3D"color:#5A3696">6584</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D7897"><span style=3D"color:#5A3696">7897</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D8012"><span style=3D"color:#5A36=
96">8012</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4273"><span style=3D"color:#5A3696">4273</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">genericx86-64 on MMAX64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">96.4%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">3.6%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D6584"><span style=3D"color:#5A3696">6584</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D7897"><span style=3D"color:#5A3696">7897</span>=
</a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4275"><span style=3D"color:#5A3696">4275</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D4276"><span style=3D"color:#5A3696"=
>4276</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">genericx86-64 on NUC<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">97.2%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">2.8%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D6584"><span style=3D"color:#5A3696">6584</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D8012"><span style=3D"color:#5A3696">8012</span>=
</a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4281"><span style=3D"color:#5A3696">4281</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">MPC8315e-rdb<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4284"><span style=3D"color:#5A3696">4284</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">P1022ds<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4256"><span style=3D"color:#5A3696">4256</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">qemu-x86<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4260"><span style=3D"color:#5A3696">4260</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">qemuarm<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4283"><span style=3D"color:#5A3696">4283</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">qemuarm64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4262"><span style=3D"color:#5A3696">4262</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">qemumips<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4282"><span style=3D"color:#5A3696">4282</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">qemumips64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4264"><span style=3D"color:#5A3696">4264</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">qemuppc<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4258"><span style=3D"color:#5A3696">4258</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">qemux86-64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4249"><span style=3D"color:#5A3696">4249</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Eclipse Plugin: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Kepler - Fedora 22 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">93.9%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">6.1%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7054"><span style=3D"color:#5A3696">7054</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D7996"><span style=3D"color:#5A3696">7996</span>=
</a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4266"><span style=3D"color:#5A3696">4266</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Eclipse Plugin: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Luna on Ubuntu 15.04<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">93.9%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">6.1%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7054"><span style=3D"color:#5A3696">7054</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D7996"><span style=3D"color:#5A3696">7996</span>=
</a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4239"><span style=3D"color:#5A3696">4239</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Eclipse Plugin: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Mars on Fedora 22 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">93.9%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">6.1%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7054"><span style=3D"color:#5A3696">7054</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D7996"><span style=3D"color:#5A3696">7996</span>=
</a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4278"><span style=3D"color:#5A3696">4278</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D4279"><span style=3D"color:#5A3696"=
>4279</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Meta-yocto: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 14.04 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D6156"><span style=3D"color:#5A3696">6156</span></a><o:p></o:p></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4241"><span style=3D"color:#5A3696">4241</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D4242"><span style=3D"color:#5A3696"=
>4242</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=
=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D4243"><span =
style=3D"color:#5A3696">4243</span></a><span class=3D"apple-converted-space=
">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi=
?run_id=3D4244"><span style=3D"color:#5A3696">4244</span></a><o:p></o:p></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Toaster: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 15.04 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:black">85.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">10.2%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D8011"><span style=3D"color:#5A3696">8011</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D8131"><span style=3D"color:#5A3696">8131</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D7198"><span style=3D"color:#5A36=
96">7198</span></a><span class=3D"apple-converted-space">&nbsp;</span><a hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7992"><span style=
=3D"color:#5A3696">7992</span></a><span class=3D"apple-converted-space">&nb=
sp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D78=
10"><span style=3D"color:#5A3696">7810</span></a><span class=3D"apple-conve=
rted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D8148"><span style=3D"color:#5A3696">8148</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D8125"><span style=3D"color:#5A3696">8125</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D8126"><span style=3D"color:#5A36=
96">8126</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">4.6%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4238"><span style=3D"color:#5A3696">4238</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D4250"><span style=3D"color:#5A3696"=
>4250</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">OE-Core: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 15.04 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4240"><span style=3D"color:#5A3696">4240</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BitBake: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 15.04 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4269"><span style=3D"color:#5A3696">4269</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Automated Build Testing: master branch<o:p></o:p></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">CentOS 7 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4270"><span style=3D"color:#5A3696">4270</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Automated Build Testing: master branch<o:p></o:p></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Fedora 22 x86-64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4272"><span style=3D"color:#5A3696">4272</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Automated Build Testing: master branch<o:p></o:p></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">OpenSuse 13.2 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4271"><span style=3D"color:#5A3696">4271</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Automated Build Testing: master branch<o:p></o:p></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 15.04 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D4265"><span style=3D"color:#5A3696">4265</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Runtime: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Multiple Environments<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b>Total: 28</b><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:18.0pt"><span styl=
e=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><br>
<img border=3D"0" width=3D"465" height=3D"150" id=3D"Picture_x0020_3" src=
=3D"cid:image002.jpg@01D0D52E.3216EEC0" alt=3D"Bug Status"><o:p></o:p></spa=
n></p>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:18.0pt"><span styl=
e=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
<tbody>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
 Case Status Report</b><b><o:p></o:p></b></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Stat=
us<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Coun=
t<o:p></o:p></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal">BLOCKED<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">5<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">FAILED<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">26<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal">PASSED<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">1453<o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b>Total: 1484</b><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><img bord=
er=3D"0" width=3D"465" height=3D"150" id=3D"Picture_x0020_2" src=3D"cid:ima=
ge004.jpg@01D0D52E.3216EEC0" alt=3D"http://chart.apis.google.com/chart?cht=
=3Dbvg&amp;chs=3D372x120&amp;chbh=3Da&amp;chds=3D0,1453&amp;chxt=3Dy&amp;ch=
xr=3D0,0,1453,242&amp;chd=3Dt:&amp;chd=3Dt:5,26,1453&amp;chco=3DFFFF66|FF99=
33|00FF00&amp;chdl=3DBLOCKED(5)&#43;0%25|FAILED(26)&#43;2%25|PASSED(1453)&#=
43;98%25"></span><o:p></o:p></p>
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
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"margin:0in;margin-bottom:.0001pt;line-height:14.3pt;background=
:white;border:none;padding:0in;orphans: auto;text-align:start;widows: 1;-we=
bkit-text-stroke-width: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Bugs Found duri=
ng QA Test</span></span><span style=3D"font-size:14.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:black;font-weight:normal"><o:p></o:p></span><=
/h1>
<h2 style=3D"margin:0in;margin-bottom:.0001pt;line-height:14.3pt;background=
:white;border:none;padding:0in;orphans: auto;text-align:start;widows: 1;-we=
bkit-text-stroke-width: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:red;font-weight:normal">New and notable i=
ssues Found during QA Test &amp; Community</span></span><span style=3D"font=
-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black;font-we=
ight:normal"><o:p></o:p></span></h2>
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
<b><span style=3D"color:black">ID<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Summary (5 tasks)<span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/buglis=
t.cgi?&amp;field0-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;value0-0-0=3D7810=
&amp;field0-0-1=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0-0-1=3D%207992&am=
p;field0-0-2=3Dbug_id&amp;type0-0-2=3Dequals&amp;value0-0-2=3D%207996&amp;f=
ield0-0-3=3Dbug_id&amp;type0-0-3=3Dequals&amp;value0-0-3=3D%208011&amp;fiel=
d0-0-4=3Dbug_id&amp;type0-0-4=3Dequals&amp;value0-0-4=3D%208012&amp;field0-=
1-0=3Dbug_status&amp;type0-1-0=3Dnotequals&amp;value0-1-0=3DCLOSED"><span s=
tyle=3D"font-family:&quot;Cambria Math&quot;,serif;color:#3366BB">=1B$B"M=
=1B(B</span></a><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">P<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Assignee<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">QA<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Milestone<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Status<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Resolution<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">cf_regression_type<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Created<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"color:#555555">BSPs<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8012"=
 title=3D"bugzilla:8012"><span style=3D"color:#3366BB">8012</span></a><o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">connection errors on genericx86-64-lsb on NUC<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Medium&#43;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Darren&nbsp;Hart<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Cristina&nbsp;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">1.9 M2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">New (Never tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">2015-07-15<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"color:#555555">Eclipse Plugin<o:p></o:p></span>=
</b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7996"=
 title=3D"bugzilla:7996"><span style=3D"color:#3366BB">7996</span></a><o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Create a new BitBake commander project failed<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Medium&#43;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Todor&nbsp;Minchev<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Valentin&nbsp;Hangan<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">1.9 M3<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">2015-07-14<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"color:#555555">Toaster<o:p></o:p></span></b></p=
>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#B=
F1919"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7992"=
 title=3D"bugzilla:7992"><span style=3D"color:#3366BB">7992</span></a><o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#B=
F1919">Package details page throws an error<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#B=
F1919">High<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#B=
F1919">Alexandru&nbsp;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#B=
F1919">Cristina&nbsp;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#B=
F1919">1.9 M2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#B=
F1919">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#B=
F1919">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#B=
F1919">2015-07-14<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7810"=
 title=3D"bugzilla:7810"><span style=3D"color:#3366BB">7810</span></a><o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">The Toaster directory structure does not expand / collapse<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Medium&#43;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Michael&nbsp;Wood<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Cristina&nbsp;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">1.9 M2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">ACCEPTED<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">2015-05-27<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8011"=
 title=3D"bugzilla:8011"><span style=3D"color:#3366BB">8011</span></a><o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Sorting columns breaks Toaster<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Medium&#43;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Alexandru&nbsp;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Mihail&nbsp;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">1.9 M2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">Regression (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:#E=
68A00">2015-07-15<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:14.3pt;background:=
white;orphans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0=
px;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h2 style=3D"margin:0in;margin-bottom:.0001pt;line-height:14.3pt;background=
:white;border:none;padding:0in;orphans: auto;text-align:start;widows: 1;-we=
bkit-text-stroke-width: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Other Bugs foun=
d during QA Test (including regressions)</span></span><span style=3D"font-s=
ize:14.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black;font-weig=
ht:normal"><o:p></o:p></span></h2>
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
<b><span style=3D"color:black">ID<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Summary (15 tasks)<span class=3D"apple-conve=
rted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/bugli=
st.cgi?&amp;field0-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;value0-0-0=3D802=
1&amp;field0-0-1=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0-0-1=3D%208057&a=
mp;field0-0-2=3Dbug_id&amp;type0-0-2=3Dequals&amp;value0-0-2=3D%208059&amp;=
field0-0-3=3Dbug_id&amp;type0-0-3=3Dequals&amp;value0-0-3=3D%208062&amp;fie=
ld0-0-4=3Dbug_id&amp;type0-0-4=3Dequals&amp;value0-0-4=3D%208063&amp;field0=
-0-5=3Dbug_id&amp;type0-0-5=3Dequals&amp;value0-0-5=3D%206156&amp;field0-0-=
6=3Dbug_id&amp;type0-0-6=3Dequals&amp;value0-0-6=3D%206584&amp;field0-0-7=
=3Dbug_id&amp;type0-0-7=3Dequals&amp;value0-0-7=3D%207054&amp;field0-0-8=3D=
bug_id&amp;type0-0-8=3Dequals&amp;value0-0-8=3D%207198&amp;field0-0-9=3Dbug=
_id&amp;type0-0-9=3Dequals&amp;value0-0-9=3D%207897&amp;field0-0-10=3Dbug_i=
d&amp;type0-0-10=3Dequals&amp;value0-0-10=3D%208123&amp;field0-0-11=3Dbug_i=
d&amp;type0-0-11=3Dequals&amp;value0-0-11=3D%208125&amp;field0-0-12=3Dbug_i=
d&amp;type0-0-12=3Dequals&amp;value0-0-12=3D%208126&amp;field0-0-13=3Dbug_i=
d&amp;type0-0-13=3Dequals&amp;value0-0-13=3D%208131&amp;field0-0-14=3Dbug_i=
d&amp;type0-0-14=3Dequals&amp;value0-0-14=3D%208148&amp;field0-1-0=3Dbug_st=
atus&amp;type0-1-0=3Dnotequals&amp;value0-1-0=3DCLOSED"><span style=3D"font=
-family:&quot;Cambria Math&quot;,serif;color:#3366BB">=1B$B"M=1B(B</span></=
a><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">P<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Assignee<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">QA<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Milestone<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Status<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Resolution<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">cf_regression_type<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Created<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"color:#555555">---<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:#BF1919"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D80=
21" title=3D"bugzilla:8021"><span style=3D"color:#3366BB">8021</span></a><o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:#BF1919">Ptest-runner hangs on certain step<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:#BF1919">High<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:#BF1919">Lucian&nbsp;Musat<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:#BF1919">Cristina&nbsp;Agurida<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:#BF1919">1.9 M3<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:#BF1919">NEW<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:#BF1919">---<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:#BF1919">2015-07-16<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"color:#555555">Automated Runtime Testing<o:p></=
o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8057=
" title=3D"bugzilla:8057"><span style=3D"color:#3366BB">8057</span></a><o:p=
></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:black">ptest - E2fsprogs Oprofile Openssh Bash and Kmod ptest packages are=
 skipped<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:black">Medium<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:black">Ross&nbsp;Burton<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:black">Lucian&nbsp;Musat<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:black">1.9 M3<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:black">NEW<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:black">---<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"color=
:black">2015-07-28<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8059" t=
itle=3D"bugzilla:8059"><span style=3D"color:#3366BB">8059</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">ptest - some openssl ptests fail<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Ross&nbsp;Burton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Lucian&nbsp;Musat<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1.9<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2015-07-28<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8062" t=
itle=3D"bugzilla:8062"><span style=3D"color:#3366BB">8062</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">ptest - quilt ptest is broken - has many failures<o:p></o:p></span></p=
>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Ross&nbsp;Burton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Lucian&nbsp;Musat<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1.9<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2015-07-28<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8063" t=
itle=3D"bugzilla:8063"><span style=3D"color:#3366BB">8063</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">ptest - Valgrind ptest is broken - has many failures<o:p></o:p></span>=
</p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Dave&nbsp;Lerner<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Lucian&nbsp;Musat<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1.9<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">IN PROGRESS IMPLEMENTATION<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2015-07-28<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"color:#555555">New (Never tested)<o:p></o:p></s=
pan></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7897" t=
itle=3D"bugzilla:7897"><span style=3D"color:#3366BB">7897</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Dmesg error BAR 14 and BAR 15 failed to assign in Minnow Max<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Low<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Cristina&nbsp;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Cristina&nbsp;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1.9<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">New (Never tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2015-06-17<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"color:#555555">Regression (Found by QA test)<o:=
p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6584" t=
itle=3D"bugzilla:6584"><span style=3D"color:#3366BB">6584</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">dmesg uvesafb: probe of uvesafb.0 failed with error -22 on genericx86/=
genericx86-64 on NUC and MinnowMax<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Saul&nbsp;Wold<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1.9 M3<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">REOPENED<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Regression (Found by QA test)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2014-07-28<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"color:#555555">Regression (Used to work)<o:p></=
o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8123" t=
itle=3D"bugzilla:8123"><span style=3D"color:#3366BB">8123</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">the aarch64 toolchain can not build iptables on i686 host<o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Undecided<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Jessica<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Regression (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2015-08-07<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"color:#555555">OE-Core<o:p></o:p></span></b></p=
>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156" t=
itle=3D"bugzilla:6156"><span style=3D"color:#3366BB">6156</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">[crosstap] no trace message output on qemuarm<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Kevin&nbsp;Hao<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1.9<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">ACCEPTED<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Regression (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2014-04-14<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054" t=
itle=3D"bugzilla:7054"><span style=3D"color:#3366BB">7054</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">OprofileUI needs to be updated to reflect new oprofile functionality<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Ross&nbsp;Burton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Mihail&nbsp;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1.9 M2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">ACCEPTED<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Regression (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2014-12-09<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"color:#555555">Toaster<o:p></o:p></span></b></p=
>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198" t=
itle=3D"bugzilla:7198"><span style=3D"color:#3366BB">7198</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Hiding a sorted column does not revert to default sorting<o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Michael&nbsp;Wood<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Mihail&nbsp;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1.9 M2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Regression (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2015-01-20<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8125" t=
itle=3D"bugzilla:8125"><span style=3D"color:#3366BB">8125</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Filter does not work as expected after clearing the search results<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Undecided<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Alexandru&nbsp;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Cristina&nbsp;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Regression (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2015-08-07<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8126" t=
itle=3D"bugzilla:8126"><span style=3D"color:#3366BB">8126</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Messages are missing when &quot;IMAGE_FSTYPES&quot; field is not prope=
rly edited<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Undecided<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">David&nbsp;Reyna<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Cristina&nbsp;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1.9 M4<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Regression (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2015-08-07<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8131" t=
itle=3D"bugzilla:8131"><span style=3D"color:#3366BB">8131</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">All builds page &quot;Errors&quot;/&quot;Warnings&quot; filters doesn'=
t work<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Undecided<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Alexandru&nbsp;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Cristina&nbsp;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Regression (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2015-08-10<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8148" t=
itle=3D"bugzilla:8148"><span style=3D"color:#3366BB">8148</span></a><o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Sorting the content of the Layer/Machines table doesn't work<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Undecided<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Alexandru&nbsp;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Cristina&nbsp;Agurida<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Regression (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2015-08-11<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"margin:0in;margin-bottom:.0001pt;line-height:14.3pt;background=
:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:14.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black">pTest results for genericx86-64 on=
 NUC</span></span><span style=3D"font-size:14.0pt;font-family:&quot;Calibri=
&quot;,sans-serif;color:black"><o:p></o:p></span></h1>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:19.2pt;text-indent:-.25in;line-=
height:14.3pt;mso-list:l0 level1 lfo2;background:white">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Wingdings;=
color:black"><span style=3D"mso-list:Ignore">=1B$B!x=1B(B<span style=3D"fon=
t:7.0pt &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"color:black">Commit 1.9_M2.rc=
2: c75cefe8a382a63f625123c156137782db118f64<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:19.2pt;text-indent:-.25in;line-=
height:14.3pt;mso-list:l0 level1 lfo2;background:white">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Wingdings;=
color:black"><span style=3D"mso-list:Ignore">=1B$B!x=1B(B<span style=3D"fon=
t:7.0pt &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"color:black">Previous Commit =
1.9_M2.rc1: f9ea480e6c26fea46c3011c4e9d0e2de3d5c81b4<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:14.3pt;background:=
white;orphans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0=
px;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#F9F9F9;border-collapse:collapse;border:none;orp=
hans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0px;word-s=
pacing:0px">
<tbody>
<tr>
<td colspan=3D"7" style=3D"border:none;background:#F0F8FC;padding:2.4pt 2.4=
pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Results<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#F0F8FC;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Package Name<o:p></o:p></span></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#F0F8FC=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Tests ran<o:p></o:p></span></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#F0F8FC=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Passed<o:p></o:p></span></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#F0F8FC=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Failed<o:p></o:p></span></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#F0F8FC=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Passrate<o:p></o:p></span></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#F0F8FC=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Last Passrate<o:p></o:p></span></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#F0F8FC=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">Run difference<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">valgrind<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">561<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">351<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">210<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">63.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">63.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">lttng-tools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">787<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">781<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">99.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">99.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">beecrypt<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">21<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">21<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">diffstat<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">439<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">439<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">strace<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">30<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">24<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">80.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">80.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">acl<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">211<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">197<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">14<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">93.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">93.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">glib-2.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">215<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">214<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">libpcre<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">quilt<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">55<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">52<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">5.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">5.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">pango<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">11<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">10<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">91.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">91.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">gdbm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">11<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">11<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">busybox<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">487<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">473<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">14<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">97.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">97.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">dbus-test<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">15<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">15<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">openssl<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">48<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">19<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">29<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">40.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">40.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">libxml2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">85<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">85<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">udev<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">139<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">139<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">diffutils<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">12<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">12<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">gdk-pixbuf<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">9<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">9<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">tcl<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">148<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">145<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">98.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">98.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">python<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">14187<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">14131<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">56<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">e2fsprogs<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#F78D72;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">attr<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">108<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">108<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">gawk<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">282<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">281<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">perl<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2266<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2257<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">9<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">bzip2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">zlib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">100.0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#C4FF33;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"color:bl=
ack">No<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Regards,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">AlexG<o:p=
></o:p></span></p>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E96260B2CB6irsmsx110gercor_--

--_005_1FFB62CE8AEB0D4298B51122D8903E96260B2CB6irsmsx110gercor_
Content-Type: image/jpeg; name="image002.jpg"
Content-Description: image002.jpg
Content-Disposition: inline; filename="image002.jpg"; size=7789;
	creation-date="Wed, 12 Aug 2015 15:39:19 GMT";
	modification-date="Wed, 12 Aug 2015 15:39:19 GMT"
Content-ID: <image002.jpg@01D0D52E.3216EEC0>
Content-Transfer-Encoding: base64

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

--_005_1FFB62CE8AEB0D4298B51122D8903E96260B2CB6irsmsx110gercor_
Content-Type: image/jpeg; name="image004.jpg"
Content-Description: image004.jpg
Content-Disposition: inline; filename="image004.jpg"; size=6092;
	creation-date="Wed, 12 Aug 2015 15:39:19 GMT";
	modification-date="Wed, 12 Aug 2015 15:39:19 GMT"
Content-ID: <image004.jpg@01D0D52E.3216EEC0>
Content-Transfer-Encoding: base64

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

--_005_1FFB62CE8AEB0D4298B51122D8903E96260B2CB6irsmsx110gercor_--
