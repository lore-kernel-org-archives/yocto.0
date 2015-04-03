Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE2A1E0091F; Fri,  3 Apr 2015 07:54:01 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72B6BE00906
	for <yocto@yoctoproject.org>; Fri,  3 Apr 2015 07:53:58 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2015 07:53:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,518,1422950400"; 
	d="jpg'145?scan'145,208,217,145";a="690028465"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
	by fmsmga001.fm.intel.com with ESMTP; 03 Apr 2015 07:53:54 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.247]) by
	IRSMSX108.ger.corp.intel.com ([169.254.11.216]) with mapi id
	14.03.0224.002; Fri, 3 Apr 2015 15:53:53 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.8_M4.rc1 Full Pass test report.
Thread-Index: AQHQbh04DzWoDTrQLEOBVPFDroL56Z07XkPg
Date: Fri, 3 Apr 2015 14:53:52 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E96224C82B4@irsmsx110.ger.corp.intel.com>
References: <D1434C07.19040%alexandru.c.georgescu@intel.com>
In-Reply-To: <D1434C07.19040%alexandru.c.georgescu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Yocto 1.8_M4.rc1 Full Pass test report.
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
X-List-Received-Date: Fri, 03 Apr 2015 14:54:01 -0000
X-Groupsio-MsgNum: 24317
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_1FFB62CE8AEB0D4298B51122D8903E96224C82B4irsmsx110gercor_";
	type="multipart/alternative"

--_004_1FFB62CE8AEB0D4298B51122D8903E96224C82B4irsmsx110gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E96224C82B4irsmsx110gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E96224C82B4irsmsx110gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

+ resending with the right formatting

Hello,

Here is the Full pass test report for Yocto 1.8_M4.rc1.
Below you can view the summary report. The full pass test report is availab=
le on the wiki: https://wiki.yoctoproject.org/wiki/WW13_-_2015-03-25_-_Full=
_Pass_1.8_M4.rc1 including the Distro test results and build performance te=
st.


Testing data

 Test type:  Full Pass Release Test

 Branch: master

 Build name: 1.8_M4.rc1

 poky commit: 8b3d3e7c957ad06c390886487f69aeb8e145da6a

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rel=
eases/yocto-1.8_M4.rc1/

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

3645<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3645> 3646<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3646>

ADT: master branch

Fedora 21 i686

98.5%

none

1.5%

7536<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7536> 7545<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7545>

0.0%

none

100.0%

3647<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3647> 3648<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3648>

ADT: master branch

Ubuntu 14.04 x86_64

98.5%

none

1.5%

7536<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7536> 7545<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7545>

0.0%

none

100.0%

3651<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3651> 3652<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3652>

BSP/QEMU: master branch

Beaglebone Black

98.7%

none

1.3%

7543<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7543>

0.0%

none

100.0%

3657<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3657> 3658<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3658>

BSP/QEMU: master branch

EdgeRouter

100.0%

none

0.0%

none

0.0%

none

100.0%

3632<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3632> 3633<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3633>

BSP/QEMU: master branch

generic-x86 on AtomPC

98.8%

none

1.2%

7532<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7532>

0.0%

none

100.0%

3630<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3630> 3631<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3631>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

100.0%

none

0.0%

none

0.0%

none

100.0%

3659<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3659> 3660<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3660>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

3653<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3653> 3655<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3655>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

3634<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3634> 3635<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3635>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

3638<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3638> 3639<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3639>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

3640<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3640> 3641<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3641>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

3642<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3642> 3643<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3643>

BSP/QEMU: master branch

qemuppc

100.0%

7236<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236>

0.0%

none

0.0%

none

100.0%

3636<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3636> 3637<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3637>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

3625<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3625>

Eclipse Plugin: master branch

Fedora 21 x86_64

36.4%

none

3.0%

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163> 7530<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7530>

60.6%

7530<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7530>

100.0%

