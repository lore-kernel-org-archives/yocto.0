Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEAE2E0091C
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2014 10:45:37 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 26 Feb 2014 10:41:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,549,1389772800"; 
	d="xml'?xlsx'72,48?scan'72,48,208,72,48,147,150,217?rels'72,48,208,72,48,147,150,217?gif'72,48,208,72,48,147,150,217,147?bin'72,48,208,72,48,147,150,217,147?png'72,48,208,72,48,147,150,217,147,150";
	a="482277489"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga001.fm.intel.com with ESMTP; 26 Feb 2014 10:42:45 -0800
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 26 Feb 2014 18:42:42 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.244]) by
	IRSMSX152.ger.corp.intel.com ([163.33.192.66]) with mapi id
	14.03.0123.003; Wed, 26 Feb 2014 18:42:42 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Full Pass report Yocto 1.6_M3.rc2 build
Thread-Index: Ac8zIUqxJsc4ElslQEScttoC1OJf0g==
Date: Wed, 26 Feb 2014 18:42:41 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619FDBC9A@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "Purdie,
	Richard" <richard.purdie@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Full Pass report Yocto 1.6_M3.rc2 build
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
X-List-Received-Date: Wed, 26 Feb 2014 18:45:40 -0000
X-Groupsio-MsgNum: 18229
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_008_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_"

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_
Content-Type: multipart/related;
	boundary="_007_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_";
	type="multipart/alternative"

--_007_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the QA report for the 1.6_M3.rc2 release. In this test cycle we add=
ed a new set of tests, called Distro testing.
Below can be found the summary report, Distro testing results and the perfo=
rmance test report.

Issue summary

*         5827<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5827> - =
(High) ADT installation failed - The issue has been addressed and another p=
ath was sent for review. This blocked all ADT testing.
Currently there were no other high issues found during this build or other =
issues that might block the release. All the bugs found during this test cy=
cle are listed in the summary report below. The full report can be found on=
 the wiki at: https://wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_P=
ass_Release_1.6_M3.rc2.



Testing data

 Test type:  Full Pass Release Test

 Branch: master

 Milestone: M3

 Build name: 1.6_M3.rc2

 poky commit: 54562006c1327c5b99daa4cc05a3ba7e38412da1

 Eclipse Plugin commit Kepler:  f4d8e9243f9355424a01e2d72fd1abbf68d3bb7c

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20140218-3

 Distributions tested: Ubuntu 13.10 64bit, Fedora 19 64bit, Fedora 20 32bit=
, Opensuse 12.3 64bit, CentOS 6.5 64 bit

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

1988<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1988>1990<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1990>

ADT: master branch

Fedora 20 i686

71.6%

none

5.2%

5827<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5827>

23.3%

5827<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5827>

100.0%

1987<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1987>1989<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1989>

ADT: master branch

Ubuntu 13.10 x86_64

71.6%

none

5.2%

5827<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5827>

23.3%

5827<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5827>

100.0%

1998<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1998>

BSP/QEMU: master branch

Atom PC

96.8%

none

3.2%

5834<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834>

0.0%

none

100.0%

1986<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1986>1991<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1991>

BSP/QEMU: master branch

Beagleboard

71.0%

5858<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5858>

4.3%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182> 3936<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

24.6%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

100.0%

1985<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1985>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

1979<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1979>1980<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1980>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

1961<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1961>1965<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1965>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

1954<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1954>1955<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1955>

BSP/QEMU: master branch

qemuarm

98.1%

none

1.9%

5807<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5807>

0.0%

none

100.0%

1958<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1958>1959<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1959>

BSP/QEMU: master branch

qemumips

98.1%

none

1.9%

5807<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5807>

0.0%

none

100.0%

1956<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1956>1957<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1957>

BSP/QEMU: master branch

qemuppc

98.1%

none

1.9%

5807<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5807>

0.0%

none

100.0%

1962<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1962>1966<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1966>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

1982<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1982>1983<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1983>

BSP/QEMU: master branch

Routerstationpro

100.0%

5858<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5858>

0.0%

none

0.0%

none

100.0%

1997<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1997>

BSP/QEMU: master branch

Sugarbay

96.8%

none

3.2%

5834<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834>

0.0%

none

100.0%

1947<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1947>1949<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1949>1952<https:/=
/bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1952>

Eclipse Plugin: master branch

.

85.7%

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760> 5163<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

3.6%

none

10.7%

5827<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5827>

100.0%

1946<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1946>1948<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1948>1950<https:/=
/bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1950>

Eclipse Plugin: master branch

Fedora 20 x86_64

85.7%

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760> 5163<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>5640<https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D5640> 5850<https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5850>

3.6%

none

10.7%

5827<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5827>

100.0%

1977<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1977>1978<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1978>

Meta-yocto: master branch

Ubuntu 13.10 x86-64

100.0%

5807<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5807> 5862<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5862>

0.0%

none

0.0%

none

100.0%

1942<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1942>1953<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1953>

Hob: master branch

Ubuntu 13.10 x86_64

97.8%

none

2.2%

5887<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5887>

0.0%

none

100.0%

1945<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945>

Toaster: master branch

Ubuntu 13.04 x86_64

66.7%

none

33.3%

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187> 5453<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5453> 5553<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5553> 5485<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5485> 5192<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D5192>5714<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5714=
> 5252<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5252> 5877<https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5877> 5228<https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5228> 5836<https://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D5836>5655<https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D5655>

0.0%

none

100.0%

1943<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1943>1944<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1944>1084<https:/=
/bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1084>

OE-Core: master branch

Multiple environments

91.5%

none

6.8%

5730<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5730> 5146<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146> 5740<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5740> 5088<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5088>

1.7%

5088<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5088>

100.0%

2000<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2000>2001<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2001>

BitBake: master branch

Ubuntu 13.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1999<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1999>

Runtime: master branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

1976<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1976>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 22



Test Case Status Report

Status

Count

BLOCKED

51

FAILED

34

PASSED

796

Total: 881


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:51,34,796&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(51)+6%25|FAILED(34)+4%=
25|PASSED(796)+90%25]



Bug Status Report


ID[?]<https://wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_Pass_Rele=
ase_1.6_M3.rc2>

Priority[?]<https://wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_Pas=
s_Release_1.6_M3.rc2>

Status[?]<https://wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_Pass_=
Release_1.6_M3.rc2>

Resolution[?]<https://wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_P=
ass_Release_1.6_M3.rc2>

Test Runs[?]<https://wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_Pa=
ss_Release_1.6_M3.rc2>

Description[?]<https://wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_=
Pass_Release_1.6_M3.rc2>

Version[?]<https://wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_Pass=
_Release_1.6_M3.rc2>

Target Milestone[?]<https://wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_=
Full_Pass_Release_1.6_M3.rc2>

Age (days)[?]<https://wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_P=
ass_Release_1.6_M3.rc2>

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

ACCEPTED

1986<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1986>

[beagleboard xM] Some error message with usbhs_omap in dmesg

1.4

1.6

357

5088<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5088>

Medium

VERIFIED

FIXED

1084<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1084>

[OE-Core]Buildhistory fails to report error if PR of some recipes go backwa=
rds

1.5

1.5 M5

NEW

5146<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146>

Medium

IN PROGRESS IMPLEMENTATION

1943<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1943>

btrfs image build fails at do_rootfs

1.5

1.5.1

162

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

Medium

REOPENED

1947<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1947> 1946<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1946>

no external tools displayed when first trying to run QEMU - test case 48 fa=
iled on Ubuntu 12.04 x86-64 host(build 1.5 M4 rc2)

1.5

1.6

160

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

Medium+

ACCEPTED

1991<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1991> 1986<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1986>

[Beagleboard xM]X can not startup with 3.10 kernel

1.5

1.5.1

158

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>

Medium

ACCEPTED

1945<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945>

same cooker log file name used for several builds

unspecified

1.6

158

5192<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5192>

Medium

WaitForUpstream

1945<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945>

non-existent URLs listed in the "Layer index URL" column

1.5

1.6 M5

158

5228<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5228>

Medium

ACCEPTED

1945<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945>

[webhob-poky/master] 'file_size' in the 'targets' API returns no value

1.5

1.6 M2

153

5252<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5252>

Medium

NEW

1945<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945>

path_to_sstate_obj in the tasks table is empty

unspecified

1.6 M3

148

5453<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5453>

Medium

IN PROGRESS IMPLEMENTATION

1945<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945>

Remove the image_fstypes field from the builds table

unspecified

1.6

106

5485<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5485>

Medium

REOPENED

1945<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945>

Buildstats info and database entries doesn't match sometimes

unspecified

1.6 M1

104

5553<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5553>

Medium

IN PROGRESS REVIEW

1945<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945>

Missing task order numbers

unspecified

1.6 M2

92

5640<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5640>

Medium

NEW

1950<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1950>

systemtap output is useless in Juno

1.6

1.6

74

5655<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5655>

Medium+

ACCEPTED

1945<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945>

Wrong values in Recipe_Dependency table

unspecified

1.6 M2

69

5714<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5714>

Undecided

REOPENED

1945<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945>

Target field is always empty in orm_package_dependency

unspecified

---

39

5730<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5730>

Medium

IN PROGRESS REVIEW

1943<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1943>

Archive work directory and export source package

1.6

1.6 M3

33

5740<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5740>

Medium

IN PROGRESS REVIEW

1944<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1944>

Use archiver.bbclass to filter the source - fails

1.6

1.6 M3

32

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>

Low

NEW

1947<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1947> 1946<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1946>

headless build takes took long

1.6

1.6

22

5807<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5807>

Medium+

RESOLVED

FIXED

1978<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1978> 1957<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1957> 1959<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1959> 1955<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1955>

NFS startup failed with build 20140205-1(qemuarm, qemumips and qemuppc)

1.6

1.6 M4

8

5827<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5827>

High

RESOLVED

FIXED

1988<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1988> 1946<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1946> 1990<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1990> 1952<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1952>1950<https://bugzilla=
.yoctoproject.org/tr_show_run.cgi?run_id=3D1950> 1947<https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D1947>

ADT installation failed on all ARCHs with build 1.6_M3 rc1

1.6

1.6 M3

1 (Recent)

5834<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834>

Medium

NEW

1997<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1997> 1998<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1998>

Cannot wake from suspend state using the USB mouse or keyboard

1.6

1.6

1 (Recent)

5836<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5836>

Medium

