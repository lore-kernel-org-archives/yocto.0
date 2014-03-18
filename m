Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80A80E0090B
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 13:50:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Mar 2014 13:50:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,680,1389772800"; 
	d="gif'147?png'147,150?scan'147,150,208,217,147,150";a="475170992"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga001.jf.intel.com with ESMTP; 18 Mar 2014 13:50:50 -0700
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.221]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.222]) with mapi id
	14.03.0123.003; Tue, 18 Mar 2014 20:50:47 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.6_M4.rc1 Full Pass QA Report
Thread-Index: Ac9C63OTxddbQ93iQVGOJpt2lYsGfQ==
Date: Tue, 18 Mar 2014 20:50:47 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E961A008249@IRSMSX101.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Yocto 1.6_M4.rc1 Full Pass QA Report
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
X-List-Received-Date: Tue, 18 Mar 2014 20:50:58 -0000
X-Groupsio-MsgNum: 18587
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_005_1FFB62CE8AEB0D4298B51122D8903E961A008249IRSMSX101gercor_";
	type="multipart/alternative"

--_005_1FFB62CE8AEB0D4298B51122D8903E961A008249IRSMSX101gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E961A008249IRSMSX101gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E961A008249IRSMSX101gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the full pass for 1.4_M4.rc1 build: https://wiki.yoctoproject.org/w=
iki/WW11_-_2014-03-12_-_Full_Pass_Release_1.6_M4.rc1.
Highlights

-          An AB issue blocks testing ADT: 5900<https://bugzilla.yoctoproje=
ct.org/show_bug.cgi?id=3D5900> - ADT installation failed on all ARCHs with =
build 20140226-1

-          Toaster is blocked on the 1.6_M4_rc1 commit: 5951<https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D5951> - Toaster leads to the failure =
of "bitbake core-image-minimal". The issue was fixed immediately , and we t=
ested on the fix so there are two test runs. There is also a High issue tha=
t is 5499<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5499> - "sour=
ce toaster start" fail.

-          A distro bug showed up: 5971<https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D5971> - [DISTRO]oe-setup-builddir fails in ubuntu 13.10 on=
 1.6M4_RC1.

-          The rest of the issues are listed below and also are listed on t=
he report wiki from above.


Testing data

 Test type:  Full Pass Release Test

 Branch: master

 Milestone: M4

 Build name: 1.6_M4.rc1

 poky commit: 1960f6b2ecbb793b40ebc9aed25c8f9cb7884c9a

 Eclipse Plugin commit Kepler:  1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20140312-1

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

2076<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2076>2078<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2078>

ADT: master branch

Fedora 20 i686

71.6%

none

5.2%

5900<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5900>

23.3%

5900<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5900>

100.0%

2075<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2075>2077<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2077>

ADT: master branch

Ubuntu 13.10 x86_64

71.6%

none

5.2%

5900<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5900>

23.3%

5900<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5900>

100.0%

2079<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2079>2080<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2080>

BSP/QEMU: master branch

Beagleboard

71.0%

5983<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5983>

4.3%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182> 3936<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

24.6%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

100.0%

2030<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2030>2032<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2032>

BSP/QEMU: master branch

generic-x86 on AtomPC

97.1%

none

2.9%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005> 5834<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834>

0.0%

none

100.0%

2037<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2037>2036<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2036>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

98.6%

none

1.4%

5834<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834>

0.0%

none

100.0%

2058<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2058>2060<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2060>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

5983<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5983>

0.0%

none

0.0%

none

100.0%

2043<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2043>2044<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2044>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

2062<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2062>2064<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2064>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

2050<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2050>2051<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2051>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

2054<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2054>2055<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2055>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

2052<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2052>2053<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2053>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

2063<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2063>2065<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2065>

BSP/QEMU: master branch

qemux86-64

100.0%

5983<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5983>5972<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D5972>

0.0%

none

0.0%

none

100.0%

2066<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2066>2067<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2067>

BSP/QEMU: master branch

Routerstationpro

100.0%

5983<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5983>

0.0%

none

0.0%

none

100.0%

2069<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2069>2070<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2070>2073<https:/=
/bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2073>

Eclipse Plugin: master branch

Fedora 20 x86_64

89.3%

none

0.0%

none

10.7%

5900<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5900>

100.0%

2068<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2068>2071<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2071>

Eclipse Plugin: master branch

Ubuntu 13.10 x86_64

88.9%

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>5291<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D5291>

0.0%

none

11.1%

5900<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5900>

100.0%

2056<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2056>2057<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2057>

Meta-yocto: master branch