3649<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3649> 3650<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3650>

Meta-yocto: master branch

Ubuntu 14.04 x86_64

100.0%

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

0.0%

none

0.0%

none

100.0%

3622<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3622> 3623<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3623>

Hob: master branch

Ubuntu 14.10 x86_64

95.6%

none

0.0%

none

4.4%

none

100.0%

3616<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3616> 3617<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3617> 3618<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3618> 3619<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3619>

Toaster: master branch

Ubuntu 14.10 x86_64

90.5%

7025<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7025>

7.8%

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187> 7537<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7537> 7026<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D7026> 7198<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D7198>

1.7%

none

100.0%

3626<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3626> 3627<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3627>

OE-Core: master branch

Ubuntu 14.10 x86_64

96.6%

none

3.4%

7522<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7522>

0.0%

none

100.0%

3628<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3628> 3629<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3629>

BitBake: master branch

Ubuntu 14.10 x86_64

97.4%

none

0.0%

none

2.6%

none

100.0%

3644<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3644>

Runtime: master branch

Ubuntu 14.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3661<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3661>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

7426<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7426> 7544<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7544>

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

25

FAILED

17

PASSED

1269

Total: 1311


[http://chart.apis.google.com/chart?cht=3Dbvg&chs=3D372x120&chbh=3Da&chds=
=3D0,1269&chxt=3Dy&chxr=3D0,0,1269,212&chd=3Dt:&chd=3Dt:25,17,1269&chco=3DF=
FFF66|FF9933|00FF00&chdl=3DBLOCKED(25)+2%25|FAILED(17)+1%25|PASSED(1269)+97=
%25]





Bugs Found during QA Test
New and notable issues Found during QA Test & Community
ID