IN PROGRESS IMPLEMENTATION

1945<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945>

Target model needs table for image names and sizes

1.6

1.6 M4

NEW

5850<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5850>

Low

NEW

1950<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1950>

Application name not listed in run configurations when installing the ADT u=
sing Bitbake

1.6

Future

NEW

5858<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5858>

Undecided

IN PROGRESS IMPLEMENTATION

1986<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1986> 1982<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1982>

kernel version mismatched on non-x86 bsp with 1.6 m3 rc2 build

1.6

1.6 M3

NEW

5862<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5862>

Undecided

REOPENED

1978<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1978>

sstate-cache-management.sh can't remove duplicated sstate files for qemux86=
-64

1.6

---

NEW

5877<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5877>

Undecided

NEW

1945<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945>

installed_size field is always 0

1.6

---

NEW

5887<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5887>

Undecided

NEW

1953<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1953>

Unable to connect to X server

1.6

---

NEW

Total: 27




Distro testing

The usage of Distro Testing is intended to catch bugs that are distribution=
 specific using yocto-autobuilder. The tests are being run with all systems=
 updated, on identical hardware and supporting the following distros :

*         Fedora 20

*         Ubuntu 13.10

*         OpenSuse 13.1

*         CentOS 6.5 (starting with 1.6_M4.rc1)

In the future we will include nightly-oe-selftest and nightly-qa-targetbuil=
ds as soon as they are accepted in master branch. Currently running the sam=
e build on each machine, implied limiting the number of buildsets that we a=
re running on Distro Testing, as follows:

*         buildtools

*         nightly-arm

*         nightly-multilib

*         nightly-qa-systemd

*         nightly-x86

*         nightly-x86-64

*         nightly-x86-64-lsb

*         nighlty-world

Regarding the systemd failures on OpenSuse and Ubuntu there is no bug filed=
 because the issues are still investigated and they are not reproducing con=
stantly.


COMMIT

54562006c1327c5b99daa4cc05a3ba7e38412da1



RELEASE

1.6_M3.rc2



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















OpenSuSE 13.1





* nighlty-world

PASS



* buildtools

PASS



* nightly-arm

PASS



* nightly-multilib

PASS



* nightly-qa-systemd

FAIL

SystemdBasicTests and SystemdServiceTests FAIL

* nightly-x86

PASS



* nightly-x86-64

PASS



* nightly-x86-64-lsb

PASS















Ubuntu 13.10





* nighlty-world

PASS



* buildtools

PASS



* nightly-arm

PASS



* nightly-multilib

PASS



* nightly-qa-systemd

FAIL

SystemdBasicTests and SystemdServiceTests FAIL

* nightly-x86

PASS



* nightly-x86-64

PASS



* nightly-x86-64-lsb

PASS






Performance_test

During M3 there is a slight degradation in building the image w/o rm_work. =
Check out the charts below for exemplification or the xls attached with mor=
e detailed data and more metric graphs.

