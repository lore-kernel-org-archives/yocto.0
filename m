Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24B57E00949; Mon,  9 Feb 2015 09:25:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BEFFE008CF
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 09:25:49 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 09 Feb 2015 09:25:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,545,1418112000"; 
	d="jpg'145?scan'145,208,145,217";a="675219652"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 09 Feb 2015 09:25:06 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.8]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.69]) with mapi id
	14.03.0195.001; Mon, 9 Feb 2015 17:25:05 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Full Pass Test report - Yocto 1.8_M2.rc2
Thread-Index: AdBEi8XWJMDYy9kHQs6EAElDEgrfiwAAU8rQ
Date: Mon, 9 Feb 2015 17:25:04 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E962247A057@irsmsx110.ger.corp.intel.com>
References: <1FFB62CE8AEB0D4298B51122D8903E9622479FE9@irsmsx110.ger.corp.intel.com>
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E9622479FE9@irsmsx110.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Full Pass Test report - Yocto 1.8_M2.rc2
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
X-List-Received-Date: Mon, 09 Feb 2015 17:25:58 -0000
X-Groupsio-MsgNum: 23483
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_1FFB62CE8AEB0D4298B51122D8903E962247A057irsmsx110gercor_"

--_005_1FFB62CE8AEB0D4298B51122D8903E962247A057irsmsx110gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E962247A057irsmsx110gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E962247A057irsmsx110gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the Full Pass test report for Yocto 1.8_M2.rc2 build. The detailed =
report  is available here<https://wiki.yoctoproject.org/wiki/WW06_-_2015-02=
-03_-_Full_Pass_1.8_M2.rc2>. During this build kernel config errors were fi=
xed so the bugs found in rc1 related to networking and sound were fixed.

*       A list with the issues found during the test run can be viewed belo=
w. The list  includes the bugs found during QA test but also bugs which are=
 open and against current milestone(1.8, 1.8 M2). No blockers have been fou=
nd during this build.

*       A regression was found during build performance test when building =
the core-image-sato with rm_work. We have narrowed it down to libtool upstr=
eam changes. With the regression it takes 11 minutes longer on average to b=
uild the image on both testing machines.


Testing data

 Test type:  Full Pass Release Test

 Branch: master

 Build name: 1.8_M2.rc2

 poky commit: 22c38e2d8a058619e3d05534b5e830b750aa4241

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20150202-1/

 Distributions tested: Ubuntu 14.04 64bit, Fedora 21 64bit, Opensuse 13.2 6=
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

3440<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3440> 3441<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3441>

ADT: master branch

Fedora 21 i686

100.0%

7227<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7227>

0.0%

none

0.0%

none

100.0%

3438<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3438> 3439<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3439>

ADT: master branch

Ubuntu 14.04 x86_64

99.1%

7290<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7290>

0.9%

7289<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7289>

0.0%

none

100.0%

3442<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3442> 3443<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3443>

BSP/QEMU: master branch

Beaglebone Black

98.7%

none

1.3%

6665<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6665>

0.0%

none

100.0%

3462<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3462> 3463<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3463>

BSP/QEMU: master branch

EdgeRouter

100.0%

none

0.0%

none

0.0%

none

100.0%

3431<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3431> 3432<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3432>

BSP/QEMU: master branch

generic-x86 on AtomPC

100.0%

none

0.0%

none

0.0%

none

100.0%

3429<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3429> 3430<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3430>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

97.6%

none

2.4%

6584<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6584>

0.0%

none

100.0%

3464<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3464> 3465<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3465>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

3446<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3446> 3447<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3447>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

3454<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3454> 3459<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3459>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

3449<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3449> 3450<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3450>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

3451<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3451> 3455<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3455>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

3457<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3457> 3458<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3458>

BSP/QEMU: master branch

qemuppc

100.0%

7236<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236>

0.0%

none

0.0%

none

100.0%

3456<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3456> 3460<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3460>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

3461<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3461>

Eclipse Plugin: master branch

Ubuntu 14.10 x86_64

97.0%

5769<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5769> 5285<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5285>

3.0%

7054<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054>

0.0%

none

100.0%

3444<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3444> 3445<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3445>

Meta-yocto: master branch

Ubuntu 14.04 x86_64

100.0%

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

0.0%

none

0.0%

none

100.0%

3433<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3433> 3434<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3434>

Hob: master branch

Ubuntu 14.10 x86_64

97.8%

none

0.0%

none

2.2%

none

100.0%

3452<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3452> 3453<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3453>

Toaster: master branch

Ubuntu 14.04 LTS x86_64

85.0%

7023<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7023> 7025<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7025>

15.0%