Summary (7 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.cg=
i?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D7426&field0-0-1=3Dbu=
g_id&type0-0-1=3Dequals&value0-0-1=3D%207522&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%207530&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%207532&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%207536=
&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%207543&field0-0-6=3Db=
ug_id&type0-0-6=3Dequals&value0-0-6=3D%207545&field0-1-0=3Dbug_status&type0=
-1-0=3Dnotequals&value0-1-0=3DCLOSED>

P

Assignee

QA

Milestone

Status

Resolution

cf_regression_type

Created

ADT

7545<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7545>

Failed to install sdk ext

Medium

Randy Witt

Yi Zhao

1.9 M1

NEW

New (Never tested)

2015-03-31

7536<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7536>

The manifest file is empty for sdk ext

Medium

Randy Witt

Yi Zhao

1.9

NEW

New (Never tested)

2015-03-30

BSPs

7543<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7543>

[BeagleboneBlack] some error message in Xorg.log

Low

Kevin Hao

Yi Zhao

1.9

NEW

New (Never tested)

2015-03-31

7532<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7532>

LogParser: Fast TSC calibration failed

Medium

Saul Wold

Lucian Musat

1.9

NEW

New (Never tested)

2015-03-27

Eclipse Plugin

7530<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7530>

QEMU does not start when run as external tool

Medium

Cristian Iorga

Mihail Stanciu

1.8 M4

RESOLVED

WORKSFORME

Regression (Used to work)

2015-03-27

Hob

7426<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7426>

[HOB]when build qemu images, there's no "ext4" option in "advanced configur=
ation"

Undecided

Richard Purdie



---

RESOLVED

FIXED

---

2015-03-09

OE-Core

7522<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7522>

missing file "sstate-build-populate_lic" during oe-selftest

Medium+

Richard Purdie

Mihail Stanciu

1.8 M4

RESOLVED

FIXED

Regression (Used to work)

2015-03-26




Other Bugs found during QA Test (including regressions)
ID

Summary (11 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.c=
gi?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D5163&field0-0-1=3Db=
ug_id&type0-0-1=3Dequals&value0-0-1=3D%205187&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%206156&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%207025&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%207026=
&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%207198&field0-0-6=3Db=
ug_id&type0-0-6=3Dequals&value0-0-6=3D%207236&field0-0-7=3Dbug_id&type0-0-7=
=3Dequals&value0-0-7=3D%207529&field0-0-8=3Dbug_id&type0-0-8=3Dequals&value=
0-0-8=3D%207531&field0-0-9=3Dbug_id&type0-0-9=3Dequals&value0-0-9=3D%207537=
&field0-0-10=3Dbug_id&type0-0-10=3Dequals&value0-0-10=3D%207544&field0-1-0=
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

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

no external tools displayed when first trying to run QEMU - test case 48 fa=
iled on Ubuntu 12.04 x86-64 host(build 1.5 M4 rc2)

Medium

David Reyna



Future

ACCEPTED

---

2013-09-11

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

7025<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7025>

View all targets: graphical overlap in table

Medium

Belen Barros Pena

Mihail Stanciu

1.8 M4

NEW

New (Never tested)

2014-12-03

7026<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7026>

All layers page: Sorting does not work

Medium

Michael Wood

Mihail Stanciu

1.8 M4

REOPENED

New (Never tested)

2014-12-03

Regression (Used to work)

7544<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7544>

[Build Appliance] Hob exception when build an image

Undecided

Cristian Iorga

Yi Zhao

---

RESOLVED

WORKSFORME

Regression (Used to work)

2015-03-31

OE-Core

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

[crosstap] no trace message output on qemuarm

Medium

Tom Zanussi



1.8

ACCEPTED

Regression (Used to work)

2014-04-14

7531<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7531>

Createme command not found during build

Medium+

Ross Burton

Mihail Stanciu

1.8 M4

RESOLVED

FIXED

Regression (Used to work)

2015-03-27

7529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7529>

Package build errors - files being changed while read

Undecided

Richard Purdie

Mihail Stanciu

---

RESOLVED

FIXED

Regression (Used to work)

2015-03-27

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

7198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198>

Hiding a sorted column does not revert to default sorting

Medium

Michael Wood

Mihail Stanciu

1.8 M4

IN PROGRESS REVIEW

Regression (Used to work)

2015-01-20

7537<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7537>

Toaster fails to build with custom layer added

Undecided

Alexandru Damian

Mihail Stanciu

---

VERIFIED

NOTABUG

Regression (Used to work)

2015-03-30



Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania

--_000_1FFB62CE8AEB0D4298B51122D8903E96224C82B4irsmsx110gercor_
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
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
	font-size:12.0pt;
	font-family:"MS PGothic",sans-serif;
	mso-fareast-language:JA;}
h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:24.0pt;
	font-family:"MS PGothic",sans-serif;
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
	font-family:"MS PGothic",sans-serif;
	mso-fareast-language:JA;
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
	font-family:"MS PGothic",sans-serif;
	mso-fareast-language:JA;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"MS Gothic";
	mso-fareast-language:JA;}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Calibri Light",sans-serif;
	color:#2E74B5;
	mso-fareast-language:JA;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-fareast-language:JA;}