[cid:image002.png@01CF332B.06C13790]

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
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
	font-family:"Calibri","sans-serif";}
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
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:358362947;
	mso-list-type:hybrid;
	mso-list-template-ids:-1658522712 67698689 67698691 67698693 67698689 6769=
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
	{mso-list-id:506486607;
	mso-list-type:hybrid;
	mso-list-template-ids:1166593212 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
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
<p class=3D"MsoNormal">Here is the QA report for the <i>1.6_M3.rc2</i> rele=
ase. In this test cycle we added a new set of tests, called Distro testing.=
<o:p></o:p></p>
<p class=3D"MsoNormal">Below can be found the summary report, Distro testin=
g results and the performance test report.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issue summary<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org=
/show_bug.cgi?id=3D5827"><b>5827</b></a><b>&nbsp;&#8211;&nbsp;</b>(High) AD=
T installation failed&nbsp;&#8211; The issue has been addressed and another=
 path was sent for review. This blocked all ADT testing.<o:p></o:p></p>
<p class=3D"MsoNormal">Currently there were no other high issues found duri=
ng this build or other issues that might block the release. All the bugs fo=
und during this test cycle are listed in the summary report below. The full=
 report can be found on the wiki at:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_Pass=
_Release_1.6_M3.rc2">
https://wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_Pass_Release_1.=
6_M3.rc2</a>.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
;word-spacing:0px"><span style=3D"color:black"> Test type:&nbsp; Full Pass =
Release Test<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Milestone: M3<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.6_M3.rc2<o:p></o:p></span></pr=
e>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 54562006c1327c5b99daa4cc05a3ba7=
e38412da1<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Kepler:&nbsp; </span>f=
4d8e9243f9355424a01e2d72fd1abbf68d3bb7c<span style=3D"color:black"><o:p></o=
:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: <a href=3D"ht=
tp://autobuilder.yoctoproject.org/pub/nightly/20140218-3">http://autobuilde=
r.yoctoproject.org/pub/nightly/20140218-3</a><o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 13.10 64bit, Fe=
dora 19 64bit, Fedora 20 32bit, Opensuse 12.3 64bit, CentOS 6.5 64 bit <o:p=
></o:p></span></pre>
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
n style=3D"font-size:10.0pt">Testing Summary Report</span></b><b><span styl=
e=3D"font-size:10.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&q=
uot;"><o:p></o:p></span></b></p>
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
rg/tr_show_run.cgi?run_id=3D1988"><span style=3D"color:#5A3696">1988</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
990"><span style=3D"color:#5A3696">1990</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Fedora 20 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">71.6%<o:p></o:p></span></p>
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
rg/show_bug.cgi?id=3D5827"><span style=3D"color:#5A3696">5827</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">23.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5827"><span style=3D"color:#5A3696">5827</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1987"><span style=3D"color:#5A3696">1987</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
989"><span style=3D"color:#5A3696">1989</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">71.6%<o:p></o:p></span></p>
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
rg/show_bug.cgi?id=3D5827"><span style=3D"color:#5A3696">5827</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">23.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5827"><span style=3D"color:#5A3696">5827</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1998"><span style=3D"color:#5A3696">1998</span>=
</a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">96.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">3.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5834"><span style=3D"color:#5A3696">5834</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1986"><span style=3D"color:#5A3696">1986</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
991"><span style=3D"color:#5A3696">1991</span></a><o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">71.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5858"><span style=3D"color:#5A3696">5858</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">4.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a></s=
pan><span class=3D"apple-converted-space">&nbsp;</span><span style=3D"font-=
size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3936"><span style=3D"color:#5A3696">3936</span></a><o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">24.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1985"><span style=3D"color:#5A3696">1985</span>=
</a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1979"><span style=3D"color:#5A3696">1979</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
980"><span style=3D"color:#5A3696">1980</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1961"><span style=3D"color:#5A3696">1961</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
965"><span style=3D"color:#5A3696">1965</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1954"><span style=3D"color:#5A3696">1954</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
955"><span style=3D"color:#5A3696">1955</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">qemuarm<o:p></o:p></span></p>
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
rg/show_bug.cgi?id=3D5807"><span style=3D"color:#5A3696">5807</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1958"><span style=3D"color:#5A3696">1958</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
959"><span style=3D"color:#5A3696">1959</span></a><o:p></o:p></span></p>
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
rg/show_bug.cgi?id=3D5807"><span style=3D"color:#5A3696">5807</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1956"><span style=3D"color:#5A3696">1956</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
957"><span style=3D"color:#5A3696">1957</span></a><o:p></o:p></span></p>
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
rg/show_bug.cgi?id=3D5807"><span style=3D"color:#5A3696">5807</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1962"><span style=3D"color:#5A3696">1962</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
966"><span style=3D"color:#5A3696">1966</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">qemux86-64<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1982"><span style=3D"color:#5A3696">1982</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
983"><span style=3D"color:#5A3696">1983</span></a><o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5858"><span style=3D"color:#5A3696">5858</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1997"><span style=3D"color:#5A3696">1997</span>=
</a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Sugarbay<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">96.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">3.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5834"><span style=3D"color:#5A3696">5834</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1947"><span style=3D"color:#5A3696">1947</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
949"><span style=3D"color:#5A3696">1949</span></a><a href=3D"https://bugzil=
la.yoctoproject.org/tr_show_run.cgi?run_id=3D1952"><span style=3D"color:#5A=
3696">1952</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">.<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">85.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a></s=
pan><span class=3D"apple-converted-space">&nbsp;</span><span style=3D"font-=
size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D5163"><span style=3D"color:#5A3696">5163</span></a><o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">3.6%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">10.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5827"><span style=3D"color:#5A3696">5827</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1946"><span style=3D"color:#5A3696">1946</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
948"><span style=3D"color:#5A3696">1948</span></a><a href=3D"https://bugzil=
la.yoctoproject.org/tr_show_run.cgi?run_id=3D1950"><span style=3D"color:#5A=
3696">1950</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Fedora 20 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">85.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a></s=
pan><span class=3D"apple-converted-space">&nbsp;</span><span style=3D"font-=
size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D5163"><span style=3D"color:#5A3696">5163</span></a><a href=3D"https://bu=
gzilla.yoctoproject.org/show_bug.cgi?id=3D5640"><span style=3D"color:#5A369=
6">5640</span></a></span><span class=3D"apple-converted-space">&nbsp;</span=
><span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.=
org/show_bug.cgi?id=3D5850"><span style=3D"color:#5A3696">5850</span></a><o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">3.6%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">10.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5827"><span style=3D"color:#5A3696">5827</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1977"><span style=3D"color:#5A3696">1977</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
978"><span style=3D"color:#5A3696">1978</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Ubuntu 13.10 x86-64<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5807"><span style=3D"color:#5A3696">5807</span></a></s=
pan><span class=3D"apple-converted-space">&nbsp;</span><span style=3D"font-=
size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D5862"><span style=3D"color:#5A3696">5862</span></a><o:p></o:p></span></p=
>
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
rg/tr_show_run.cgi?run_id=3D1942"><span style=3D"color:#5A3696">1942</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
953"><span style=3D"color:#5A3696">1953</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">97.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">2.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5887"><span style=3D"color:#5A3696">5887</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1945"><span style=3D"color:#5A3696">1945</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Toaster: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">66.7%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt;color:black">33.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5187"><span style=3D"color:#5A3696">5187</span></a></s=
pan><span class=3D"apple-converted-space">&nbsp;</span><span style=3D"font-=
size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D5453"><span style=3D"color:#5A3696">5453</span></a></span><span class=3D=
"apple-converted-space">&nbsp;</span><span style=3D"font-size:10.0pt"><a hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5553"><span style=
=3D"color:#5A3696">5553</span></a></span><span class=3D"apple-converted-spa=
ce">&nbsp;</span><span style=3D"font-size:10.0pt"><a href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D5485"><span style=3D"color:#5A3696">5=
485</span></a></span><span class=3D"apple-converted-space">&nbsp;</span><sp=
an style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D5192"><span style=3D"color:#5A3696">5192</span></a><a hre=
f=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5714"><span style=
=3D"color:#5A3696">5714</span></a></span><span class=3D"apple-converted-spa=
ce">&nbsp;</span><span style=3D"font-size:10.0pt"><a href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D5252"><span style=3D"color:#5A3696">5=
252</span></a></span><span class=3D"apple-converted-space">&nbsp;</span><sp=
an style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D5877"><span style=3D"color:#5A3696">5877</span></a></span=
><span class=3D"apple-converted-space">&nbsp;</span><span style=3D"font-siz=
e:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D52=
28"><span style=3D"color:#5A3696">5228</span></a></span><span class=3D"appl=
e-converted-space">&nbsp;</span><span style=3D"font-size:10.0pt"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5836"><span style=3D"c=
olor:#5A3696">5836</span></a><a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D5655"><span style=3D"color:#5A3696">5655</span></a><o:p></=
o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1943"><span style=3D"color:#5A3696">1943</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1=
944"><span style=3D"color:#5A3696">1944</span></a><a href=3D"https://bugzil=
la.yoctoproject.org/tr_show_run.cgi?run_id=3D1084"><span style=3D"color:#5A=
3696">1084</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">91.5%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">6.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5730"><span style=3D"color:#5A3696">5730</span></a></s=
pan><span class=3D"apple-converted-space">&nbsp;</span><span style=3D"font-=
size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D5146"><span style=3D"color:#5A3696">5146</span></a></span><span class=3D=
"apple-converted-space">&nbsp;</span><span style=3D"font-size:10.0pt"><a hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5740"><span style=
=3D"color:#5A3696">5740</span></a></span><span class=3D"apple-converted-spa=
ce">&nbsp;</span><span style=3D"font-size:10.0pt"><a href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D5088"><span style=3D"color:#5A3696">5=
088</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">1.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5088"><span style=3D"color:#5A3696">5088</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D2000"><span style=3D"color:#5A3696">2000</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
001"><span style=3D"color:#5A3696">2001</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1999"><span style=3D"color:#5A3696">1999</span>=
</a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1976"><span style=3D"color:#5A3696">1976</span>=
</a><o:p></o:p></span></p>
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
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 22</span></b><span style=3D"font=
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
<span style=3D"font-size:10.0pt">51<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">34<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">796<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 881</span></b><span style=3D"fon=
t-size:10.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><img border=3D"0" w=
idth=3D"432" height=3D"120" id=3D"Picture_x0020_12" src=3D"cid:image003.png=
@01CF3332.0E51B190" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;=
chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:51,34,796&amp;chco=3DFFFF66|FF9933|0=
0FF00&amp;chl=3DBLOCKED(51)&#43;6%25|FAILED(34)&#43;4%25|PASSED(796)&#43;90=
%25"></span><span style=3D"font-size:10.0pt"><o:p></o:p></span></p>
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
ect.org/wiki/WW08_-_2014-02-18_-_Full_Pass_Release_1.6_M3.rc2"><b><span sty=
le=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0=
" width=3D"12" height=3D"14" id=3D"Picture_x0020_11" src=3D"cid:image004.gi=
f@01CF3332.0E51B190" alt=3D"&#8595;"></span></b></a><b><span style=3D"font-=
size:10.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p=
></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Priority</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW08_-_2014-02-18_-_Full_Pass_Release_1.6_M3.rc2"><b><sp=
an style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_10" src=3D"cid:image=
004.gif@01CF3332.0E51B190" alt=3D"&#8595;"></span></b></a><b><span style=3D=
"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW08_-_2014-02-18_-_Full_Pass_Release_1.6_M3.rc2"><b><span=
 style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_9" src=3D"cid:image00=
4.gif@01CF3332.0E51B190" alt=3D"&#8595;"></span></b></a><b><span style=3D"f=
ont-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Resolution</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW08_-_2014-02-18_-_Full_Pass_Release_1.6_M3.rc2"><b><=
span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_8" src=3D"cid:imag=
e004.gif@01CF3332.0E51B190" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Runs</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW08_-_2014-02-18_-_Full_Pass_Release_1.6_M3.rc2"><b><s=
pan style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"cid:image=
004.gif@01CF3332.0E51B190" alt=3D"&#8595;"></span></b></a><b><span style=3D=
"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Description</span></b><a href=3D"https://wiki.=
yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_Pass_Release_1.6_M3.rc2"><b>=
<span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bo=
rder=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_6" src=3D"cid:ima=
ge004.gif@01CF3332.0E51B190" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Version</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW08_-_2014-02-18_-_Full_Pass_Release_1.6_M3.rc2"><b><spa=
n style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=3D"cid:image00=
4.gif@01CF3332.0E51B190" alt=3D"&#8595;"></span></b></a><b><span style=3D"f=
ont-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Target Milestone</span></b><a href=3D"https://=
wiki.yoctoproject.org/wiki/WW08_-_2014-02-18_-_Full_Pass_Release_1.6_M3.rc2=
"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><i=
mg border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_4" src=3D"ci=
d:image004.gif@01CF3332.0E51B190" alt=3D"&#8595;"></span></b></a><b><span s=
tyle=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Age (days)</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW08_-_2014-02-18_-_Full_Pass_Release_1.6_M3.rc2"><b><=
span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_3" src=3D"cid:imag=
e004.gif@01CF3332.0E51B190" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
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
tyle=3D"font-size:10.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1986"><span style=3D"col=
or:#5A3696">1986</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[beagleboard xM] So=
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
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">357<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5088"><span style=3D"color:#5A3696">5088</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">VERIFIED<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1084"><span style=3D"col=
or:#5A3696">1084</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[OE-Core]Buildhisto=
ry fails to report error if PR of some recipes go backwards<o:p></o:p></spa=
n></p>
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
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt"><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">IN PROGRESS IMPLEMENTATION<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1943"><span style=3D"col=
or:#5A3696">1943</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">162<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5163"><span style=3D"color:#5A3696">5163</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1947"><span style=3D"col=
or:#5A3696">1947</span></a></span><span class=3D"apple-converted-space">&nb=
sp;</span><span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D1946"><span style=3D"color:#5A3696">1=
946</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">no external tools d=
isplayed when first trying to run QEMU - test case 48 failed on Ubuntu 12.0=
4 x86-64 host(build 1.5 M4 rc2)<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">160<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1991"><span style=3D"col=
or:#5A3696">1991</span></a></span><span class=3D"apple-converted-space">&nb=
sp;</span><span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D1986"><span style=3D"color:#5A3696">1=
986</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Beagleboard xM]X c=
an not startup with 3.10 kernel<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">158<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5187"><span style=3D"color:#5A3696">5187</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945"><span style=3D"col=
or:#5A3696">1945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">same cooker log fil=
e name used for several builds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">158<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5192"><span style=3D"color:#5A3696">5192</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945"><span style=3D"col=
or:#5A3696">1945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">non-existent URLs l=
isted in the &quot;Layer index URL&quot; column<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">158<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5228"><span style=3D"color:#5A3696">5228</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945"><span style=3D"col=
or:#5A3696">1945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[webhob-poky/master=
] 'file_size' in the 'targets' API returns no value<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.6 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">153<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5252"><span style=3D"color:#5A3696">5252</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945"><span style=3D"col=
or:#5A3696">1945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">path_to_sstate_obj =
in the tasks table is empty<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">148<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5453"><span style=3D"color:#5A3696">5453</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">IN PROGRESS IMPLEMENTATION<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945"><span style=3D"col=
or:#5A3696">1945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Remove the image_fs=
types field from the builds table<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">106<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5485"><span style=3D"color:#5A3696">5485</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945"><span style=3D"col=
or:#5A3696">1945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Buildstats info and=
 database entries doesn't match sometimes<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">104<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5553"><span style=3D"color:#5A3696">5553</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945"><span style=3D"col=
or:#5A3696">1945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Missing task order =
numbers<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">92<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5640"><span style=3D"color:#5A3696">5640</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1950"><span style=3D"col=
or:#5A3696">1950</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">systemtap output is=
 useless in Juno<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">74<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5655"><span style=3D"color:#5A3696">5655</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945"><span style=3D"col=