Ubuntu 13.10 x86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

2041<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2041>2045<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2045>

Hob: master branch

Ubuntu 13.10 x86_64

93.5%

none

6.5%

5989<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5989> 5995<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5995>

0.0%

none

100.0%

2033<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2033>2035<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035>

Toaster: master branch

Multiple environments

38.7%

none

14.7%

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187> 5642<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5642> 5485<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5485> 5988<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5988> 5967<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D5967>5226<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226=
> 5811<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5811> 5820<https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5820> 5655<https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5655> 5499<https://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D5499>

46.7%

5951<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5951>

100.0%

2029<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2029>2031<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2031>

OE-Core: master branch

Multiple environments

91.2%

none

8.8%

5730<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5730> 5146<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146> 5740<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5740>

0.0%

none

100.0%

2059<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2059>2061<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2061>

BitBake: master branch

Ubuntu 13.10 x86_64

100.0%

5984<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5984>

0.0%

none

0.0%

none

100.0%

2072<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2072>

Runtime: master branch

Multiple Environments

100.0%

5983<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5983>5973<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D5973>

0.0%

none

0.0%

none

100.0%

2042<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2042>

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

85

FAILED

29

PASSED

890

Total: 1004


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:85,29,890&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(85)+8%25|FAILED(29)+3%=
25|PASSED(890)+89%25]



Bug Status Report


ID[?]<https://wiki.yoctoproject.org/wiki/WW11_-_2014-03-12_-_Full_Pass_Rele=
ase_1.6_M4.rc1>

Priority[?]<https://wiki.yoctoproject.org/wiki/WW11_-_2014-03-12_-_Full_Pas=
s_Release_1.6_M4.rc1>

Status[?]<https://wiki.yoctoproject.org/wiki/WW11_-_2014-03-12_-_Full_Pass_=
Release_1.6_M4.rc1>

Resolution[?]<https://wiki.yoctoproject.org/wiki/WW11_-_2014-03-12_-_Full_P=
ass_Release_1.6_M4.rc1>

Test Runs[?]<https://wiki.yoctoproject.org/wiki/WW11_-_2014-03-12_-_Full_Pa=
ss_Release_1.6_M4.rc1>

Description[?]<https://wiki.yoctoproject.org/wiki/WW11_-_2014-03-12_-_Full_=
Pass_Release_1.6_M4.rc1>

Version[?]<https://wiki.yoctoproject.org/wiki/WW11_-_2014-03-12_-_Full_Pass=
_Release_1.6_M4.rc1>

Target Milestone[?]<https://wiki.yoctoproject.org/wiki/WW11_-_2014-03-12_-_=
Full_Pass_Release_1.6_M4.rc1>

Age (days)[?]<https://wiki.yoctoproject.org/wiki/WW11_-_2014-03-12_-_Full_P=
ass_Release_1.6_M4.rc1>

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

ACCEPTED

2079<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2079>

[beagleboard xM] Some error message with usbhs_omap in dmesg

1.4

1.6

379

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

2030<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2030>

dmesg log errors in Atom-PC

1.3.1

1.5

366

5146<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146>

Medium

RESOLVED

FIXED

2029<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2029>

btrfs image build fails at do_rootfs

1.5

1.5.1

184

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

Medium+

RESOLVED

WONTFIX

2080<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2080> 2079<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2079>

[Beagleboard xM]X can not startup with 3.10 kernel

1.5

1.5.1

180

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>

Medium

ACCEPTED

2035<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035>

same cooker log file name used for several builds

unspecified

1.6

180

5226<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226>

Medium

NEW

2035<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035>

in 'variables' API, the 'changed' field seems to return always 'FALSE'

1.5

1.7

175

5291<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5291>

Medium

NEW

2071<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2071>

eclipse console doesn't display parsing results for bitbake recipes

1.5

1.6

163

5485<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5485>

Medium

IN PROGRESS REVIEW

2035<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035>

Buildstats info and database entries doesn't match sometimes

unspecified

1.6 M1

126

5499<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5499>

High

IN PROGRESS REVIEW

2035<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035>

"source toaster start" fail

unspecified

1.6

126

5642<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5642>

Medium

NEEDINFO

2035<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035>

The number of warnings from Build table doesn't match the number of orm_log=
message.level entries with value 1

unspecified

1.6 M5

96

5655<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5655>

Medium+

ACCEPTED

2035<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035>

Wrong values in Recipe_Dependency table

unspecified

1.6 M4

91

5730<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5730>

Medium

IN PROGRESS REVIEW

2029<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2029>

Archive work directory and export source package