span.Heading2Char
	{mso-style-name:"Heading 2 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 2";
	font-family:"Calibri Light",sans-serif;
	color:#2E74B5;
	mso-fareast-language:JA;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle24
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:#1F497D;mso-fareast-language:EN-US">&#43; resending with the ri=
ght formatting</span><span style=3D"font-family:&quot;Calibri&quot;,sans-se=
rif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Hello,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Here is the Full pass test report for Yocto 1.8_M4.rc1.<=
o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Below you can view the summary report. The full pass tes=
t report is available on the wiki:&nbsp;<a href=3D"https://wiki.yoctoprojec=
t.org/wiki/WW13_-_2015-03-25_-_Full_Pass_1.8_M4.rc1">https://wiki.yoctoproj=
ect.org/wiki/WW13_-_2015-03-25_-_Full_Pass_1.8_M4.rc1</a>&nbsp;including
 the Distro test results and build performance test.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Testing data</s=
pan></span><span style=3D"font-size:18.0pt;font-family:&quot;Calibri&quot;,=
sans-serif;color:black;mso-fareast-language:EN-US;font-weight:normal"><o:p>=
</o:p></span></h1>
</div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
;orphans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0px;wo=
rd-spacing:0px"><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;c=
olor:black"> Test type:&nbsp; Full Pass Release Test<o:p></o:p></span></pre=
>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"> B=
ranch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"> B=
uild name: 1.8_M4.rc1<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"> p=
oky commit: 8b3d3e7c957ad06c390886487f69aeb8e145da6a <o:p></o:p></span></pr=
e>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">&n=
bsp;Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/=
releases/yocto-1.8_M4.rc1/<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"> D=
istributions tested: Ubuntu 14.04 64bit, Fedora 21 64bit, Opensuse 13.2 64b=
it, CentOS 7 64 bit <o:p></o:p></span></pre>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:14.3pt;ba=
ckground:white;border:none;padding:0in;orphans: auto;text-align:start;widow=
s: 1;-webkit-text-stroke-width: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Test Run Summar=
y Report</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Cal=
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Test=
ing Summary Report</span></b><b><span style=3D"font-size:9.5pt;font-family:=
&quot;Calibri&quot;,sans-serif"><o:p></o:p></span></b></p>
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
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Test=
 Run<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Test=
 Plan<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Envi=
ronment<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Pass=
ed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Othe=
r issues<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Fail=
ed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Fail=
ing bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Bloc=
ked<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Bloc=
king bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Comp=
lete<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3645"><span style=3D"color:#5A3696">3645</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3646"><span style=3D"color:#5A3696"=
>3646</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Fedora 21 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">98.5%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">1.5%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7536"><span style=3D"color:#5A3696">7536</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D7545"><span style=3D"color:#5A3696">7545</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3647"><span style=3D"color:#5A3696">3647</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3648"><span style=3D"color:#5A3696"=
>3648</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">98.5%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">1.5%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7536"><span style=3D"color:#5A3696">7536</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D7545"><span style=3D"color:#5A3696">7545</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3651"><span style=3D"color:#5A3696">3651</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3652"><span style=3D"color:#5A3696"=
>3652</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Beaglebone Black<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">98.7%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">1.3%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7543"><span style=3D"color:#5A3696">7543</span></a><o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3657"><span style=3D"color:#5A3696">3657</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3658"><span style=3D"color:#5A3696"=
>3658</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">EdgeRouter<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3632"><span style=3D"color:#5A3696">3632</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3633"><span style=3D"color:#5A3696"=
>3633</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">generic-x86 on AtomPC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">98.8%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">1.2%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7532"><span style=3D"color:#5A3696">7532</span></a><o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3630"><span style=3D"color:#5A3696">3630</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3631"><span style=3D"color:#5A3696"=
>3631</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">genericx86-64 on Sugarbay<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3659"><span style=3D"color:#5A3696">3659</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3660"><span style=3D"color:#5A3696"=
>3660</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">MPC8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3653"><span style=3D"color:#5A3696">3653</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3655"><span style=3D"color:#5A3696"=
>3655</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">P1022ds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3634"><span style=3D"color:#5A3696">3634</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3635"><span style=3D"color:#5A3696"=
>3635</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">qemu-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3638"><span style=3D"color:#5A3696">3638</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3639"><span style=3D"color:#5A3696"=
>3639</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3640"><span style=3D"color:#5A3696">3640</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3641"><span style=3D"color:#5A3696"=
>3641</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3642"><span style=3D"color:#5A3696">3642</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3643"><span style=3D"color:#5A3696"=
>3643</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7236"><span style=3D"color:#5A3696">7236</span></a><o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3636"><span style=3D"color:#5A3696">3636</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3637"><span style=3D"color:#5A3696"=
>3637</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3625"><span style=3D"color:#5A3696">3625</span></a><o:p><=
/o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Eclipse Plugin: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Fedora 21 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">36.4%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">3.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D5163"><span style=3D"color:#5A3696">5163</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D7530"><span style=3D"color:#5A3696">7530</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:bl=
ack">60.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7530"><span style=3D"color:#5A3696">7530</span></a><o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3649"><span style=3D"color:#5A3696">3649</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3650"><span style=3D"color:#5A3696"=
>3650</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Meta-yocto: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D6156"><span style=3D"color:#5A3696">6156</span></a><o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3622"><span style=3D"color:#5A3696">3622</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3623"><span style=3D"color:#5A3696"=
>3623</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Hob: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Ubuntu 14.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">95.6%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">4.4%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3616"><span style=3D"color:#5A3696">3616</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3617"><span style=3D"color:#5A3696"=
>3617</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=
=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3618"><span =
style=3D"color:#5A3696">3618</span></a><span class=3D"apple-converted-space=
">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi=
?run_id=3D3619"><span style=3D"color:#5A3696">3619</span></a><o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Toaster: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Ubuntu 14.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">90.5%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7025"><span style=3D"color:#5A3696">7025</span></a><o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">7.8%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D5187"><span style=3D"color:#5A3696">5187</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D7537"><span style=3D"color:#5A3696">7537</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D7026"><span style=3D"color:#5A36=
96">7026</span></a><span class=3D"apple-converted-space">&nbsp;</span><a hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198"><span style=
=3D"color:#5A3696">7198</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">1.7%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3626"><span style=3D"color:#5A3696">3626</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3627"><span style=3D"color:#5A3696"=
>3627</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">OE-Core: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Ubuntu 14.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">96.6%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">3.4%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7522"><span style=3D"color:#5A3696">7522</span></a><o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3628"><span style=3D"color:#5A3696">3628</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D3629"><span style=3D"color:#5A3696"=
>3629</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BitBake: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Ubuntu 14.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">97.4%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">2.6%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3644"><span style=3D"color:#5A3696">3644</span></a><o:p><=
/o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Runtime: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Ubuntu 14.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3661"><span style=3D"color:#5A3696">3661</span></a><o:p><=
/o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Build Appliance: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">qemu-kvm on Ubuntu 12.04 libvirt<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7426"><span style=3D"color:#5A3696">7426</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D7544"><span style=3D"color:#5A3696">7544</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt;font-family:&quot;=
Calibri&quot;,sans-serif">Total: 21</span></b><span style=3D"font-size:9.5p=
t;font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:18.0pt"><span styl=
e=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black=
"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:18.0pt"><span styl=
e=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black=
"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
<tbody>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Test=
 Case Status Report</span></b><b><span style=3D"font-size:9.5pt;font-family=
:&quot;Calibri&quot;,sans-serif"><o:p></o:p></span></b></p>
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
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Stat=
us<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif">Coun=
t<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">BLOCKED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">25<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">17<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">1269<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt;font-family:&quot;=
Calibri&quot;,sans-serif">Total: 1311</span></b><span style=3D"font-size:9.=
5pt;font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;mso-fareast-language:EN-US"><img border=3D"0" width=
=3D"558" height=3D"181" id=3D"Picture_x0020_1" src=3D"cid:image001.jpg@01D0=
6E37.23C27EB0" alt=3D"http://chart.apis.google.com/chart?cht=3Dbvg&amp;chs=
=3D372x120&amp;chbh=3Da&amp;chds=3D0,1269&amp;chxt=3Dy&amp;chxr=3D0,0,1269,=
212&amp;chd=3Dt:&amp;chd=3Dt:25,17,1269&amp;chco=3DFFFF66|FF9933|00FF00&amp=
;chdl=3DBLOCKED(25)&#43;2%25|FAILED(17)&#43;1%25|PASSED(1269)&#43;97%25"></=
span><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-se=
rif"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:12.0pt;=
margin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-alig=
n:start;widows: 1;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0=
px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Bugs Found duri=
ng QA Test</span></span><span style=3D"font-size:18.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:black;font-weight:normal"><o:p></o:p></span><=
/h1>
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0=
px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:red;font-weight:normal">New and notable i=
ssues Found during QA Test &amp; Community</span></span><span style=3D"font=
-size:14.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black;font-we=
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
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">ID<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">Summary (7 tasks)<span class=3D"apple-converted-space">&nbsp=
;</span><a href=3D"https://bugzilla.yoctoproject.org/buglist.cgi?&amp;field=
0-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;value0-0-0=3D7426&amp;field0-0-1=
=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0-0-1=3D%207522&amp;field0-0-2=3D=
bug_id&amp;type0-0-2=3Dequals&amp;value0-0-2=3D%207530&amp;field0-0-3=3Dbug=
_id&amp;type0-0-3=3Dequals&amp;value0-0-3=3D%207532&amp;field0-0-4=3Dbug_id=
&amp;type0-0-4=3Dequals&amp;value0-0-4=3D%207536&amp;field0-0-5=3Dbug_id&am=
p;type0-0-5=3Dequals&amp;value0-0-5=3D%207543&amp;field0-0-6=3Dbug_id&amp;t=
ype0-0-6=3Dequals&amp;value0-0-6=3D%207545&amp;field0-1-0=3Dbug_status&amp;=
type0-1-0=3Dnotequals&amp;value0-1-0=3DCLOSED"><span style=3D"font-family:&=
quot;Cambria Math&quot;,serif;color:#3366BB">=1B$B"M=1B(B</span></a><o:p></=
o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">P<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">Assignee<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">QA<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">Milestone<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">Status<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">Resolution<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">cf_regression_type<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">Created<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">ADT<o:=
p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7545" title=3D"bugzilla=
:7545"><span style=3D"color:#3366BB">7545</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Failed to i=
nstall sdk ext<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Randy&nbsp;=
Witt<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.9 M1<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2015-03-31<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7536" title=3D"bugzilla=
:7536"><span style=3D"color:#3366BB">7536</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">The manifes=
t file is empty for sdk ext<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Randy&nbsp;=
Witt<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.9<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2015-03-30<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">BSPs<o=
:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7543" title=3D"bugzilla=
:7543"><span style=3D"color:#3366BB">7543</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[Beaglebone=
Black] some error message in Xorg.log<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Low<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Kevin&nbsp;=
Hao<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.9<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2015-03-31<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7532" title=3D"bugzilla=
:7532"><span style=3D"color:#3366BB">7532</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">LogParser: =
Fast TSC calibration failed<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Saul&nbsp;W=
old<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Lucian&nbsp=
;Musat<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.9<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2015-03-27<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">Eclips=
e Plugin<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7530" title=3D"bugz=
illa:7530"><span style=3D"color:#3366BB">7530</span></a><o:p></o:p></span><=
/i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">QEMU doe=
s not start when run as external tool<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o=
:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Cristian=
&nbsp;Iorga<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Mihail&n=
bsp;Stanciu<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.8 M4<o=
:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">RESOLVED=
<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">WORKSFOR=
ME<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regressi=
on (Used to work)<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2015-03-=
27<o:p></o:p></span></i></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">Hob<o:=
p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7426" title=3D"bugz=
illa:7426"><span style=3D"color:#3366BB">7426</span></a><o:p></o:p></span><=
/i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[HOB]whe=
n build qemu images, there's no &quot;ext4&quot; option in &quot;advanced c=
onfiguration&quot;<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Undecide=
d<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Richard&=
nbsp;Purdie<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o=
:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">---<o:p>=
</o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">RESOLVED=
<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">FIXED<o:=
p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">---<o:p>=
</o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2015-03-=
09<o:p></o:p></span></i></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">OE-Cor=
e<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00"><a hre=
f=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7522" title=3D"bug=
zilla:7522"><span style=3D"color:#3366BB">7522</span></a><o:p></o:p></span>=
</i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">missin=
g file &quot;sstate-build-populate_lic&quot; during oe-selftest<o:p></o:p><=
/span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">Medium=
&#43;<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">Richar=
d&nbsp;Purdie<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">Mihail=
&nbsp;Stanciu<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">1.8 M4=
<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">RESOLV=
ED<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">FIXED<=
o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">Regres=
sion (Used to work)<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">2015-0=
3-26<o:p></o:p></span></i></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: 1;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: 1;-webkit-text-stroke-width: 0=
px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Other Bugs foun=
d during QA Test (including regressions)</span></span><span style=3D"font-s=
ize:14.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black;font-weig=
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
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">ID<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">Summary (11 tasks)<span class=3D"apple-converted-space">&nbs=
p;</span><a href=3D"https://bugzilla.yoctoproject.org/buglist.cgi?&amp;fiel=
d0-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;value0-0-0=3D5163&amp;field0-0-1=
=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0-0-1=3D%205187&amp;field0-0-2=3D=
bug_id&amp;type0-0-2=3Dequals&amp;value0-0-2=3D%206156&amp;field0-0-3=3Dbug=
_id&amp;type0-0-3=3Dequals&amp;value0-0-3=3D%207025&amp;field0-0-4=3Dbug_id=
&amp;type0-0-4=3Dequals&amp;value0-0-4=3D%207026&amp;field0-0-5=3Dbug_id&am=
p;type0-0-5=3Dequals&amp;value0-0-5=3D%207198&amp;field0-0-6=3Dbug_id&amp;t=
ype0-0-6=3Dequals&amp;value0-0-6=3D%207236&amp;field0-0-7=3Dbug_id&amp;type=
0-0-7=3Dequals&amp;value0-0-7=3D%207529&amp;field0-0-8=3Dbug_id&amp;type0-0=
-8=3Dequals&amp;value0-0-8=3D%207531&amp;field0-0-9=3Dbug_id&amp;type0-0-9=
=3Dequals&amp;value0-0-9=3D%207537&amp;field0-0-10=3Dbug_id&amp;type0-0-10=
=3Dequals&amp;value0-0-10=3D%207544&amp;field0-1-0=3Dbug_status&amp;type0-1=
-0=3Dnotequals&amp;value0-1-0=3DCLOSED"><span style=3D"font-family:&quot;Ca=
mbria Math&quot;,serif;color:#3366BB">=1B$B"M=1B(B</span></a><o:p></o:p></s=
pan></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">P<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">Assignee<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">QA<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">Milestone<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">Status<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">Resolution<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">cf_regression_type<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black">Created<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:14.3pt"><b><span style=3D"font-size:9.5pt;font-family:&quot;Calibri&quot;=
,sans-serif;color:#555555">---<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163" title=3D"bugzilla=
:5163"><span style=3D"color:#3366BB">5163</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">no external=
 tools displayed when first trying to run QEMU - test case 48 failed on Ubu=