or:#5A3696">1945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Wrong values in Rec=
ipe_Dependency table<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">69<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5714"><span style=3D"color:#5A3696">5714</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945"><span style=3D"col=
or:#5A3696">1945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Target field is alw=
ays empty in orm_package_dependency<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">39<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5730"><span style=3D"color:#5A3696">5730</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1943"><span style=3D"col=
or:#5A3696">1943</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Archive work direct=
ory and export source package<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">33<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5740"><span style=3D"color:#5A3696">5740</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1944"><span style=3D"col=
or:#5A3696">1944</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Use archiver.bbclas=
s to filter the source - fails<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">32<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1947"><span style=3D"col=
or:#5A3696">1947</span></a></span><span class=3D"apple-converted-space">&nb=
sp;</span><span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D1946"><span style=3D"color:#5A3696">1=
946</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">headless build take=
s took long<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">22<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5807"><span style=3D"color:#5A3696">5807</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1978"><span style=3D"col=
or:#5A3696">1978</span></a></span><span class=3D"apple-converted-space">&nb=
sp;</span><span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D1957"><span style=3D"color:#5A3696">1=
957</span></a></span><span class=3D"apple-converted-space">&nbsp;</span><sp=
an style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/=
tr_show_run.cgi?run_id=3D1959"><span style=3D"color:#5A3696">1959</span></a=
></span><span class=3D"apple-converted-space">&nbsp;</span><span style=3D"f=
ont-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D1955"><span style=3D"color:#5A3696">1955</span></a><o:p></o:p><=
/span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">NFS startup failed =
with build 20140205-1(qemuarm, qemumips and qemuppc)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">8<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5827"><span style=3D"color:#5A3696">5827</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1988"><span style=3D"col=
or:#5A3696">1988</span></a></span><span class=3D"apple-converted-space">&nb=
sp;</span><span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D1946"><span style=3D"color:#5A3696">1=
946</span></a></span><span class=3D"apple-converted-space">&nbsp;</span><sp=
an style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/=
tr_show_run.cgi?run_id=3D1990"><span style=3D"color:#5A3696">1990</span></a=
></span><span class=3D"apple-converted-space">&nbsp;</span><span style=3D"f=
ont-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D1952"><span style=3D"color:#5A3696">1952</span></a><a href=3D"h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1950"><span style=
=3D"color:#5A3696">1950</span></a></span><span class=3D"apple-converted-spa=
ce">&nbsp;</span><span style=3D"font-size:10.0pt"><a href=3D"https://bugzil=
la.yoctoproject.org/tr_show_run.cgi?run_id=3D1947"><span style=3D"color:#5A=
3696">1947</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">ADT installation fa=
iled on all ARCHs with build 1.6_M3 rc1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1</span><span class=3D"apple-converted-space"><sp=
an style=3D"color:#236EDE">&nbsp;</span></span><span style=3D"font-size:10.=
0pt;color:#236EDE">(Recent)</span><span style=3D"font-size:10.0pt"><o:p></o=
:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5834"><span style=3D"color:#5A3696">5834</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1997"><span style=3D"col=
or:#5A3696">1997</span></a></span><span class=3D"apple-converted-space">&nb=
sp;</span><span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D1998"><span style=3D"color:#5A3696">1=
998</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Cannot wake from su=
spend state using the USB mouse or keyboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1</span><span class=3D"apple-converted-space"><sp=
an style=3D"color:#236EDE">&nbsp;</span></span><span style=3D"font-size:10.=
0pt;color:#236EDE">(Recent)</span><span style=3D"font-size:10.0pt"><o:p></o=
:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5836"><span style=3D"color:#5A3696">5836</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">IN PROGRESS IMPLEMENTATION<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945"><span style=3D"col=
or:#5A3696">1945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Target model needs =
table for image names and sizes<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M4<o:p></o:p></span></p>
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
_bug.cgi?id=3D5850"><span style=3D"color:#5A3696">5850</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Low<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1950"><span style=3D"col=
or:#5A3696">1950</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Application name no=
t listed in run configurations when installing the ADT using Bitbake<o:p></=
o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Future<o:p></o:p></span></p>
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
_bug.cgi?id=3D5858"><span style=3D"color:#5A3696">5858</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">IN PROGRESS IMPLEMENTATION<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1986"><span style=3D"col=
or:#5A3696">1986</span></a></span><span class=3D"apple-converted-space">&nb=
sp;</span><span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D1982"><span style=3D"color:#5A3696">1=
982</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">kernel version mism=
atched on non-x86 bsp with 1.6 m3 rc2 build<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M3<o:p></o:p></span></p>
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
_bug.cgi?id=3D5862"><span style=3D"color:#5A3696">5862</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1978"><span style=3D"col=
or:#5A3696">1978</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">sstate-cache-manage=
ment.sh can't remove duplicated sstate files for qemux86-64<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5877"><span style=3D"color:#5A3696">5877</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1945"><span style=3D"col=
or:#5A3696">1945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">installed_size fiel=
d is always 0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
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
_bug.cgi?id=3D5887"><span style=3D"color:#5A3696">5887</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1953"><span style=3D"col=
or:#5A3696">1953</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Unable to connect t=
o X server<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Total: 27</span>=
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
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:12.0pt">Distro testin=
g<o:p></o:p></span></u></b></p>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:12.0pt"><o:p><span st=
yle=3D"text-decoration:none">&nbsp;</span></o:p></span></u></b></p>
<p class=3D"MsoNormal">The usage of Distro Testing is intended to catch bug=
s that are distribution specific using yocto-autobuilder. The tests are bei=
ng run with all systems updated, on identical hardware and supporting the f=
ollowing distros :<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Fedora 20<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Ubuntu 13.10<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>OpenSuse 13.1<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>CentOS 6.5 (starting with 1.6_M4.rc1)<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In the future we will include nightly-oe-selftest an=
d nightly-qa-targetbuilds as soon as they are accepted in master branch. Cu=
rrently running the same build on each machine, implied limiting the number=
 of buildsets that we are running
 on Distro Testing, as follows:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>buildtools<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>nightly-arm<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>nightly-multilib<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>nightly-qa-systemd<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>nightly-x86<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>nightly-x86-64<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>nightly-x86-64-lsb<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>nighlty-world <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regarding the systemd failures on OpenSuse and Ubunt=
u there is no bug filed because the issues are still investigated and they =
are not reproducing constantly.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"821" style=3D"width:616.0pt;margin-left:-.15pt;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;background:#DA9694;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:black">COMMIT<o:p></o:p></sp=
an></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er:solid windowtext 1.0pt;border-left:none;background:#DA9694;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">54562006c1327c5b99daa4cc=
05a3ba7e38412da1<o:p></o:p></span></p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er:solid windowtext 1.0pt;border-left:none;background:#DA9694;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#DA9694;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:black">RELEASE<o:p></o:p></s=
pan></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#DA9694;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">1.6_M3.rc2<o:p></o:p></s=
pan></p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#DA9694;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:black">Fedora 20<o:p></o:p><=
/span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nighlty-wor=
ld<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; buildtools<=
o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-arm=
<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-mul=
tilib<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-qa-=
systemd<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-x86=
<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-x86=
-64<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-x86=
-64-lsb<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:black">OpenSuSE 13.1<o:p></o=
:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nighlty-wor=
ld<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; buildtools<=
o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-arm=
<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-mul=
tilib<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-qa-=
systemd<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">FAIL<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:yellow;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">SystemdBasicTests and Sy=
stemdServiceTests FAIL<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-x86=
<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-x86=
-64<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-x86=
-64-lsb<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:black">Ubuntu 13.10<o:p></o:=
p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nighlty-wor=
ld<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; buildtools<=
o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-arm=
<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-mul=
tilib<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-qa-=
systemd<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">FAIL<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:yellow;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">SystemdBasicTests and Sy=
stemdServiceTests FAIL<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-x86=
<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-x86=
-64<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#F2F2F2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#3F3F3F">&#8226; nightly-x86=
-64-lsb<o:p></o:p></span></b></p>
</td>
<td width=3D"293" nowrap=3D"" valign=3D"bottom" style=3D"width:220.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
<td width=3D"319" nowrap=3D"" valign=3D"bottom" style=3D"width:239.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:12.0pt">Performance_t=
est<o:p></o:p></span></u></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">During M3 there is a slight degradation in building =
the image w/o rm_work. Check out the charts below for exemplification or th=
e xls attached with more detailed data and more metric graphs.<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"1234" height=3D"736" id=
=3D"Picture_x0020_2" src=3D"cid:image002.png@01CF332B.06C13790"><o:p></o:p>=
</p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_--

--_007_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=88432;
	creation-date="Wed, 26 Feb 2014 18:42:39 GMT";
	modification-date="Wed, 26 Feb 2014 18:42:39 GMT"