1.6

1.6 M3

55

5740<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5740>

Medium

IN PROGRESS REVIEW

2031<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2031>

Use archiver.bbclass to filter the source - fails

1.6

1.6 M3

54

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>

Low

NEW

2068<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2068>

headless build takes took long

1.6

1.6

44

5811<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5811>

Medium

IN PROGRESS IMPLEMENTATION

2035<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035>

the orm_variablehistory table should collect the variable value for each fi=
le

unspecified

1.7

29

5820<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5820>

Medium

IN PROGRESS IMPLEMENTATION

2035<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035>

Link warnings to their corresponding tasks (when applicable)

unspecified

1.7

27

5834<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834>

Medium

NEW

2037<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2037> 2032<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2032>

Cannot wake from suspend state using the USB mouse or keyboard

1.6

1.6

23

5900<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5900>

Medium+

REOPENED

2076<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2076> 2078<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2078> 2069<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2069> 2068<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2068>2070<https://bugzilla=
.yoctoproject.org/tr_show_run.cgi?run_id=3D2070>

ADT installation failed on all ARCHs with build 20140226-1

1.6

1.6 M4

9

5951<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5951>

Undecided

VERIFIED

FIXED

2033<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2033>

Toaster leads to the failure of "bitbake core-image-minimal".

1.6

---

NEW

5967<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5967>

Undecided

NEW

2035<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035>

file_path value for section field is incorrect for some recipes in Recipe t=
able

1.6

---

NEW

5972<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5972>

Medium

ACCEPTED

2063<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2063>

"ls: cannot access /etc/rpm-postinsts" during boot

1.6

1.6

NEW

5973<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5973>

Medium

NEW

2072<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2072>

adding 'pam' to DISTRO_FEATURES triggers openssh login error

1.6

1.6

NEW

5983<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5983>

Medium

IN PROGRESS REVIEW

2072<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2072> 2067<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2067> 2063<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2063> 2080<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2080>2060<https://bugzilla=
.yoctoproject.org/tr_show_run.cgi?run_id=3D2060>

openssh: Could not load host key

1.6

1.6 M5

NEW

5984<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5984>

Undecided

NEW

2061<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2061>

PR server closes using SIGTERM

1.6

---

NEW

5988<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5988>

Undecided

RESOLVED

NOTABUG

2035<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035>

Wrong outcome (OUTCOME_NA) when task_executed =3D false

unspecified

---

NEW

5989<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5989>

Undecided

NEW

2045<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2045>

Malformed string error on extra parameter

1.6

---

NEW

5995<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5995>

Undecided

NEW

2045<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2045>

xinit:giving up on sato image

1.6

---

NEW

Total: 27




Distro testing
Here are the Distro testing results:


COMMIT

1960f6b2ecbb793b40ebc9aed25c8f9cb7884c9a

RELEASE

1.6_M4.rc1

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

PASS

* nightly-x86

PASS

* nightly-x86-64

PASS

* nightly-x86-64-lsb

PASS





Ubuntu 13.10



* nighlty-world

BLOCKED -> #5971

* buildtools

BLOCKED -> #5971

* nightly-arm

BLOCKED -> #5971

* nightly-multilib

BLOCKED -> #5971

* nightly-qa-systemd

BLOCKED -> #5971

* nightly-x86

BLOCKED -> #5971

* nightly-x86-64

BLOCKED -> #5971

* nightly-x86-64-lsb