ntu 12.04 x86-64 host(build 1.5 M4 rc2)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">David&nbsp;=
Reyna<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Future<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">ACCEPTED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2013-09-11<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">Toaste=
r<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187" title=3D"bugzilla=
:5187"><span style=3D"color:#3366BB">5187</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">same cooker=
 log file name used for several builds<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Richard&nbs=
p;Purdie<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.8<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">ACCEPTED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2013-09-13<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">New (N=
ever tested)<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7025" title=3D"bugzilla=
:7025"><span style=3D"color:#3366BB">7025</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">View all ta=
rgets: graphical overlap in table<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Belen&nbsp;=
Barros&nbsp;Pena<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Mihail&nbsp=
;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.8 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2014-12-03<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7026" title=3D"bugzilla=
:7026"><span style=3D"color:#3366BB">7026</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">All layers =
page: Sorting does not work<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Michael&nbs=
p;Wood<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Mihail&nbsp=
;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.8 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">REOPENED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">New (Never =
tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2014-12-03<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">Regres=
sion (Used to work)<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7544" title=3D"bugz=
illa:7544"><span style=3D"color:#3366BB">7544</span></a><o:p></o:p></span><=
/i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[Build A=
ppliance] Hob exception when build an image<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Undecide=
d<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Cristian=
&nbsp;Iorga<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Yi&nbsp;=
Zhao<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">---<o:p>=
</o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">RESOLVED=
<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">WORKSFOR=
ME<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regressi=
on (Used to work)<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2015-03-=
31<o:p></o:p></span></i></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">OE-Cor=
e<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156" title=3D"bugzilla=
:6156"><span style=3D"color:#3366BB">6156</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[crosstap] =
no trace message output on qemuarm<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Tom&nbsp;Za=
nussi<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.8<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">ACCEPTED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2014-04-14<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00"><a hre=
f=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7531" title=3D"bug=
zilla:7531"><span style=3D"color:#3366BB">7531</span></a><o:p></o:p></span>=
</i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">Create=
me command not found during build<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">Medium=
&#43;<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">Ross&n=
bsp;Burton<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">Mihail=
&nbsp;Stanciu<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">1.8 M4=
<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">RESOLV=
ED<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">FIXED<=
o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">Regres=
sion (Used to work)<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#E68A00">2015-0=
3-27<o:p></o:p></span></i></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7529" title=3D"bugz=
illa:7529"><span style=3D"color:#3366BB">7529</span></a><o:p></o:p></span><=
/i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Package =
build errors - files being changed while read<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Undecide=
d<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Richard&=
nbsp;Purdie<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Mihail&n=
bsp;Stanciu<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">---<o:p>=
</o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">RESOLVED=
<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">FIXED<o:=
p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regressi=
on (Used to work)<o:p></o:p></span></i></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><i><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2015-03-=
27<o:p></o:p></span></i></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">System=
 Startup<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236" title=3D"bugzilla=
:7236"><span style=3D"color:#3366BB">7236</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">The color o=
f splash screen for qemuppc is strange<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Saul&nbsp;W=
old<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Yi&nbsp;Zha=
o<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.8<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">NEW<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2015-01-23<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><b><span style=3D"font-=
size:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">Toaste=
r<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198" title=3D"bugzilla=
:7198"><span style=3D"color:#3366BB">7198</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Hiding a so=
rted column does not revert to default sorting<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Michael&nbs=
p;Wood<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Mihail&nbsp=
;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.8 M4<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">IN PROGRESS=
 REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2015-01-20<=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7537" title=3D"bugzilla=
:7537"><span style=3D"color:#3366BB">7537</span></a><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Toaster fai=
ls to build with custom layer added<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Undecided<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Alexandru&n=
bsp;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Mihail&nbsp=
;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">---<o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">VERIFIED<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">NOTABUG<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regression =
(Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2015-03-30<=
o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">Regards,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">--<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">Alexandru Georgescu<o:p></o:p></span></=
p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">Yocto QA Engineer<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">SSG/SSD Open Source Technology Center R=
omania<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E96224C82B4irsmsx110gercor_--

--_004_1FFB62CE8AEB0D4298B51122D8903E96224C82B4irsmsx110gercor_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=7682;
	creation-date="Fri, 03 Apr 2015 14:53:51 GMT";
	modification-date="Fri, 03 Apr 2015 14:53:51 GMT"
Content-ID: <image001.jpg@01D06E37.23C27EB0>
Content-Transfer-Encoding: base64

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

--_004_1FFB62CE8AEB0D4298B51122D8903E96224C82B4irsmsx110gercor_--