Content-ID: <image002.png@01CF332B.06C13790>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAABNIAAALgCAIAAADeD80YAAAAAXNSR0IArs4c6QAA/8pJREFUeF7s
nQmclVX9/4WBYYZlYNh3kMUNl0xxAzT4Z2kabbapBSXYZgU/y6LUSktaLMioLLAgszLNEjMrC8og
U9wVNxbZd5hhYFa2//vOF09P996Zufe55+6f5zWv+3ruM+f5Pue8z3Of7/M553vOaXfkyJFjtImA
CIiACIiACIiACIiACIiACIhAegi0T49ZWRUBERABERABERABERABERABERCBCAHJTt0HIiACIiAC
IiACIiACIiACIiACaSQg2ZlGuDItAiIgAiIgAiIgAiIgAiIgAiLQzsZ23nbbbbW1tcIhAiIgAiIg
AvlCoFevXldffbXH3MoVeoQpUyIgAiIgAsVMINZHH5Wds2fPnjVrVjGjUdlFQAREQATyi4B3z+Xd
YH7xVG5FQAREQAREwBeBWJeqIFtfbGVHBERABERABERABERABERABEQgDgHJTt0WIiACIiACIiAC
IiACIiACIiACaSQg2ZlGuDItAiIgAiIgAiIgAiIgAiIgAiIg2al7QAREQAREQAREQAREQAREQARE
II0EJDvTCFemRUAEREAEREAEREAEREAEREAEJDt1D4iACIiACIiACIiACIiACIiACKSRgGRnGuHK
tAiIgAiIgAiIgAiIgAiIgAiIgGSn7gEREAEREAEREAEREAEREAEREIE0EpDsTCNcmRYBERABERAB
ERABERABERABEZDs1D0gAiIgAiIgAiIgAiIgAiIgAiKQRgKSnWmEK9MikC8E7r777nbt2n35y1/O
lwwnmM9vfOMblOvHP/5xgumVTAREQAT8Epg0aRJPoX//+99JmX3kkUc466KLLkrqLCUWgVgCjz76
6ODBg7mdTj75ZPERgewSkOzMLv8cvfq6det4QvXo0SPZ/F133XWc+Mtf/jLZE5U+uwSQZ2Tg0ksv
zW42Ql+9rHnjvo2y8Pa3v50j3//+90Nb1okiIAJFTmDBggX4NbfxBs8D8+DBg4blO9/5Dv+64oor
WqLU1NTEvxobG5PCeOjQIdLv378/qbOymPipp57iIcxrw/bt27OYDV06igA36rve9a7NmzdzfOXK
leIjAtklINmZXf5pvPr48eODnvLss89++OGH3fVGjRrFf//whz/EzYE5vL179yabP/OvDQ0NyZ6Y
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
ngkwDR0zypqbZF575u91o/k9X8mfOeaZILexcwsne4XgmmlRcf/8K1lrqadn2kOyYSsHaBMBERAB
ERABERABEcgWAcnObJHXdUVABERABERABERABERABESgKAhIdhZFNauQIiACIiACIiACIiACIiAC
IpAtApKd2SKv64qACIiACIiACIiACIiACIhAURCQ7CyKalYhRUAEREAEREAEREAEREAERCBbBCQ7
s0Ve1xUBERABERABERABERABERCBoiAg2VkU1axCioAIiIAIiIAIiIAIiIAIiEC2CEh2Zou8risC
IiACIiACIiACIiACIiACRUFAsrMoqlmFFAEREAEREAEREAEREAEREIFsEZDszBZ5XVcEREAEREAE
REAEREAEREAEioKAZGdRVLMKKQIiIAIiIAIiIAIiIAIiIALZIiDZmS3yuq4IiIAIiEBREBg/fny7
5i2qtFHHFyxYYMmWLl3qUrJvB0lsB+1rrLWiQKlCioAIiIAI5C2B9MrOmc1bS47WedYon2rpnT92
ydasWRPlj/MWuzIuAiIgAiJQFAQQk1OnTj1y5MiSJUvMIZpijDqOg1u5ciXJ2CZOnOiSsW8Hx44d
SxrOmj9/Pl/5ZL8oCKqQIiACIiACBUGgHd6LgsyePXvWrFl+S4R/HTNmDH50zpw55mL5nDZtml0F
9zlv3jz+RbJrrrlm5MiRdrylZPzLDJLSXLI2ERABERCBYibg3XN5N2iea/Lkybgt5/WsyqKO492m
T59u/0Kgxro5mmKXLVuGizQnGGUt6ja46667NmzYUMz3hsouAiIgAjlFgGf4hAkTcipL6c5MrEtN
o+ykMK34Rfow+S8q1EUKjRs3Dp8ahcAlsx3+27rslK9N9z0k+yIgArlJQC4t9XrJruxsRU9SuYsW
LSIBfnDUqFFWUjo8XUtuVNnTUZDU8cqCCIiACIhA8RCI44kseueWW26xHb/b6tWrZ8yYEWuTplx3
HLVpCThC+mDi2GR4WQ62ksk0FcQvFlkTAREQARFInYD3B753gxYNa2GxOC/bsS3quPN3QcdnKfGS
Uc7RTm/FG6ajIKnXlyyIgAiIgAgUD4FYT5TesZ1xBT39losXL7bIW9usG3PFihXB9MFk7C9fvpx+
UWKQJk2aFJxuoXjaDFRSERABERCBvCNAhySeC/+F87LOSYvxiTpO3CxO0JKZf3RDQHF/9HDylQhb
N8MQA1g03iTvbgZlWAREQASKmUAaZScDV/CUc+fOdb7Txm3iU+2gHb/55pvNoTLpAhFEpIlN5uZU
sPZd+dpivmVVdhEQARHILwKubduyzVe3Y/+yrwwzCX6146hTdzr7zhsGm27zi4ZyKwIiIAIiUJwE
0ig7cYpBX4u/tIbeYOcyX50Ttf+2lMyqx5xucVaVSi0CIiACIiACIiACIiACIiAC+UggjbIzH3Eo
zyIgAiIgAiIgAiIgAiIgAiIgAn4JSHb65SlrIiACIiACIiACIiACIiACIiAC/0NAslM3hAiIgAiI
gAiIgAiIgAiIgAiIQBoJSHamEa5Mi4AIiIAIiIAIiIAIiIAIiIAISHbqHhABERABERABERABERAB
ERABEUgjAcnONMKVaREQAREQAREQAREQAREQAREQAclO3QMiIAIiIAIiIAIiIAIiIAIiIAJpJCDZ
mUa4Mi0CIiACIiACIiACIiACIiACIiDZqXtABERABERABERABERABERABEQgjQQkO9MIV6ZFQARE
QAREQAREQAREIOsEjhw69MLsb/B3uKkp65lRBoqTgGRncda7Si0CIiACIiACIiACIlAsBNbd/eud
y5fxt3r+T4ulzCpnjhGQ7MyxClF2REAEREAEREAEREAERMAfgf1r166/+zfYKykr3/zQg4hPf7Zl
SQQSJSDZmSgppRMBERABERABERABERCB/CJAeO1Lc7/L5+BLJx/38U+Q+Zdvm9uwfXt+lUK5LQAC
kp0FUIkqggiIgAiIgAiIgAiIgAjEIUB4Lb2dZf36jZg6tf+bL+TvYG3tC9/8BkJUvEQgkwQkOzNJ
W9cSAREQAREQAREQAREQgQwRcOG1J874PyJsuSodnuUDBu5bteq1X/4iQ5nQZUSgmYBkp24EERAB
ERABERABERABESg0AsHw2h6nnGrFQ3yePOvL7UtL19/z2z1PPlFoZVZ5cpiAZGcOV46yJgIiIAIi
IAIiIAIiIAKhCATDa4MGuo4YMfKjV3Hkxe9+p6mqKpRtnSQCSROQ7EwamU4QgeIk8OjLO6+dv+Jj
P3j0tsUvLXtxR32TxoQU542gUouACIiACOQBgdjw2mCmmV6o9znnHqipQXlqkGceVGdBZFGysyCq
8fVCNB08/JcnN6MNPjpn+XV3PPGte59f+LfVf1qx6fFXd63fsV86IZcre1dN45Ordz/w2Mbb//TK
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
44473v/+9yM1ia398Ic/LM2ZxTtMlxYBERABEcgigREjRvztb3/7yU9+Qofn6NGjL7rootWrVzO3
EFnSWilZrBddWgREQASKjUAhyM66urqf//znr7322gUXXID+bN8+UqjNmzejPLXsdbHd0CqvCIiA
CIhAFAHCaJmxlvXDTjnlFEadLFmyhD5PURIBERABERCBTBIoBNlZUVHx+OOP/+xnP7vzzjsvvfTS
q6+++q9//StjV9SUm8k7SdcSAREQARHIWQKmPFmck6Geo0aN0mQHOVtTypgIiIAIFCqBQpCd1E3P
nj0feeSRd7/73eXl5Q888MBjjz32lre8pVDrTOUSAREQAREQgWQJmPKsra1N9kSlFwEREAEREIHU
CRSI7Awqz1dffXXAgAEnnHBC6nRkQQREQAREQATyiABzHHzsYx9rKcMoT/Vz5lFtKqsiIAIiUEgE
Ckd2OuWpptxCukFVFhEQAREQgQQJoDmZy/2zn/1sS+kfffTRBx98MEFrSiYCIiACIiACHgnkn+xk
3tovf/nLu3btikuBaFuW7vQISKZEQAREQAREIC8I3HvvvQwwOemkk5544om3vvWtd911VzDbaE6m
fL/kkkvyoizKpAiIgAiIQIERyDPZieb83Oc+96Y3val3795xa0JNuQV2g6o4IiACIiACCRK48sor
Dx8+/JGPfORPf/oTmnPFihUPPfSQnWua89vf/naCppRMBERABERABPwSyDPZyYy1rHx94YUXslzK
ZZddxnIpCFFHRE25fm8OWRMBERABEcgvArTMTp069cYbb6RxdsqUKawlRv5feeUVac78qkflVgRE
QAQKj0Ceyc7zzjvvPe95zxVXXHH99dfffvvtvXr1+tGPfqSm3MK7L1UiERABERCBcARYwpoTGec5
a9asiy++mP3jjz9e/ZzhYOosERABERABXwTyTHZS7Le//e2f+MQnFi1aRFPu+973vrVr16op19fd
IDsiIAIiIAJ5RKCmpoY1UWIzXFdXxxLWP/7xjwcNGpRHxVFWRUAEREAECphA/slOKmP8+PEdOnQg
vPamm26i51NNuQV8g6poIiACIiACLRFgkWoGmxD7E0zAfEKlpaW/+MUvjj32WKETAREQAREQgRwh
kAeyk3kRggM4HbjrrruO6RPGjh2bIyiVDREQAREQARHIJIFVq1YtXbr05ZdfDipPjmzYsCGT2dC1
REAEREAERKBNArkuO1999dXvfe97zJEQVJ405fKV42eeeWabJVQCERABERABEShIAp/85CcrKirm
zp1rynPPnj1Mrff5z39+xIgRBVleFUoEREAERCB/CeS67GTG2p///Ocnn3xyUHmqKTd/bzjlXARE
QAREwDsBU57nn38+swd5Ny6DIiACIiACIpA6gVyXnSx4feqpp06bNs2UJ1PzPfzww2rKTb3iZUEE
REAERKBgCNDPuWbNmkceeaRnz54FUygVRAREQAREoJAI5LrsdKxNeQ4dOnTYsGGFVAEqiwiIgAiI
gAikSIBQ23vuuUeaM0WMOl0EREAERCB9BPJGdjKYk9jaZcuWHXfccenDIcsiIAIiIAIikHcEmN29
rKws77KtDIuACIiACBQPgbyRnfhU5kuQ5iyeW1MlFQEREAEREAEREAEREAERKAwCeSM7wd2tW7fC
gK5SiIAIiIAIiIAIiIAIiIAIiEDxEMgn2Vk8taKSioAIiIAIiIAIiIAIiIAIiEDBEJDsLJiqVEFE
QAREQAREQAREQAREQAREIBcJSHbmYq0oTyIgAiIgAiIgAiIgAiIgAiJQMAQkOwumKlUQERABERAB
ERABERABERABEchFApKduVgrypMIiIAIiIAIiIAIiIAIiIAIFAyBdkeOHKEws2fPnjVrVsGUSgUR
AREQAREoeALePddtt91WW1tb8NxUQBEQAREQARFIN4FevXpdffXVwatIdqabueyLgAiIgAikhYB3
2ZmWXMqoCIiACIiACIjAMccclZ1q4tXNIAIiIAIikF8EYltS8yv/yq0IiIAIiIAIFA+Bo7KzeAqs
koqACIiACIiACIiACIiACIiACGSSgKYUyiRtXUsEREAEREAEREAEREAEREAEio6AZGfRVbkKLAIi
IAIiIAIiIAIiIAIiIAKZJCDZmUnaupYIiIAIiIAIiIAIiIAIiIAIFB0Byc6iq3IVWAREQAREQARE
QAREQAREQAQySUCyM5O0dS0REAEREAEREAEREAEREAERKDoCkp1FV+UqsAiIgAiIgAiIgAiIgAiI
gAhkkoBkZyZp61oiIAIiIAIiIAIiIAIiIAIiUHQEJDuLrspVYBEQAREQAREQAREQAREQARHIJAHJ
zkzS1rVEQAREQAREQAREQAREQAREoOgISHYWXZWrwCIgAiIgAiIgAiIgAiIgAiKQSQKSnZmkrWuJ
gAiIgAiIgAiIgAiIgAiIQNERkOwsuipXgUVABERABERABERABERABEQgkwQkOzNJW9cSAREQAREQ
AREQAREQAREQgaIjINlZdFWuAouACIiACIiACIiACIiACIhAJglIdmaStq4lAiIgAiIgAiIgAiIg
AiIgAkVHQLKz6KpcBRYBERABERABERABERABERCBTBKQ7MwkbV1LBERABERABERABERABERABIqO
gGRn0VW5CiwCIiACIiACIiACIiACIiACmSQg2ZlJ2rqWCIiACIiACIiACIiACIiACBQdAcnOoqty
FVgEREAEREAEREAEREAEREAEMklAsjOTtHUtERABERABERABERABERABESg6ApKdRVflKrAIiIAI
iIAIiIAIiIAIiIAIZJKAZGcmaetaIiACIiACIiACIiACIiACIlB0BCQ7i67KVWAREAEREAEREAER
EAEREAERyCQByc5M0ta1REAEREAEREAEREAEREAERKDoCEh2Fl2Vq8AiIAIiIAIiIAIiIAIiIAIi
kEkC7Y4cOZLJ6+laIiACIiACIpCbBG677bba2trczJtyJQIiIAIiIAL5SKBXr15XX301OY/ITjna
fKxC5VkEREAERMA5My8oZs+ePWvWLC+mZEQEREAEREAERAACzrdGZKccre4JERABERCBfCTg13/5
tZaPPJVnERABERABEfBLwPlWje30C1bWREAEREAEREAEREAEREAEREAE/oeAZKduCBEQAREQAREQ
AREQAREQAREQgTQSkOxMI1yZFgEREAEREAEREAEREAEREAERkOzUPSACIiACIiACIiACIiACIiAC
IpBGApKdaYQr0yIgAiIgAiIgAiIgAiIgAiIgApKdugdEQAREQAREQAREQAREQAREQATSSECyM41w
ZVoEREAEREAEREAEREAEREAERECyU/eACIiACIiACIiACIiACIiACIhAGglIdqYRrkyLgAiIgAiI
gAiIgAiIgAiIgAhIduoeEAEREAEREAEREAEREAEREAERSCMByc40wpVpERABERABERABEcgwgXbt
2i1YsCDuRWfOnMl/W8rP0qVL+e+aNWuSyjDpOYtzkzqrzcStZ7XN0xNP0BKu8ePHk4fE7XhMSfW1
Uk0eLyRTIpBJApKdmaStax0lYM/TZB1bjuAL+lfbb8m750iGk80GJcqWo002q0ovAiIgAiIgAiIg
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
REAEREAERKBACUh2FmjFqlgiIAIiIAIiIAIiIAIiIAIikBsEJDtzox6UCxEQAREQAREQAREQAREQ
AREoUAKSnQVasSqWCIiACIiACIiACIiACIiACOQGAcnO3KgH5UIEREAEREAEREAEREAEREAECpSA
ZGeBVqyKJQIiIAIiIAIiIAIiIAIiIAK5QUCyMzfqQbkQAREQAREQAREQAREQAREQgQIlINlZoBWr
YomACIiACIiACIiACIiACIhAbhCQ7MyNelAuREAEREAEREAEREAEREAERKBACUh2FmjFqlgiIAIi
IAIiIAIiIAIiIAIikBsE0iU7Z86c2a55W7BgASVds2aNfeV4bhRcuRABERABERABERABERABERAB
EcgEgXTJzjlz5hxp3hYuXEg5pkyZsnr1ar6yv3Tp0kyUTNcQAREQAREQAREQAREQAREQARHIAQLp
kp2ue3PRokUUc/ny5SNHjmRnzJgxOVBqZUEEREAEREAEREAEREAEREAERCBDBNrRAzl79uxZs2al
6YIE1nIJ++QSxNyiPydOnNjS5e66664NGzakKTMyKwIiUPAExo8fP2HChIIvpgpoBPz6L7/WslhH
BVOQLDLUpUVABERABLwQcC4p7bKTV8Bly5bxSbcngpOxnddcc431fMbd5Cy9VLCMiIAIiEAxEPDr
MvxayyL/gilIFhnq0iIgAiIgAl4IOJeUriBbdKbNITR16lRyfPPNN48aNYqv7LeiOb2UTUZEQARE
QAREQAREQAREQAREQARyh0C6ZCc9nDal0LRp0ygtUbX2lamGcqfwyokIiIAIiIAIiIAIiIAIiIAI
iEC6CaRLdqY737IvAiIgAiIgArlPgBkNLPYndhZ3woJsjTHbSEAyJuQLFsrODR6Pmyz3OSiHIiAC
IiACRU5AsrPIbwAVXwREQAREIF0E0JCsImbBPpMmTeIyTHBg+hPNaYNQ3LZ48eIZM2bYV5fMzl2y
ZIlTrcFk6cq37IqACIiACIiAbwJpn1Io2QxrIoRkiSm9CIiACBQtAb8uw681KgWtiEq00SU2wV6w
pvgvutSGotg07ySOO+uemwS+9WTOOAUp2ltCBRcBEcgjApp8Po8qK3RWMzeTbbJZ9O71k82A0ouA
CIiACOQLAb8uw6+1xGUn4nPevHmo07iTvVsgLuq09WTBKvNekHy5H4o2n3X7GxvqmvbuqbWdGrdT
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
QGZngUCrGhEQAREQAREQAREQAREQARGoTAIyOyuz39VqERABERABEQhJYPny5R0dHSEzJzrb+vXr
N23alOgmqnEiIAIiEJJApZidnIoWklAisvF+wFtCIpqiRoiACIiACBSZwCuvvHLccceViOW5bdu2
zZs3RyeybNmy3//+9xEb9cYbbxx++OHRLU8aFb1FiDF//vyILUKMBx544J577okoD8IcffTRK1eu
jFIOhVxyySW/+MUvojcqihgubyzd1NraGktzYnmAS0qYWPpIhZQUgUoxOx966KFzzjmniOjXrl0b
ZVhhILjvvvuimI5f/vKXOSwuNIHoY+tNN90URd8888wz1157bWj5gX/yySf/6U9/ClcC2efNm0cT
6IhwJUTPFbELouuSP+++QjckovzUG1GA0JIrowiIQBqBo4466hvf+EYUyxP74cgjjxwzZkwUxYRU
GIrHH3/8scceG7Gc22+//eqrr77hhhu++c1vRunufffd9+c//3lEy3PdunXNzc0RW0QrOLuOl58v
felLUV4/zObEYoyChbznn3/+bbfdttdee4Uuh1Z85jOf+cQnPrFx40bkiWjb80JFX7e0tISWJ65u
uvzyy6N8lUz+uB7gkhImdNcoY8kSqBSzc8aMGSiDcJbn888//653vQvtyIdwHfnRj3703HPPDT2s
MNSi4//xj3+8973vffnll0PIUFtb+6tf/eqyyy4LrcY+97nPhaPnpL3rrrs++clPhrM8sTm//vWv
f+ELXwjRdsty3XXXcUr7+973vnAloLbJyzOw//77h2sC9eJ8xTTtq6++GkKG6Ootoi656KKLePmA
4YIFC0LIT5aIj1B0AcKJrVwiIAJZCUS0PP/nf/7n+9//Pqum3/ve96IQvuWWW37729/+5je/QcVE
md595JFHrr/++ltvvfWPf/zj1q1bo4gU3fJE5d1xxx1RVLbJ/853vpMj03kDQYWF8/7FKjvrrLPO
O+883kO+853vnHDCCaE1YFVV1dChQ+++++63v/3tiBTCEkZ7Hnzwwfvttx9vdChTTNAQhRgZuhh1
dsEFF/Tv3z90X8fVTdu3bz/ttNNCvyKa/HE9wCUlTOiuUcbSJdDd3T179mx+V8J14403nn322UFb
euqppzK19tprr33ta18Lmpf0ixcvXrRoER+uuOKKp556Cg+coIX8+te/RhFaURQSNLtL397ezgQh
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
/PHHOcWYXN/97ncfeOAB7E8/JZRaGuxnOzWxTOUvNZ6SRwREQAQqmQDHHQe1OcHFAVTsUrnjjjs4
+hgfIu7853/+Z5JsTlr0kY98RDZnJX811HYREIGiECghs5Plneuvv96nzWmwbMHz4osvnjx5sq3t
sE+yfG22xsZGNH35yl+UJ1iVioAIiIAIZCUQzuWBGDCPPPLIZz/7WU6fYtmzpaUleXjDkUkeB7VI
BERABApJoITMTpodVBN88IMfxIOIs8WeeuqpojvWRu+26H6V0WVQCSIgAiIgApVD4MUXX0xr7MiR
I1GpV1xxxQEHHHDXXXf179+/cmiopSIgAiIgAvkjUFpmZ4524oK7fPnytASHHXbYggUL7rzzTrTj
lVdemT9MKlkEREAEREAEkkfgoYceOuecc6xd6NmzzjqLD7feemsgz6PkYVGLREAEREAEYidQNmYn
Lf/yl79s4Q24nn/++R/84AccCcVcbMTYObEzVYEiIAIiIAIiUBYE2OKIhWmW5/Tp00899dSyEFtC
ioAIiIAIlB2BsjE7sS1/9atfXXbZZVieRA8iyB4KsuxwS2AREAEREAERKCkCzvJkMleLnCXVNRJG
BERABJJEoGzMTqA7y5NwrwsXLtQiZ5IeRLVFBERABESgwARwpn3ve9/LaSJmeV5wwQUFFkDViYAI
iIAIVA6B8jA7W1tbT959bd26lTVPtnFynljldJJaKgIiIAIiIALxEvjNb34zbNgwwtWeeOKJhK7F
8iQy/HPPPRdvLSpNBERABERABIxAeZidTMFefvnl7DkhdK1ZnlzqQhEQAREQAREQgXAEuru7P/zh
D3MCGQd3nX/++VieJ5100n777ReuNOUSAREQAREQgdwEysPsPPLII/v27Xv11VcTt9YsT8Wt1ZMt
AiIgAiIgAiEIcPAY10c+8pF169Zt3ryZUPAf+MAHJk6cGKIoZREBERABERABnwRK2uwkmPtNN930
8MMPox1xB2IidujQofxubGz02TwlEwEREAEREAERcAQ4cmznzp04055xxhkc0UmshHe84x2Ync3N
zaIkAiIgAiIgAvkjUNJm59y5c/faa68f//jHGJ+TJ09mb+eXvvQlAtgqmFD+HgiVLAIiIAIikDAC
uAjZySj33HPPdddd95nPfObcc8/F2sTyvPfee//2t7+hYRPWZDVHBERABESg1AiUnNn5+9///ic/
+QmYrr322lWrVh199NHoSE7pXLx48WuvvXb33XdrqbPUniHJIwIiIAIiULIEbr/9duIGsXvz8ccf
R6XiUst2FaTFdej9738/B5KVrOQSTAREQAREIEkESsjsxKX29NNPHz169BFHHIF2ZGr22Wef5ZRO
cBNPaPv27czXJgm92iICIiACIiAC+Sbw3e9+95hjjhk8ePCaNWvwGOJPljfN8vzUpz41YcKEfAug
8kVABERABEQAAiVkdv75z3/GpXbcuHEDBw68/vrr2cxJuNrLLrvMLE98gbTOqUdWBERABERABAIR
YA6XyVzWPI8//viPfvSjZnniTLRhw4ZA5SixCIiACIiACEQhUEJm53ve857777+fwAbMyGJ23nXX
XWZ56qyUKB2svCIgAiIgApVMwPZtPv300/w2y/Ob3/zmeeedN3z48ErGoraLgAiIgAgUmEAJmZ0E
CjruuOO2bdvGLCyfzfL84x//qLNSCvxMqDoREAEREIHEEDjooIOWLl26//774zRkludFF12UmNap
ISIgAiIgAuVCoITMTpCdeeaZjz766CWXXIJjrVmehxxySLmglJwiIAIiIAIiUJoEZsyYgeV5zjnn
IF5DQ0NpCimpREAEREAEEkygtMxOQGNt3nfffViehLTls85KSfDDp6aJgAiIgAjETgALk52cmcVy
f9asWbFXpwJFQAREQAREwA+BYpqdRKadOHEih6OkCWqWJ1s9/TRAaURABERABERABByBYcOG/fzn
P/danr/85S9/9KMfkWDQoEECJQIiIAIiIAJFIVBMs/O555772te+Nn36dK/lOXfuXFvnlBdQUR4I
VSoCIiACIlCOBDZt2vTAAw9wFNkJJ5xw6623ei3Pww8/nBM7y7FRklkEREAERCAxBIpjdj7xxBOY
mk1NTZ/85CcXLlzotTzRl1rnTMzjpYaIgAiIgAgUhgA251lnncWBnISuZerWLE9+n3zyyUzjNjc3
F0YM1SICIiACIiACWQkUx+y88MILTzzxRAQaOXLkvvvua5bnvffee/HFF3N0p9Y59bCKgAiIgAiI
QCAChx12GJO2q1evvummm8iI5Ylu5ezrmTNn9u/fP1BRSiwCIiACIiACsRMojtn5iU98gklZpmDN
vRbL89JLL7355pvRjrG3UAWKgAiIgAiIQOIJjB49mjZ+4QtfcJbn9773vZ/97Gdo2MS3XQ0UAREQ
AREofQLFMTs5N+ynP/3p3XffbZZnS0vLj3/8Y3yBFLe29J8YSSgCIiACIlAiBNjP+c1vfvN3v/sd
WzrN5rzzzjsvuOACLE+8bb/xjW/I5iyRnpIYIiACIiAChTM72c+JdnzxxReB3tjYyAFia9euNcuT
DzfccINsTj2OIiACIiACIuCfwObNmwlR+9RTTx144IH41qJYCVqLCYrl+fGPf9x/OUopAiIgAiIg
AvkmUDiz88knn2Rhc/78+cTTY2qWYEKscA4dOvTBBx8cO3Zsvtup8kVABERABEQgYQQmTJjw29/+
lnlbtOo+++zz4Q9/mLldYgvRTJ2VkrC+VnNEQAREoNwJFM7sPOmkk9CIhAtiq8kLL7zwkY98hKlZ
ju7kjtY5y/0xkvwiIAIiIAJFIYAbLRFrjzrqqAMOOGDp0qWLFy9mzbMokqhSERABERABEchBoHBm
J0LMmDEDBUm4Wj688sorixYtUng9PZ0iIAIiIAIiEIWAWZ4czslWz4kTJxIQPkppyisCIiACIiAC
+SBQULPTWZ7nnHMOK5yEetc6Zz46VWWKgAiIgAhUFAGzPHfs2FFRrVZjRUAEREAEyohAoc1Oszyn
TZtmYfd0iYAIiIAIiIAI+CGA3jzvvPM2bNiQNTGWp9Y5/WBUGhEQAREQgaIQyJfZuX79+nPPPben
JnGqtdY5i9LfqlQEREAERKAcCWBz/vd///eRRx45fPjwrPI/8sgj99xzTzk2TTKLgAiIgAhUAoG8
mJ3YnKxnnnXWWT0R/M53vtPTfG0lQFcbRUAEREAERCAQgT//+c8cl/LBD35w+fLlJ5xwAmrU6zSE
zfmLX/zi2GOPDVSmEouACIiACIhAwQjkxeycN28ejkDNzc333nsvx6VYMHd3XXTRRYccckhP87UF
a7kqEgEREAEREIFyIYDe5CjO//iP/zj//POvv/76YcOGXXfddSa82ZyXX355ubRFcoqACIiACFQg
gbyYnRdeeOGvf/1rtOPGjRtvvfXWSy+99JlnnjG42JxTpkwh1HsFslaTRUAEREAERCA0geOPP/7L
X/7ywoULmbfl7OuXX36Zop577jnZnKGRKqMIiIAIiEDBCOTF7GTf5vz589GOWJ5ox9NPP33dunU0
6cYbb5TNWbCuVUUiIAIiIAIJI2CREXCvZQ4XDUvr9ttvP61zJqyX1RwREAERSCSBvJidkEIvoh35
wD5PNCLWJp9POeUUrXMm8jFSo0RABERABGIngLtQ1qjvHEL22c9+dvLkybHXqAJFQAREQAREIE8E
4jE7cfX5wx/+kCnia6+9xi6URYsWKW5tnvpPxYqACIiACCSSwPPPP3/VVVcRvdZreT7++OP8yf2D
Dz44ka1Wo0RABERABJJKIB6z8/777z/jjDO8oYPQi2jHMWPG3HDDDcQWSio+tUsEREAEREAE8kGA
iLU333zz/vvv77U8lyxZsmLFinxUpzJFQAREQAREIK8E4jE7CR306KOPEjrIWZ4tLS233HJLXkVX
4SIgAiIgAiKQVALEgT/wwANnzJhhlmdraysa9uyzz54wYUJSm6x2iYAIiIAIJJhAPGYnx6XgRnvf
ffeZ5Ylr0Nq1a4kqlGBwapoIiIAIiIAIFICAWZ5jx44dN25cAapTFSIgAiIgAiKQDwLxmJ0mmbM8
NR2bj65SmSIgAiIgAhVIgE0r+NY+/PDD++67bwU2X00WAREQARFIBoE4zU6IEFto1KhRd955p2II
JeP5UCtEQAREQASKSwB9ev3118vmLG4vqHYREAEREIGIBGI2O/EC4iRr2ZwRe0XZRUAEREAERMAR
GDRokGiIgAiIgAiIQFkTiNnsbGhokM1Z1g+EhBcBERABERABERABERABERCBeAnEbHbGK5xKEwER
EAEREAEREAEREAEREAERKHcCMjvLvQclvwiIgAiIgAiIgAiIgAiIgAiUNAGZnSXdPRJOBERABERA
BERABERABERABMqdgMzOcu9ByS8CIiACIiACIiACIiACIiACJU1AZmdJd4+EEwEREAEREAEREAER
EAEREIFyJyCzs9x7UPKLgAiIgAiIgAiIgAiIgAiIQEkTqOru7p4zZ87MmTNLWkwJJwIiIAIiIAIZ
BOLVX/Pnz9+xY4cwi4AIiIAIiIAIxEVg2LBhX/ziFyktZXZK0caFVeWIgAiIgAgUkoBTZoWsVHWJ
gAiIgAiIgAgEJZAyO4PmUXoREAEREAEREAEREAEREAEREAER8ElAezt9glIyERABERABERABERAB
ERABERCBMARkdoahpjwiIAIiIAIiIAIiIAIiIAIiIAI+Ccjs9AlKyURABERABERABERABERABERA
BMIQ+P/mYxWw89EWsgAAAABJRU5ErkJggg==