BLOCKED -> #5971





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



Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E961A008249IRSMSX101gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
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
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Times New Roman","serif";
	font-weight:bold;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.sortarrow
	{mso-style-name:sortarrow;}
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
	{mso-list-id:930040843;
	mso-list-type:hybrid;
	mso-list-template-ids:1314006630 440193392 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the full pass for 1.4_M4.rc1 build: <a href=
=3D"https://wiki.yoctoproject.org/wiki/WW11_-_2014-03-12_-_Full_Pass_Releas=
e_1.6_M4.rc1">
https://wiki.yoctoproject.org/wiki/WW11_-_2014-03-12_-_Full_Pass_Release_1.=
6_M4.rc1</a>.<o:p></o:p></p>
<p class=3D"MsoNormal">Highlights<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>An AB issue blocks testing ADT: <a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D5900">
5900</a>&nbsp;-&nbsp;ADT installation failed on all ARCHs with build 201402=
26-1<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Toaster is blocked on the 1.6_M4_rc1 commit: <a hre=
f=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5951">
5951</a>&nbsp;-&nbsp;Toaster leads to the failure of &quot;bitbake core-ima=
ge-minimal&quot;. The issue was fixed immediately , and we tested on the fi=
x so there are two test runs. There is also a High issue that is
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5499">5499</=
a>&nbsp;-&nbsp;&quot;source toaster start&quot; fail.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>A distro bug showed up: <a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5971">
5971</a>&nbsp;-&nbsp;[DISTRO]oe-setup-builddir fails in ubuntu 13.10 on 1.6=
M4_RC1.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>The rest of the issues are listed below and also ar=
e listed on the report wiki from above.<o:p></o:p></p>
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
"><span style=3D"color:black"> Milestone: M4<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.6_M4.rc1<o:p></o:p></span></pr=
e>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 1960f6b2ecbb793b40ebc9aed25c8f9=
cb7884c9a<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Kepler:&nbsp; 1dfe1d2f=
1322b5fda8e1a7637c447b0e060efb3e<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/nightly/20140312-1<o:p></o:p></span></pre>
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
rg/tr_show_run.cgi?run_id=3D2076"><span style=3D"color:#5A3696">2076</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
078"><span style=3D"color:#5A3696">2078</span></a><o:p></o:p></span></p>
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
rg/show_bug.cgi?id=3D5900"><span style=3D"color:#5A3696">5900</span></a><o:=
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
rg/show_bug.cgi?id=3D5900"><span style=3D"color:#5A3696">5900</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D2075"><span style=3D"color:#5A3696">2075</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
077"><span style=3D"color:#5A3696">2077</span></a><o:p></o:p></span></p>
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
rg/show_bug.cgi?id=3D5900"><span style=3D"color:#5A3696">5900</span></a><o:=
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
rg/show_bug.cgi?id=3D5900"><span style=3D"color:#5A3696">5900</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D2079"><span style=3D"color:#5A3696">2079</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
080"><span style=3D"color:#5A3696">2080</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt;color:black">71.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5983"><span style=3D"color:#5A3696">5983</span></a><o:=
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
rg/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">393=
6</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">24.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2030"><span style=3D"color:#5A3696">2030</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
032"><span style=3D"color:#5A3696">2032</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">97.1%<o:p></o:p></span></p>
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
rg/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5834"><span style=3D"color:#5A3696">583=
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
rg/tr_show_run.cgi?run_id=3D2037"><span style=3D"color:#5A3696">2037</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
036"><span style=3D"color:#5A3696">2036</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">98.6%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1.4%<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2058"><span style=3D"color:#5A3696">2058</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
060"><span style=3D"color:#5A3696">2060</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5983"><span style=3D"color:#5A3696">5983</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D2043"><span style=3D"color:#5A3696">2043</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
044"><span style=3D"color:#5A3696">2044</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2062"><span style=3D"color:#5A3696">2062</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
064"><span style=3D"color:#5A3696">2064</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2050"><span style=3D"color:#5A3696">2050</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
051"><span style=3D"color:#5A3696">2051</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2054"><span style=3D"color:#5A3696">2054</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
055"><span style=3D"color:#5A3696">2055</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2052"><span style=3D"color:#5A3696">2052</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
053"><span style=3D"color:#5A3696">2053</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2063"><span style=3D"color:#5A3696">2063</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
065"><span style=3D"color:#5A3696">2065</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5983"><span style=3D"color:#5A3696">5983</span></a><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5972"><span sty=
le=3D"color:#5A3696">5972</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2066"><span style=3D"color:#5A3696">2066</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
067"><span style=3D"color:#5A3696">2067</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5983"><span style=3D"color:#5A3696">5983</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D2069"><span style=3D"color:#5A3696">2069</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
070"><span style=3D"color:#5A3696">2070</span></a><a href=3D"https://bugzil=
la.yoctoproject.org/tr_show_run.cgi?run_id=3D2073"><span style=3D"color:#5A=
3696">2073</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Fedora 20 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">89.3%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">10.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5900"><span style=3D"color:#5A3696">5900</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D2068"><span style=3D"color:#5A3696">2068</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
071"><span style=3D"color:#5A3696">2071</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">88.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5291"><span sty=
le=3D"color:#5A3696">5291</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">11.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5900"><span style=3D"color:#5A3696">5900</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D2056"><span style=3D"color:#5A3696">2056</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
057"><span style=3D"color:#5A3696">2057</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2041"><span style=3D"color:#5A3696">2041</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
045"><span style=3D"color:#5A3696">2045</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">93.5%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">6.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5989"><span style=3D"color:#5A3696">5989</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5995"><span style=3D"color:#5A3696">599=
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
rg/tr_show_run.cgi?run_id=3D2033"><span style=3D"color:#5A3696">2033</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
035"><span style=3D"color:#5A3696">2035</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Multiple environments<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">38.7%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">14.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5187"><span style=3D"color:#5A3696">5187</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5642"><span style=3D"color:#5A3696">564=
2</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5485"><span style=3D"col=
or:#5A3696">5485</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5988"><sp=
an style=3D"color:#5A3696">5988</span></a><span class=3D"apple-converted-sp=
ace">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D5967"><span style=3D"color:#5A3696">5967</span></a><a href=3D"https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226"><span style=3D"color:#5A=
3696">5226</span></a><span class=3D"apple-converted-space">&nbsp;</span><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5811"><span sty=
le=3D"color:#5A3696">5811</span></a><span class=3D"apple-converted-space">&=
nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
5820"><span style=3D"color:#5A3696">5820</span></a><span class=3D"apple-con=
verted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D5655"><span style=3D"color:#5A3696">5655</span></a><span cla=
ss=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D5499"><span style=3D"color:#5A3696">5499</spa=
n></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">46.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5951"><span style=3D"color:#5A3696">5951</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D2029"><span style=3D"color:#5A3696">2029</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
031"><span style=3D"color:#5A3696">2031</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">91.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">8.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5730"><span style=3D"color:#5A3696">5730</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5146"><span style=3D"color:#5A3696">514=
6</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5740"><span style=3D"col=
or:#5A3696">5740</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2059"><span style=3D"color:#5A3696">2059</span>=
</a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2=
061"><span style=3D"color:#5A3696">2061</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5984"><span style=3D"color:#5A3696">5984</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D2072"><span style=3D"color:#5A3696">2072</span>=
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
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5983"><span style=3D"color:#5A3696">5983</span></a><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5973"><span sty=
le=3D"color:#5A3696">5973</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2042"><span style=3D"color:#5A3696">2042</span>=
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
<span style=3D"font-size:10.0pt">85<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">29<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">890<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 1004</span></b><span style=3D"fo=
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
@01CF42D6.F09C8DA0" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;=
chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:85,29,890&amp;chco=3DFFFF66|FF9933|0=
0FF00&amp;chl=3DBLOCKED(85)&#43;8%25|FAILED(29)&#43;3%25|PASSED(890)&#43;89=
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
ect.org/wiki/WW11_-_2014-03-12_-_Full_Pass_Release_1.6_M4.rc1"><b><span sty=
le=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0=
" width=3D"12" height=3D"14" id=3D"Picture_x0020_9" src=3D"cid:image002.gif=
@01CF42D6.F09C8DA0" alt=3D"&#8595;"></span></b></a><b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p>=
</o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Priority</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW11_-_2014-03-12_-_Full_Pass_Release_1.6_M4.rc1"><b><sp=
an style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_8" src=3D"cid:image0=
02.gif@01CF42D6.F09C8DA0" alt=3D"&#8595;"></span></b></a><b><span style=3D"=
font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW11_-_2014-03-12_-_Full_Pass_Release_1.6_M4.rc1"><b><span=
 style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"cid:image00=
2.gif@01CF42D6.F09C8DA0" alt=3D"&#8595;"></span></b></a><b><span style=3D"f=
ont-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Resolution</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW11_-_2014-03-12_-_Full_Pass_Release_1.6_M4.rc1"><b><=
span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_6" src=3D"cid:imag=
e002.gif@01CF42D6.F09C8DA0" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Runs</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW11_-_2014-03-12_-_Full_Pass_Release_1.6_M4.rc1"><b><s=
pan style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=3D"cid:image=
002.gif@01CF42D6.F09C8DA0" alt=3D"&#8595;"></span></b></a><b><span style=3D=
"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Description</span></b><a href=3D"https://wiki.=
yoctoproject.org/wiki/WW11_-_2014-03-12_-_Full_Pass_Release_1.6_M4.rc1"><b>=
<span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bo=
rder=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_4" src=3D"cid:ima=
ge002.gif@01CF42D6.F09C8DA0" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Version</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW11_-_2014-03-12_-_Full_Pass_Release_1.6_M4.rc1"><b><spa=
n style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_3" src=3D"cid:image00=
2.gif@01CF42D6.F09C8DA0" alt=3D"&#8595;"></span></b></a><b><span style=3D"f=
ont-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Target Milestone</span></b><a href=3D"https://=
wiki.yoctoproject.org/wiki/WW11_-_2014-03-12_-_Full_Pass_Release_1.6_M4.rc1=
"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><i=
mg border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_2" src=3D"ci=
d:image002.gif@01CF42D6.F09C8DA0" alt=3D"&#8595;"></span></b></a><b><span s=
tyle=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Age (days)</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW11_-_2014-03-12_-_Full_Pass_Release_1.6_M4.rc1"><b><=
span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_1" src=3D"cid:imag=
e002.gif@01CF42D6.F09C8DA0" alt=3D"&#8595;"></span></b></a><b><span style=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2079"><span style=3D"col=
or:#5A3696">2079</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">379<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2030"><span style=3D"col=
or:#5A3696">2030</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">366<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2029"><span style=3D"col=
or:#5A3696">2029</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">184<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">WONTFIX<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2080"><span style=3D"col=
or:#5A3696">2080</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D20=
79"><span style=3D"color:#5A3696">2079</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">180<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5187"><span style=3D"color:#5A3696">5187</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035"><span style=3D"col=
or:#5A3696">2035</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">same cooker log fil=
e name used for several builds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">180<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5226"><span style=3D"color:#5A3696">5226</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035"><span style=3D"col=
or:#5A3696">2035</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">in 'variables' API,=
 the 'changed' field seems to return always 'FALSE'<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">175<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5291"><span style=3D"color:#5A3696">5291</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2071"><span style=3D"col=
or:#5A3696">2071</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">eclipse console doe=
sn't display parsing results for bitbake recipes<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">163<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5485"><span style=3D"color:#5A3696">5485</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035"><span style=3D"col=
or:#5A3696">2035</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Buildstats info and=
 database entries doesn't match sometimes<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.6 M1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">126<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5499"><span style=3D"color:#5A3696">5499</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">High<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035"><span style=3D"col=
or:#5A3696">2035</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">&quot;source toaste=
r start&quot; fail<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">126<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5642"><span style=3D"color:#5A3696">5642</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">NEEDINFO<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035"><span style=3D"col=
or:#5A3696">2035</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">The number of warni=
ngs from Build table doesn't match the number of orm_logmessage.level entri=
es with value 1<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.6 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">96<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5655"><span style=3D"color:#5A3696">5655</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035"><span style=3D"col=
or:#5A3696">2035</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Wrong values in Rec=
ipe_Dependency table<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">91<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2029"><span style=3D"col=
or:#5A3696">2029</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">55<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2031"><span style=3D"col=
or:#5A3696">2031</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">54<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2068"><span style=3D"col=
or:#5A3696">2068</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">44<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5811"><span style=3D"color:#5A3696">5811</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035"><span style=3D"col=
or:#5A3696">2035</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">the orm_variablehis=
tory table should collect the variable value for each file<o:p></o:p></span=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7<o:p></o:p></span></p>
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
_bug.cgi?id=3D5820"><span style=3D"color:#5A3696">5820</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035"><span style=3D"col=
or:#5A3696">2035</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Link warnings to th=
eir corresponding tasks (when applicable)<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">27<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2037"><span style=3D"col=
or:#5A3696">2037</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D20=
32"><span style=3D"color:#5A3696">2032</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">23<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5900"><span style=3D"color:#5A3696">5900</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2076"><span style=3D"col=
or:#5A3696">2076</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D20=
78"><span style=3D"color:#5A3696">2078</span></a><span class=3D"apple-conve=
rted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2069"><span style=3D"color:#5A3696">2069</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/tr_show_run.cgi?run_id=3D2068"><span style=3D"color:#5A369=
6">2068</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.=
cgi?run_id=3D2070"><span style=3D"color:#5A3696">2070</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">ADT installation fa=
iled on all ARCHs with build 20140226-1<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">9<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5951"><span style=3D"color:#5A3696">5951</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">VERIFIED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2033"><span style=3D"col=
or:#5A3696">2033</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Toaster leads to th=
e failure of &quot;bitbake core-image-minimal&quot;.<o:p></o:p></span></p>
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
_bug.cgi?id=3D5967"><span style=3D"color:#5A3696">5967</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035"><span style=3D"col=
or:#5A3696">2035</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">file_path value for=
 section field is incorrect for some recipes in Recipe table<o:p></o:p></sp=
an></p>
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
_bug.cgi?id=3D5972"><span style=3D"color:#5A3696">5972</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2063"><span style=3D"col=
or:#5A3696">2063</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">&quot;ls: cannot ac=
cess /etc/rpm-postinsts&quot; during boot<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5973"><span style=3D"color:#5A3696">5973</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2072"><span style=3D"col=
or:#5A3696">2072</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">adding 'pam' to DIS=
TRO_FEATURES triggers openssh login error<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5983"><span style=3D"color:#5A3696">5983</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2072"><span style=3D"col=
or:#5A3696">2072</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D20=
67"><span style=3D"color:#5A3696">2067</span></a><span class=3D"apple-conve=
rted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2063"><span style=3D"color:#5A3696">2063</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/tr_show_run.cgi?run_id=3D2080"><span style=3D"color:#5A369=
6">2080</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.=
cgi?run_id=3D2060"><span style=3D"color:#5A3696">2060</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">openssh: Could not =
load host key<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M5<o:p></o:p></span></p>
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
_bug.cgi?id=3D5984"><span style=3D"color:#5A3696">5984</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2061"><span style=3D"col=
or:#5A3696">2061</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">PR server closes us=
ing SIGTERM<o:p></o:p></span></p>
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
_bug.cgi?id=3D5988"><span style=3D"color:#5A3696">5988</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">NOTABUG<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2035"><span style=3D"col=
or:#5A3696">2035</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Wrong outcome (OUTC=
OME_NA) when task_executed =3D false<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5989"><span style=3D"color:#5A3696">5989</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2045"><span style=3D"col=
or:#5A3696">2045</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Malformed string er=
ror on extra parameter<o:p></o:p></span></p>
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
_bug.cgi?id=3D5995"><span style=3D"color:#5A3696">5995</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2045"><span style=3D"col=
or:#5A3696">2045</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">xinit:giving up on =
sato image<o:p></o:p></span></p>
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
<p class=3D"MsoNormal">Distro testing<o:p></o:p></p>
<p class=3D"MsoNormal">Here are the Distro testing results: <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"500" style=3D"width:375.0pt;border-collapse:=
collapse;margin-left:6.75pt;margin-right:6.75pt">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;background:#DA9694;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<b><span style=3D"color:black">COMMIT<o:p></o:p></span></b></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er:solid windowtext 1.0pt;border-left:none;background:#DA9694;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">1960f6b2ecbb793b40ebc9aed25c8f9cb7884c9a<o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#DA9694;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<b><span style=3D"color:black">RELEASE<o:p></o:p></span></b></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#DA9694;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">1.6_M4.rc1<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<b><span style=3D"color:black">Fedora 20<o:p></o:p></span></b></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p=
>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p=
>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<b><span style=3D"color:black">OpenSuSE 13.1<o:p></o:p></span></b></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p=
>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p=
>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<b><span style=3D"color:black">Ubuntu 13.10<o:p></o:p></span></b></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">BLOCKED -&gt; #5971<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">BLOCKED -&gt; #5971<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">BLOCKED -&gt; #5971<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">BLOCKED -&gt; #5971<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p=
>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">BLOCKED -&gt; #5971<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">BLOCKED -&gt; #5971<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">BLOCKED -&gt; #5971<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p=
>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">BLOCKED -&gt; #5971<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#8DB4E2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<b>CentOS 6.5<o:p></o:p></b></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#8DB4E2;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p=
>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p=
>
</td>
<td width=3D"291" nowrap=3D"" valign=3D"bottom" style=3D"width:218.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;h=
eight:15.0pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-ele=
ment-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:exactly=
">
<span style=3D"color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><br clear=3D"all">
<o:p></o:p></p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E961A008249IRSMSX101gercor_--