7026<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7026> 7004<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7004> 7052<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D7052> 7060<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D7060> 7198<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D7198>

0.0%

none

100.0%

3435<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3435> 3468<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3468>

Toaster: master branch

Ubuntu 14.10 x86_64

85.9%

none

12.5%

6832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6832> 7200<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7200> 7201<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D7201> 5255<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5255> 7283<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D7283> 7005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D700=
5> 7284<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7284> 7285<http=
s://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7285>

1.6%

none

100.0%

3472<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3472> 3473<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3473>

OE-Core: master branch

Ubuntu 14.10 x86_64

96.6%

none

3.4%

6804<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6804>

0.0%

none

100.0%

3466<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3466> 3467<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3467>

BitBake: master branch

Ubuntu 14.10 x86_64

97.3%

none

0.0%

none

2.7%

none

100.0%

3437<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3437>

Runtime: master branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

3448<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3448>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

7288<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7288> 7300<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7300>

0.0%

none

0.0%

none

100.0%

Total: 22



[Bug Status]


Test Case Status Report

Status

Count

BLOCKED

3

FAILED

20

PASSED

1239

Total: 1262


[http://chart.apis.google.com/chart?cht=3Dbvg&chs=3D372x120&chbh=3Da&chds=
=3D0,1239&chxt=3Dy&chxr=3D0,0,1239,207&chd=3Dt:&chd=3Dt:3,20,1239&chco=3DFF=
FF66|FF9933|00FF00&chdl=3DBLOCKED(3)+0%25|FAILED(20)+2%25|PASSED(1239)+98%2=
5]





Bugs Found during QA Test
New and notable issues Found during QA Test & Community
ID