--_007_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=10139;
	creation-date="Wed, 26 Feb 2014 18:42:40 GMT";
	modification-date="Wed, 26 Feb 2014 18:42:40 GMT"
Content-ID: <image003.png@01CF3332.0E51B190>
Content-Transfer-Encoding: base64

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

--_007_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_
Content-Type: image/gif; name="image004.gif"
Content-Description: image004.gif
Content-Disposition: inline; filename="image004.gif"; size=462;
	creation-date="Wed, 26 Feb 2014 18:42:40 GMT";
	modification-date="Wed, 26 Feb 2014 18:42:40 GMT"
Content-ID: <image004.gif@01CF3332.0E51B190>
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

--_007_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_--

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Performance Comparison.xlsx"
Content-Description: Performance Comparison.xlsx
Content-Disposition: attachment; filename="Performance Comparison.xlsx";
	size=53157; creation-date="Thu, 12 Dec 2013 12:08:08 GMT";
	modification-date="Wed, 26 Feb 2014 18:40:08 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQD7r8MvEQIAABwQAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADE
l0tu2zAQhvcFegeB28KilbZpWljOoo9lGyDpARhybBGWSILDJPbtO6IVtwic2LLUcCNLlma+eZA/
MbPLdVNn9+BRW1OyIp+yDIy0SptlyX7f/JhcsAyDMErU1kDJNoDscv72zexm4wAzsjZYsioE94Vz
lBU0AnPrwNCbhfWNCPTol9wJuRJL4GfT6TmX1gQwYRJaH2w++wYLcVeH7Pua/t5GcqsNy75uv2tR
JRPO1VqKQIHye6OeQCZ2sdASlJV3DbnO0XkQCiuA0NS585qI/hpCoMSQ8b1MDzX2g3ZZ5WQZA8NK
O3xHqT9DaN88n1Vn94va4bWC7Er48FM0lDtf1/zB+tWttav8ZSd9SxNLlDdCm8e4X+DHj5HHn2Lk
QNr8ouMDcciKyvI/A/kL6FmRs0QV2VWu68z7RHEE2v3A43X44ohuDjQAw6YGHHtDRKeHyLQIQV0H
0pXl6AH86/tAHMqLhzYE3t0Mr3vn6KhNyONWGY1JQh0dHseOzT+G3WB3OGy9R7sj07O19XgCQ0bD
diH17N9wCenfv9GY/foXWz1cqrp8T2B/GCwcp7M/vjL7qU6MVvceOnGesN6fErIvErI/J2QX05Tw
RKfS9kRMKalFSk0tUopq8aqqSqPmlbcOaZr10H+lP46OrfXEkSPwQcNueNw3hO2INAoP3lrQztoK
1B42j7P9/A8AAAD//wMAUEsDBBQABgAIAAAAIQC1VTAj9AAAAEwCAAALAAgCX3JlbHMvLnJlbHMg
ogQCKKAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAArJJNT8MwDIbvSPyHyPfV3ZAQQkt3QUi7IVR+gEncD7WNoyQb3b8nHBBUGoMDR3+9fvzK
2908jerIIfbiNKyLEhQ7I7Z3rYaX+nF1ByomcpZGcazhxBF21fXV9plHSnkodr2PKqu4qKFLyd8j
RtPxRLEQzy5XGgkTpRyGFj2ZgVrGTVneYviuAdVCU+2thrC3N6Dqk8+bf9eWpukNP4g5TOzSmRXI
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
AQAAIwAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQyLnhtbC5yZWxzhI/NCsIwEITvgu8Q9m5S
exCRpr2I4FXqAyzJ9gfbJGTj39ubi6AgeNvZZb+ZqZrHPIkbRR6907CWBQhyxtvR9RrO7WG1BcEJ
ncXJO9LwJIamXi6qE02Y8hMPY2CRKY41DCmFnVJsBpqRpQ/k8qXzccaUZexVQHPBnlRZFBsVPxlQ
fzHF0WqIR7sG0T5Ddv7P9l03Gtp7c53JpR8Wyka852YZibGnpEHK947fQylzZFB1pb4q1i8AAAD/
/wMAUEsDBBQABgAIAAAAIQByif3d3BYAAJFpAAAYAAAAeGwvd29ya3NoZWV0cy9zaGVldDEueG1s
tF1bc9s4sn7fqvMfXHoPTQLgzRV760wk331qa/ec3WfFVhLV2JZXUpKZ/fXnAwmA6EaLlpxE5Rk7
YDcAAh+7G32h3v/1j6fHo2+L9Wa5ej6dFFk+OVo8368els+fTyf/97/n75rJ0WY7f36YP66eF6eT
PxebyV/P/usv77+v1r9vviwW2yP08Lw5nXzZbl9Ojo83918WT/NNtnpZPOPKp9X6ab7FP9efjzcv
68X8oWN6ejxWeV4dP82Xz5O+h5P1Pn2sPn1a3i+mq/uvT4vnbd/JevE432L+my/Ll43v7el+n+6e
5uvfv768u189vaCLj8vH5fbPrtPJ0dP9ydXn59V6/vER9/1HYeb3vu/uH0n3T8v79Wqz+rTN0N1x
P9H0ntvj9hg9nb1/WOIO7LIfrRefTie/6ZO70kyOz953C/TP5eL7Jvr7aLt6uV182n5YPD6eTv7b
TI7+s1o9/eN+/rj4H7vEaCxybJ7dlo+r1e+W/+rhdJJjpM3icXFvF+hojl/fFn0fH4oWW/vvbnD7
N0Y+DkPHf/tpnHdb+bf10cPi0/zr4/bvq++Xi+XnL1sMrbK6xOrYRTp5+HO62NxjdzB6pmy/96tH
dIL/Hz0tLcqwuPM/ut/flw/bL6eTNlNNWZSVQieb7Z92wYG7+6+b7erpXz1J4Trqu1CuC/x2XRR5
Vpic9fBxsdmeL+0ER3vTrjf8dr2ZDvZ+Int2g03p7gu/XTdKZU1ZmqqxqzPc2J79gafrD799f8Xb
b7JyveG3X7Lm7b3Vrjf8dr1pbLawiXveK9a7u1f89vfaZHWRt/pNSwdod93ht59e8SNbUeDR6jFr
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
L3NoZWV0MS54bWxQSwECLQAUAAYACAAAACEAO20yS8EAAABCAQAAIwAAAAAAAAAAAAAAAAA6PAAA
eGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDEueG1sLnJlbHNQSwECLQAUAAYACAAAACEAFa+qPL0A
AAArAQAAJAAAAAAAAAAAAAAAAAA8PQAAeGwvY2hhcnRzaGVldHMvX3JlbHMvc2hlZXQxLnhtbC5y
ZWxzUEsBAi0AFAAGAAgAAAAhADHVR1T9AAAA9AUAACMAAAAAAAAAAAAAAAAAOz4AAHhsL2RyYXdp
bmdzL19yZWxzL2RyYXdpbmczLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAIkzgMfVAAAAvQIAACMA
AAAAAAAAAAAAAAAAeT8AAHhsL2RyYXdpbmdzL19yZWxzL2RyYXdpbmcyLnhtbC5yZWxzUEsBAi0A
FAAGAAgAAAAhAIAb3IHSAAAAjwEAAB8AAAAAAAAAAAAAAAAAj0AAAHhsL2NoYXJ0cy9fcmVscy9j
aGFydDEueG1sLnJlbHNQSwECLQAUAAYACAAAACEADkT037wAAAAlAQAAIwAAAAAAAAAAAAAAAACe
QQAAeGwvZHJhd2luZ3MvX3JlbHMvZHJhd2luZzEueG1sLnJlbHNQSwECLQAUAAYACAAAACEAGmOR
5b0AAAArAQAAIwAAAAAAAAAAAAAAAACbQgAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDMueG1s
LnJlbHNQSwECLQAUAAYACAAAACEAPQa0ZL0AAAArAQAAIwAAAAAAAAAAAAAAAACZQwAAeGwvd29y
a3NoZWV0cy9fcmVscy9zaGVldDIueG1sLnJlbHNQSwECLQAUAAYACAAAACEAcon93dwWAACRaQAA
GAAAAAAAAAAAAAAAAACXRAAAeGwvd29ya3NoZWV0cy9zaGVldDEueG1sUEsBAi0AFAAGAAgAAAAh
AB+ZntbaBQAAqxEAABQAAAAAAAAAAAAAAAAAqVsAAHhsL2NoYXJ0cy9jaGFydDkueG1sUEsBAi0A
FAAGAAgAAAAhAOOJ9PLzBQAAwBEAABQAAAAAAAAAAAAAAAAAtWEAAHhsL2NoYXJ0cy9jaGFydDcu
eG1sUEsBAi0AFAAGAAgAAAAhABwUp6j9AAAAbgMAABUAAAAAAAAAAAAAAAAA2mcAAHhsL2NoYXJ0
cy9jb2xvcnMxLnhtbFBLAQItABQABgAIAAAAIQDVLRgxnAQAAMIlAAAUAAAAAAAAAAAAAAAAAApp
AAB4bC9jaGFydHMvc3R5bGUxLnhtbFBLAQItABQABgAIAAAAIQCAMEynngQAACIRAAAUAAAAAAAA
AAAAAAAAANhtAAB4bC9jaGFydHMvY2hhcnQxLnhtbFBLAQItABQABgAIAAAAIQCQJS+RgwEAAHUD
AAAYAAAAAAAAAAAAAAAAAKhyAAB4bC9kcmF3aW5ncy9kcmF3aW5nMS54bWxQSwECLQAUAAYACAAA
ACEAxNzwBgoFAADpDAAAFAAAAAAAAAAAAAAAAABhdAAAeGwvc2hhcmVkU3RyaW5ncy54bWxQSwEC
LQAUAAYACAAAACEAgE48FMEEAADxGwAADQAAAAAAAAAAAAAAAACdeQAAeGwvc3R5bGVzLnhtbFBL
AQItABQABgAIAAAAIQCDr+rjjQYAAOMbAAATAAAAAAAAAAAAAAAAAIl+AAB4bC90aGVtZS90aGVt
ZTEueG1sUEsBAi0AFAAGAAgAAAAhABrlUeb1BQAAxBEAABQAAAAAAAAAAAAAAAAAR4UAAHhsL2No
YXJ0cy9jaGFydDgueG1sUEsBAi0AFAAGAAgAAAAhAH+gC1GLAgAATA4AABgAAAAAAAAAAAAAAAAA
bosAAHhsL2RyYXdpbmdzL2RyYXdpbmcyLnhtbFBLAQItABQABgAIAAAAIQBMjogYKAcAADIaAAAU
AAAAAAAAAAAAAAAAAC+OAAB4bC9jaGFydHMvY2hhcnQ1LnhtbFBLAQItABQABgAIAAAAIQABDzZV
CgcAADMaAAAUAAAAAAAAAAAAAAAAAImVAAB4bC9jaGFydHMvY2hhcnQyLnhtbFBLAQItABQABgAI
AAAAIQClNMuYeQMAAH0hAAAYAAAAAAAAAAAAAAAAAMWcAAB4bC9kcmF3aW5ncy9kcmF3aW5nMy54
bWxQSwECLQAUAAYACAAAACEARWkxcXkJAADyKQAAFAAAAAAAAAAAAAAAAAB0oAAAeGwvY2hhcnRz
L2NoYXJ0NC54bWxQSwECLQAUAAYACAAAACEAzT4nbfMFAADpEQAAFAAAAAAAAAAAAAAAAAAfqgAA
eGwvY2hhcnRzL2NoYXJ0Ni54bWxQSwECLQAUAAYACAAAACEANaDxlFwHAACiGgAAFAAAAAAAAAAA
AAAAAABEsAAAeGwvY2hhcnRzL2NoYXJ0My54bWxQSwECLQAUAAYACAAAACEAdbLFMLEBAADJAwAA
EAAAAAAAAAAAAAAAAADStwAAZG9jUHJvcHMvYXBwLnhtbFBLAQItABQABgAIAAAAIQCqSnvfnAYA
ABAfAAAnAAAAAAAAAAAAAAAAALm6AAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdz
MS5iaW5QSwECLQAUAAYACAAAACEA1lt82lYBAAB9AgAAEQAAAAAAAAAAAAAAAACawQAAZG9jUHJv
cHMvY29yZS54bWxQSwUGAAAAACoAKgBoCwAAJ8QAAAAA

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FDBC9AIRSMSX104gercor_--