--_005_1FFB62CE8AEB0D4298B51122D8903E961A008249IRSMSX101gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=10661;
	creation-date="Tue, 18 Mar 2014 20:50:46 GMT";
	modification-date="Tue, 18 Mar 2014 20:50:46 GMT"
Content-ID: <image001.png@01CF42D6.F09C8DA0>
Content-Transfer-Encoding: base64

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
3nvvvTExMVqttqKiovtQpl6vLywsXLt2rcFgqK2t/dWvfqVSqYqLi999912n01lUVLRu3brly5ff
6A95bTQQB7KUlPtTUu63Wo/U12/z+ayBLqfvqNVYuNBx1bS94TFEgyFx7NjHEhPHBvarcRyXlpYG
ICkpad++ffX19crT7hiG0el0Wu1l95uVJEkURUmSemz3M5vNo0aNWrhw4fvvv//ss8/6t0dHR6ek
pCiPTSbTlW/U6XTKv1EWiyU9PR2ALMulpaV6vT49Pb2urq6urs5oNM6aNWvChAk6nW7Lli3btm37
5S9/CcBgMLS0tCQnJyuHEgThzJkzer1+8ODBDQ0NDQ0NgwcPfvzxx1tbWyMjI48ePTpy5EhRFA8e
PJiUlHTlF795NBAHvqiosVFRY12uurq6f7rdFwJdTj/DsqqEhLF5eStCQ2MDXQsAqNXqvLyulT08
z//v//7vb3/72x778DyflZXV0NCQkJDg31haWrpixQqXy/XFF1903/nvf/97fn5+aGhodHT0vHnz
AJw6dWrfvn0zZ85UdsjMzLxyDLG7c+fOxcfHAxAEQZn7rqyslGX5qaeeAhAWFrZnz56cnJzp06cr
+xcWFr7yyivKY51O5583B3DmzJmwsLAVK1YAUKlUe/fuHTx4MIDIyEhJko4ePfrYY499+OGHcXFx
hw4dqq2tzc/Pv76f71qCdOUEdcvpdElZWatGjfprXNxclSqCXrf5Whi9Pm7s2F8sXbpz2rTfBUka
difLcm1trTKBe6UxY8Zs2rTJP8J4+PBhSZLi4uLS0tJ4nj9w4ICyvaysrLm5WZme9i/NeeSRRz7/
/PPGxsbelHHx4sWPPvpISc+oqCiLxQIgIiKirq7O4/EA8Hq9aWlpDofjpZdeEgQBQHl5ub/f3dzc
HBkZ6T9aZGRkdXW1z+dT3ti9d19cXDxlyhSGYerq6vLz8wsLC+vq6nr5W/UebSHeadjo6FnR0bME
wdbW9rHHUw64A11SUGG0WlNi4pScnMVq9W0cgrxhHR0dzz//PACGYXJycu6//35l+7p16/yJ9vTT
T48ePbq5ufl3v/tdamqqLMsRERFKs4thmOXLl+/evfuPf/wjy7LKYF+PjwgPD1+4cOGGDRuU2ef3
3nuP5y8Fxcsvvwzg+PHjZ8+elWU5KSnpvvvuy8nJATBu3Lg9e/YAiIqKKigoePvtt30+X1tb269+
9auwsLDc3NzXX3+d4ziHw/HMM88AIIRIkhQWdunmaElJSRMnTvzb3/7m8XicTudvftN12TSv11tZ
WXnPPfcAGDNmzPr1681m87Jly275z0vXId7pRLHd4fjS6/2OEHtv1iFeMcp22VzH1QbsLntX7y6c
dZMfdM2rcpErxxC12sjY2Nzs7MU6XeQ1f7T+QhRFs9kcExPjX0jo5/V6nU5nRETErf3Ebdu2zZkz
RwlQWZYtFkts7KXGtSRJVqvVv+XMmTO1tbU/+tGPrizbZrN1X47jdrtFUfRHp8vlUqvV3WP6VqGB
SHWRZY/Hc9jn+06WWzhOuhMCkWFUBkNqYuLdaWkFLEuv93ML1NXVNTY2XjkTfVXr169fsmSJstw6
SNAuM9WFZTU6XT6QD0CWzT5fCSEXgE5AvuZ7+xGWVen1cSZTTnLyNKMxPdDlDDRJSUm9XMAoy/Ls
2bODKg1BW4hUL7QCZYRcBKyy7O6HLUTwvF6rjYuMHJGQME2ni77mF6buWDQQqesjy7WEVMpygyxb
ZbmTEOkHoy0AgQjwPK/TaOLCwwdHRY0xGodc+1tRFADaZaauF8smA8ndLp4iiGIDIfWS1CzLbZJk
lyQ3IPRBR5theI5T8byO5w1abaxenxoWlhkWlkoXk1E3jLYQqdtFFM2S1CpJLZLUKkluWfZIkluW
vbLsJUSSJAFQWnkgBIAsy0SWARCAB1hZJgzDMUwIx2kYRsuyOp438HyoWh2j16eo1Vc5ZYKibhIN
RIqiqC60c0FRFNWFBiJFUVQXGogURVFdaCBSFEV1oYFIURTV5f8Dx8JGcGCDrNYAAAAASUVORK5C
YII=

--_005_1FFB62CE8AEB0D4298B51122D8903E961A008249IRSMSX101gercor_
Content-Type: image/gif; name="image002.gif"
Content-Description: image002.gif
Content-Disposition: inline; filename="image002.gif"; size=462;
	creation-date="Tue, 18 Mar 2014 20:50:46 GMT";
	modification-date="Tue, 18 Mar 2014 20:50:46 GMT"
Content-ID: <image002.gif@01CF42D6.F09C8DA0>
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

--_005_1FFB62CE8AEB0D4298B51122D8903E961A008249IRSMSX101gercor_--