Summary (5 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.cg=
i?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D7289&field0-0-1=3Dbu=
g_id&type0-0-1=3Dequals&value0-0-1=3D%207290&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%207300&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%207283&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%207285=
&field0-1-0=3Dbug_status&type0-1-0=3Dnotequals&value0-1-0=3DCLOSED>

P

Assignee

QA

Milestone

Status

cf_regression_type

Created

ADT

7289<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7289>

Fail to build iptables with mips toolchain sdk

Medium+

Cristian Iorga



1.8 M3

NEW

Regression (Used to work)

2015-02-05

7290<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7290>

A warning message when installing toolchain sdk if using dash

Medium+

Saul Wold



1.8 M3

NEW

New (Never tested)

2015-02-05

Build Appliance

7300<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7300>

many selectable packages are missing when try to build image in build appli=
ance(build 20150202-1)

Undecided

Cristian Iorga



---

NEW

Regression (Used to work)

2015-02-09

Toaster

7283<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7283>

Toaster fails to start in managed mode due to traceback

High

Alexandru Damian

Ionut Chisanovici

1.8 M3

IN PROGRESS REVIEW

Regression (Used to work)

2015-02-04

7285<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7285>

Toaster managed mode: toaster fails to start a build with meta-selftest add=
ed as a new local layer

High

Alexandru Damian

Ionut Chisanovici

1.8 M3

NEW

New (Never tested)

2015-02-04




Other Bugs found during QA Test (including regressions)
ID

Summary (25 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.c=
gi?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D7236&field0-0-1=3Db=
ug_id&type0-0-1=3Dequals&value0-0-1=3D%206832&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%207227&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%206804&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%207198=
&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%207200&field0-0-6=3Db=
ug_id&type0-0-6=3Dequals&value0-0-6=3D%207201&field0-0-7=3Dbug_id&type0-0-7=
=3Dequals&value0-0-7=3D%206474&field0-0-8=3Dbug_id&type0-0-8=3Dequals&value=
0-0-8=3D%206665&field0-0-9=3Dbug_id&type0-0-9=3Dequals&value0-0-9=3D%206584=
&field0-0-10=3Dbug_id&type0-0-10=3Dequals&value0-0-10=3D%206156&field0-0-11=
=3Dbug_id&type0-0-11=3Dequals&value0-0-11=3D%205769&field0-0-12=3Dbug_id&ty=
pe0-0-12=3Dequals&value0-0-12=3D%205285&field0-0-13=3Dbug_id&type0-0-13=3De=
quals&value0-0-13=3D%205255&field0-0-14=3Dbug_id&type0-0-14=3Dequals&value0=
-0-14=3D%207060&field0-0-15=3Dbug_id&type0-0-15=3Dequals&value0-0-15=3D%207=
052&field0-0-16=3Dbug_id&type0-0-16=3Dequals&value0-0-16=3D%207054&field0-0=
-17=3Dbug_id&type0-0-17=3Dequals&value0-0-17=3D%207023&field0-0-18=3Dbug_id=
&type0-0-18=3Dequals&value0-0-18=3D%207025&field0-0-19=3Dbug_id&type0-0-19=
=3Dequals&value0-0-19=3D%207026&field0-0-20=3Dbug_id&type0-0-20=3Dequals&va=
lue0-0-20=3D%207004&field0-0-21=3Dbug_id&type0-0-21=3Dequals&value0-0-21=3D=
%207005&field0-0-22=3Dbug_id&type0-0-22=3Dequals&value0-0-22=3D%207284&fiel=
d0-0-23=3Dbug_id&type0-0-23=3Dequals&value0-0-23=3D%207288&field0-0-24=3Dbu=
g_id&type0-0-24=3Dequals&value0-0-24=3D%205589&field0-1-0=3Dbug_status&type=
0-1-0=3Dnotequals&value0-1-0=3DCLOSED>

P

Assignee

QA

Milestone

Status

cf_regression_type

Created

---

6474<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6474>

genericx86 does not work on Emenlow hardware

Medium+

Darren Hart



1.8

ACCEPTED

---

2014-06-23

OE-Core

5589<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5589>

gst-plugins-* main package itself is useless

Medium+

Cristian Iorga



1.8 M2

ACCEPTED

---

2013-11-22

New (Never tested)

7005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7005>

Toaster UI - two or more projects having the same name can be created

Medium

Belen Barros Pena



1.8 M4

NEW

New (Never tested)

2014-12-02

Toaster

7026<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7026>

All layers page: Sorting does not work

Medium

Michael Wood



1.8

NEW

New (Never tested)

2014-12-03

7060<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7060>

Filters in "All targets" page not working

Medium

Michael Wood



1.8 M3

NEW

New (Never tested)

2014-12-11

7284<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7284>

Toaster managed mode: two or more variables having the same name can be add=
ed for the same project

Medium

David Reyna



1.8 M3

NEW

New (Never tested)

2015-02-04

5255<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5255>

source_url in the tasks table is empty

Medium

Alexandru Damian

Ionut Chisanovici

1.9

ACCEPTED

New (Never tested)

2013-09-23

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

7023<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7023>

All layers page: column head misspelled

Medium

Belen Barros Pena



1.8 M3

IN PROGRESS REVIEW

New (Never tested)

2014-12-03

7052<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7052>

Filters in the all layers page return only the information shown in the pag=
e

Medium

Michael Wood

<span style=3D'font-size:

--_000_1FFB62CE8AEB0D4298B51122D8903E962247A057irsmsx110gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html>
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
	{font-family:Gulim;
	panose-1:2 11 6 0 0 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:GulimChe;
	panose-1:2 11 6 9 0 1 1 1 1 1;}
@font-face
	{font-family:"\@Gulim";
	panose-1:2 11 6 0 0 1 1 1 1 1;}
@font-face
	{font-family:"\@GulimChe";
	panose-1:2 11 6 9 0 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:KO;}
h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:24.0pt;
	font-family:"Times New Roman",serif;
	mso-fareast-language:KO;
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
	mso-fareast-language:KO;
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
	mso-fareast-language:KO;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	mso-fareast-language:KO;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:KO;}
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
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.EmailStyle26
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
/* List Definitions */
@list l0
	{mso-list-id:369497384;
	mso-list-type:hybrid;
	mso-list-template-ids:-1444755202 67698689 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
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
	{mso-list-id:519467225;
	mso-list-template-ids:438883764;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2
	{mso-list-id:1451052682;
	mso-list-template-ids:-1443300264;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
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
@list l3
	{mso-list-id:1714117737;
	mso-list-template-ids:-422788338;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level9
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span class=3D"mw-headline"><span style=3D"font-size=
:12.0pt;color:black">Hello,<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span class=3D"mw-headline"><span style=3D"font-size=
:12.0pt;color:black">Here is the Full Pass test report for Yocto 1.8_M2.rc2=
 build. The detailed report &nbsp;is available
<a href=3D"https://wiki.yoctoproject.org/wiki/WW06_-_2015-02-03_-_Full_Pass=
_1.8_M2.rc2">
<span style=3D"text-decoration:none">here</span></a>. During this build ker=
nel config errors were fixed so the bugs found in rc1 related to networking=
 and sound were fixed.<o:p></o:p></span></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span class=3D"mw-headline"><span style=3D"fon=
t-size:12.0pt;font-family:Symbol;color:black"><span style=3D"mso-list:Ignor=
e">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3D"mw-headline"><span sty=
le=3D"font-size:12.0pt;color:black">A list with the issues found during the=
 test run can be viewed below. The list &nbsp;includes the bugs found durin=
g QA test but also bugs which are open and
 against current milestone(1.8, 1.8 M2). No blockers have been found during=
 this build.<o:p></o:p></span></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span class=3D"mw-headline"><span style=3D"fon=
t-size:12.0pt;font-family:Symbol;color:black"><span style=3D"mso-list:Ignor=
e">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3D"mw-headline"><span sty=
le=3D"font-size:12.0pt;color:black">A regression was found during build per=
formance test when building the core-image-sato with rm_work. We have narro=
wed it down to libtool upstream changes.
 With the regression it takes 11 minutes longer on average to build the ima=
ge on both testing machines.<o:p></o:p></span></span></p>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal"><o:p>&nbsp;</o:=
p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Testing data</s=
pan></span><o:p></o:p></h1>
</div>
<div style=3D"border:dashed #2F6FAB 1.0pt;padding:12.0pt 12.0pt 12.0pt 12.0=
pt">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;orphans: auto;text-alig=
n:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"> Test typ=
e:&nbsp; Full Pass Release Test<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black"> Branch: master<o:p></o:p>=
</span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black"> Build name: 1.8_M2.rc2<o:=
p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black"> poky commit: 22c38e2d8a05=
8619e3d05534b5e830b750aa4241 <o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;Autobuilder images r=
epository: <a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20150=
202-1/">http://autobuilder.yoctoproject.org/pub/nightly/20150202-1/</a><o:p=
></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black"> Distributions tested: Ubu=
ntu 14.04 64bit, Fedora 21 64bit, Opensuse 13.2 64bit, CentOS 7 64 bit <o:p=
></o:p></span></pre>
</div>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white;orphans: auto;text-align:start;widows: auto;-webkit-text-str=
oke-width: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-weight:nor=
mal"><o:p>&nbsp;</o:p></span></span></h1>
<h1 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Test Run Summar=
y Report</span></span><o:p></o:p></h1>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0" style=3D"background:white;orphans: auto;text-align:start;widows: aut=
o;-webkit-text-stroke-width: 0px;word-spacing:0px">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse">
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Run<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Plan<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Environment<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Passed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Other issues<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Failed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Failing bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Blocked<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Blocking bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Complete<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3440"><span style=3D"col=
or:#5A3696">3440</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
41"><span style=3D"color:#5A3696">3441</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">ADT: master branch<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Fedora 21 i686<o:p>=
</o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7227"><span style=3D"color:#5A3=
696">7227</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3438"><span style=3D"col=
or:#5A3696">3438</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
39"><span style=3D"color:#5A3696">3439</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">ADT: master branch<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">99.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7290"><span style=3D"color:#5A3=
696">7290</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7289"><span style=3D"color:#5A3=
696">7289</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3442"><span style=3D"col=
or:#5A3696">3442</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
43"><span style=3D"color:#5A3696">3443</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BSP/QEMU: master br=
anch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Beaglebone Black<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">98.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6665"><span style=3D"color:#5A3=
696">6665</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3462"><span style=3D"col=
or:#5A3696">3462</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
63"><span style=3D"color:#5A3696">3463</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BSP/QEMU: master br=
anch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">EdgeRouter<o:p></o:=
p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3431"><span style=3D"col=
or:#5A3696">3431</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
32"><span style=3D"color:#5A3696">3432</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BSP/QEMU: master br=
anch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">generic-x86 on Atom=
PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3429"><span style=3D"col=
or:#5A3696">3429</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
30"><span style=3D"color:#5A3696">3430</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BSP/QEMU: master br=
anch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">genericx86-64 on Su=
garbay<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">97.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">2.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6584"><span style=3D"color:#5A3=
696">6584</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3464"><span style=3D"col=
or:#5A3696">3464</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
65"><span style=3D"color:#5A3696">3465</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BSP/QEMU: master br=
anch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">MPC8315e-rdb<o:p></=
o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3446"><span style=3D"col=
or:#5A3696">3446</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
47"><span style=3D"color:#5A3696">3447</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BSP/QEMU: master br=
anch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">P1022ds<o:p></o:p><=
/span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3454"><span style=3D"col=
or:#5A3696">3454</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
59"><span style=3D"color:#5A3696">3459</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BSP/QEMU: master br=
anch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">qemu-x86<o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3449"><span style=3D"col=
or:#5A3696">3449</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
50"><span style=3D"color:#5A3696">3450</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BSP/QEMU: master br=
anch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">qemuarm<o:p></o:p><=
/span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3451"><span style=3D"col=
or:#5A3696">3451</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
55"><span style=3D"color:#5A3696">3455</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BSP/QEMU: master br=
anch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">qemumips<o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3457"><span style=3D"col=
or:#5A3696">3457</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
58"><span style=3D"color:#5A3696">3458</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BSP/QEMU: master br=
anch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">qemuppc<o:p></o:p><=
/span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236"><span style=3D"color:#5A3=
696">7236</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3456"><span style=3D"col=
or:#5A3696">3456</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
60"><span style=3D"color:#5A3696">3460</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BSP/QEMU: master br=
anch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">qemux86-64<o:p></o:=
p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3461"><span style=3D"col=
or:#5A3696">3461</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Eclipse Plugin: mas=
ter branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Ubuntu 14.10 x86_64=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">97.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D5769"><span style=3D"color:#5A3=
696">5769</span></a><span class=3D"apple-converted-space">&nbsp;</span><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5285"><span styl=
e=3D"color:#5A3696">5285</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">3.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054"><span style=3D"color:#5A3=
696">7054</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3444"><span style=3D"col=
or:#5A3696">3444</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
45"><span style=3D"color:#5A3696">3445</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Meta-yocto: master =
branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156"><span style=3D"color:#5A3=
696">6156</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3433"><span style=3D"col=
or:#5A3696">3433</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
34"><span style=3D"color:#5A3696">3434</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Hob: master branch<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Ubuntu 14.10 x86_64=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">97.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">2.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3452"><span style=3D"col=
or:#5A3696">3452</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
53"><span style=3D"color:#5A3696">3453</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Toaster: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Ubuntu 14.04 LTS x8=
6_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;color:black">85.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7023"><span style=3D"color:#5A3=
696">7023</span></a><span class=3D"apple-converted-space">&nbsp;</span><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7025"><span styl=
e=3D"color:#5A3696">7025</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">15.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7026"><span style=3D"color:#5A3=
696">7026</span></a><span class=3D"apple-converted-space">&nbsp;</span><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7004"><span styl=
e=3D"color:#5A3696">7004</span></a><span class=3D"apple-converted-space">&n=
bsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7=
052"><span style=3D"color:#5A3696">7052</span></a><span class=3D"apple-conv=
erted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D7060"><span style=3D"color:#5A3696">7060</span></a><span clas=
s=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctop=
roject.org/show_bug.cgi?id=3D7198"><span style=3D"color:#5A3696">7198</span=
></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3435"><span style=3D"col=
or:#5A3696">3435</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
68"><span style=3D"color:#5A3696">3468</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Toaster: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Ubuntu 14.10 x86_64=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;color:black">85.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">12.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6832"><span style=3D"color:#5A3=
696">6832</span></a><span class=3D"apple-converted-space">&nbsp;</span><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7200"><span styl=
e=3D"color:#5A3696">7200</span></a><span class=3D"apple-converted-space">&n=
bsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7=
201"><span style=3D"color:#5A3696">7201</span></a><span class=3D"apple-conv=
erted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5255"><span style=3D"color:#5A3696">5255</span></a><span clas=
s=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctop=
roject.org/show_bug.cgi?id=3D7283"><span style=3D"color:#5A3696">7283</span=
></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7005"><span style=3D"color:#5A3=
696">7005</span></a><span class=3D"apple-converted-space">&nbsp;</span><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7284"><span styl=
e=3D"color:#5A3696">7284</span></a><span class=3D"apple-converted-space">&n=
bsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7=
285"><span style=3D"color:#5A3696">7285</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3472"><span style=3D"col=
or:#5A3696">3472</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
73"><span style=3D"color:#5A3696">3473</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">OE-Core: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Ubuntu 14.10 x86_64=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">96.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">3.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6804"><span style=3D"color:#5A3=
696">6804</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3466"><span style=3D"col=
or:#5A3696">3466</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D34=
67"><span style=3D"color:#5A3696">3467</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BitBake: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Ubuntu 14.10 x86_64=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">97.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">2.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3437"><span style=3D"col=
or:#5A3696">3437</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Runtime: master bra=
nch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Multiple Environmen=
ts<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3448"><span style=3D"col=
or:#5A3696">3448</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Build Appliance: ma=
ster branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">qemu-kvm on Ubuntu =
12.04 libvirt<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7288"><span style=3D"color:#5A3=
696">7288</span></a><span class=3D"apple-converted-space">&nbsp;</span><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7300"><span styl=
e=3D"color:#5A3696">7300</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">none<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Total: 22</span>=
</b><span style=3D"font-size:10.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:18.0pt"><span styl=
e=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><br>
<img border=3D"0" width=3D"558" height=3D"180" id=3D"Picture_x0020_5" src=
=3D"cid:image011.jpg@01D0449C.A556A3D0" alt=3D"Bug Status"><o:p></o:p></spa=
n></p>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:18.0pt"><span styl=
e=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse">
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Count<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">BLOCKED<o:p></o:p><=
/span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">3<o:p></o:p></span>=
</p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">FAILED<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">20<o:p></o:p></span=
></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">PASSED<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">1239<o:p></o:p></sp=
an></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Total: 1262</spa=
n></b><span style=3D"font-size:10.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><img border=3D"0" w=
idth=3D"558" height=3D"180" id=3D"Picture_x0020_4" src=3D"cid:image012.jpg@=
01D0449C.A556A3D0" alt=3D"http://chart.apis.google.com/chart?cht=3Dbvg&amp;=
chs=3D372x120&amp;chbh=3Da&amp;chds=3D0,1239&amp;chxt=3Dy&amp;chxr=3D0,0,12=
39,207&amp;chd=3Dt:&amp;chd=3Dt:3,20,1239&amp;chco=3DFFFF66|FF9933|00FF00&a=
mp;chdl=3DBLOCKED(3)&#43;0%25|FAILED(20)&#43;2%25|PASSED(1239)&#43;98%25"><=
o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Gu=
lim&quot;,sans-serif"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:12.0pt;=
margin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-alig=
n:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;overflow:hidden;wo=
rd-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Bugs Found duri=
ng QA Test</span></span><span style=3D"font-size:18.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:black;font-weight:normal"><o:p></o:p></span><=
/h1>
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;overflow:hidden;wo=
rd-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:red;font-weight:normal">New and notable i=
ssues Found during QA Test &amp; Community</span></span><span style=3D"font=
-size:14.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black;font-we=
ight:normal"><o:p></o:p></span></h2>
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
<b><span style=3D"font-size:10.0pt;color:black">ID<o:p></o:p></span></b></p=
>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">Summary (5 tasks)<span clas=
s=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctop=
roject.org/buglist.cgi?&amp;field0-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;=
value0-0-0=3D7289&amp;field0-0-1=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0=
-0-1=3D%207290&amp;field0-0-2=3Dbug_id&amp;type0-0-2=3Dequals&amp;value0-0-=
2=3D%207300&amp;field0-0-3=3Dbug_id&amp;type0-0-3=3Dequals&amp;value0-0-3=
=3D%207283&amp;field0-0-4=3Dbug_id&amp;type0-0-4=3Dequals&amp;value0-0-4=3D=
%207285&amp;field0-1-0=3Dbug_status&amp;type0-1-0=3Dnotequals&amp;value0-1-=
0=3DCLOSED"><span style=3D"font-family:&quot;Cambria Math&quot;,serif;color=
:#3366BB">=1B$B"M=1B(B</span></a><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">P<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">Assignee<o:p></o:p></span><=
/b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">QA<o:p></o:p></span></b></p=
>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">Milestone<o:p></o:p></span>=
</b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">Status<o:p></o:p></span></b=
></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">cf_regression_type<o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">Created<o:p></o:p></span></=
b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:10.0pt;color:#555555">ADT<o:p></o:p><=
/span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00"><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D7289" title=3D"bugzilla:7289"><span style=3D"color:#3366BB">728=
9</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">Fail to build iptables with mips toolchain sdk<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">Medium&#43;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">Cristian&nbsp;Iorga<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">1.8 M3<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">Regression (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">2015-02-05<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00"><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D7290" title=3D"bugzilla:7290"><span style=3D"color:#3366BB">729=
0</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">A warning message when installing toolchain sdk if =
using dash<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">Medium&#43;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">Saul&nbsp;Wold<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">1.8 M3<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">New (Never tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">2015-02-05<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:10.0pt;color:#555555">Build Appliance=
<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D7300" title=3D"bugzilla:7300"><span style=3D"color:#3366BB">7300<=
/span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">many selectable packages are missing when try to buil=
d image in build appliance(build 20150202-1)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Undecided<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Cristian&nbsp;Iorga<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Regression (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">2015-02-09<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:10.0pt;color:#555555">Toaster<o:p></o=
:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919"><a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D7283" title=3D"bugzilla:7283"><span style=3D"color:#3366BB">=
7283</span></a><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">Toaster fails to start in managed mode due to tr=
aceback<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">High<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">Alexandru&nbsp;Damian<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">Ionut&nbsp;Chisanovici<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">1.8 M3<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">IN PROGRESS REVIEW<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">Regression (Used to work)<o:p></o:p></span></b><=
/p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">2015-02-04<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919"><a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D7285" title=3D"bugzilla:7285"><span style=3D"color:#3366BB">=
7285</span></a><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">Toaster managed mode: toaster fails to start a b=
uild with meta-selftest added as a new local layer<o:p></o:p></span></b></p=
>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">High<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">Alexandru&nbsp;Damian<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">Ionut&nbsp;Chisanovici<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">1.8 M3<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">NEW<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">New (Never tested)<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:#BF1919">2015-02-04<o:p></o:p></span></b></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;overflow:hidden;wo=
rd-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Other Bugs foun=
d during QA Test (including regressions)</span></span><span style=3D"font-s=
ize:14.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black;font-weig=
ht:normal"><o:p></o:p></span></h2>
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
<b><span style=3D"font-size:10.0pt;color:black">ID<o:p></o:p></span></b></p=
>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">Summary (25 tasks)<span cla=
ss=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yocto=
project.org/buglist.cgi?&amp;field0-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp=
;value0-0-0=3D7236&amp;field0-0-1=3Dbug_id&amp;type0-0-1=3Dequals&amp;value=
0-0-1=3D%206832&amp;field0-0-2=3Dbug_id&amp;type0-0-2=3Dequals&amp;value0-0=
-2=3D%207227&amp;field0-0-3=3Dbug_id&amp;type0-0-3=3Dequals&amp;value0-0-3=
=3D%206804&amp;field0-0-4=3Dbug_id&amp;type0-0-4=3Dequals&amp;value0-0-4=3D=
%207198&amp;field0-0-5=3Dbug_id&amp;type0-0-5=3Dequals&amp;value0-0-5=3D%20=
7200&amp;field0-0-6=3Dbug_id&amp;type0-0-6=3Dequals&amp;value0-0-6=3D%20720=
1&amp;field0-0-7=3Dbug_id&amp;type0-0-7=3Dequals&amp;value0-0-7=3D%206474&a=
mp;field0-0-8=3Dbug_id&amp;type0-0-8=3Dequals&amp;value0-0-8=3D%206665&amp;=
field0-0-9=3Dbug_id&amp;type0-0-9=3Dequals&amp;value0-0-9=3D%206584&amp;fie=
ld0-0-10=3Dbug_id&amp;type0-0-10=3Dequals&amp;value0-0-10=3D%206156&amp;fie=
ld0-0-11=3Dbug_id&amp;type0-0-11=3Dequals&amp;value0-0-11=3D%205769&amp;fie=
ld0-0-12=3Dbug_id&amp;type0-0-12=3Dequals&amp;value0-0-12=3D%205285&amp;fie=
ld0-0-13=3Dbug_id&amp;type0-0-13=3Dequals&amp;value0-0-13=3D%205255&amp;fie=
ld0-0-14=3Dbug_id&amp;type0-0-14=3Dequals&amp;value0-0-14=3D%207060&amp;fie=
ld0-0-15=3Dbug_id&amp;type0-0-15=3Dequals&amp;value0-0-15=3D%207052&amp;fie=
ld0-0-16=3Dbug_id&amp;type0-0-16=3Dequals&amp;value0-0-16=3D%207054&amp;fie=
ld0-0-17=3Dbug_id&amp;type0-0-17=3Dequals&amp;value0-0-17=3D%207023&amp;fie=
ld0-0-18=3Dbug_id&amp;type0-0-18=3Dequals&amp;value0-0-18=3D%207025&amp;fie=
ld0-0-19=3Dbug_id&amp;type0-0-19=3Dequals&amp;value0-0-19=3D%207026&amp;fie=
ld0-0-20=3Dbug_id&amp;type0-0-20=3Dequals&amp;value0-0-20=3D%207004&amp;fie=
ld0-0-21=3Dbug_id&amp;type0-0-21=3Dequals&amp;value0-0-21=3D%207005&amp;fie=
ld0-0-22=3Dbug_id&amp;type0-0-22=3Dequals&amp;value0-0-22=3D%207284&amp;fie=
ld0-0-23=3Dbug_id&amp;type0-0-23=3Dequals&amp;value0-0-23=3D%207288&amp;fie=
ld0-0-24=3Dbug_id&amp;type0-0-24=3Dequals&amp;value0-0-24=3D%205589&amp;fie=
ld0-1-0=3Dbug_status&amp;type0-1-0=3Dnotequals&amp;value0-1-0=3DCLOSED"><sp=
an style=3D"font-family:&quot;Cambria Math&quot;,serif;color:#3366BB">=1B$B=
"M=1B(B</span></a><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">P<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">Assignee<o:p></o:p></span><=
/b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">QA<o:p></o:p></span></b></p=
>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">Milestone<o:p></o:p></span>=
</b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">Status<o:p></o:p></span></b=
></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">cf_regression_type<o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;color:black">Created<o:p></o:p></span></=
b></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:10.0pt;color:#555555">---<o:p></o:p><=
/span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00"><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D6474" title=3D"bugzilla:6474"><span style=3D"color:#3366BB">647=
4</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">genericx86 does not work on Emenlow hardware<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">Medium&#43;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">Darren&nbsp;Hart<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">1.8<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">ACCEPTED<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">2014-06-23<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:10.0pt;color:#555555">OE-Core<o:p></o=
:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00"><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5589" title=3D"bugzilla:5589"><span style=3D"color:#3366BB">558=
9</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">gst-plugins-* main package itself is useless<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">Medium&#43;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">Cristian&nbsp;Iorga<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">1.8 M2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">ACCEPTED<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:#E68A00">2013-11-22<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:10.0pt;color:#555555">New (Never test=
ed)<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D7005" title=3D"bugzilla:7005"><span style=3D"color:#3366BB">7005<=
/span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Toaster UI - two or more projects having the same nam=
e can be created<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Belen&nbsp;Barros&nbsp;Pena<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">1.8 M4<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">New (Never tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">2014-12-02<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" valign=3D"top" style=3D"border-top:none;border-left:solid=
 #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F0=
 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:10.0pt;color:#555555">Toaster<o:p></o=
:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D7026" title=3D"bugzilla:7026"><span style=3D"color:#3366BB">7026<=
/span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">All layers page: Sorting does not work<o:p></o:p></sp=
an></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Michael&nbsp;Wood<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">1.8<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">New (Never tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">2014-12-03<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D7060" title=3D"bugzilla:7060"><span style=3D"color:#3366BB">7060<=
/span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Filters in &quot;All targets&quot; page not working<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Michael&nbsp;Wood<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">1.8 M3<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">New (Never tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">2014-12-11<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D7284" title=3D"bugzilla:7284"><span style=3D"color:#3366BB">72=
84</span></a><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:black">Toaster managed mode: two or more variables having=
 the same name can be added for the same project<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:black">Medium<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:black">David&nbsp;Reyna<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:black">&nbsp;<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:black">1.8 M3<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:black">NEW<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:black">New (Never tested)<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:10.0pt;color:black">2015-02-04<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D5255" title=3D"bugzilla:5255"><span style=3D"color:#3366BB">5255<=
/span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">source_url in the tasks table is empty<o:p></o:p></sp=
an></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Alexandru&nbsp;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Ionut&nbsp;Chisanovici<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">1.9<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">ACCEPTED<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">New (Never tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">2013-09-23<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D6832" title=3D"bugzilla:6832"><span style=3D"color:#3366BB">6832<=
/span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">disk_io value in database doesn't match sometime with=
 the value in the task buildstats file<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Alexandru&nbsp;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Ionut&nbsp;Chisanovici<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">1.8 M3<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">REOPENED<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">New (Never tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">2014-10-14<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D7023" title=3D"bugzilla:7023"><span style=3D"color:#3366BB">7023<=
/span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">All layers page: column head misspelled<o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Belen&nbsp;Barros&nbsp;Pena<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">1.8 M3<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">New (Never tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">2014-12-03<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D7052" title=3D"bugzilla:7052"><span style=3D"color:#3366BB">7052<=
/span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Filters in the all layers page return only the inform=
ation shown in the page<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;color:black">Michael&nbsp;Wood<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt">&lt;span style=3D'font-=
size:</p>
</td>
</tr>
</tbody>
</table>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E962247A057irsmsx110gercor_--

--_005_1FFB62CE8AEB0D4298B51122D8903E962247A057irsmsx110gercor_
Content-Type: image/jpeg; name="image011.jpg"
Content-Description: image011.jpg
Content-Disposition: attachment; filename="image011.jpg"; size=9715;
	creation-date="Mon, 09 Feb 2015 17:18:52 GMT";
	modification-date="Mon, 09 Feb 2015 17:18:52 GMT"
Content-ID: <image011.jpg@01D0449C.A556A3D0>
Content-Transfer-Encoding: base64

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

--_005_1FFB62CE8AEB0D4298B51122D8903E962247A057irsmsx110gercor_
Content-Type: image/jpeg; name="image012.jpg"
Content-Description: image012.jpg
Content-Disposition: attachment; filename="image012.jpg"; size=7503;
	creation-date="Mon, 09 Feb 2015 17:18:52 GMT";
	modification-date="Mon, 09 Feb 2015 17:18:52 GMT"
Content-ID: <image012.jpg@01D0449C.A556A3D0>
Content-Transfer-Encoding: base64

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

--_005_1FFB62CE8AEB0D4298B51122D8903E962247A057irsmsx110gercor_--
