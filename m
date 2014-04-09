Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06FB7E00B69
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 06:58:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Apr 2014 06:53:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,826,1389772800"; 
	d="gif'147?png'147,150?jpg'147,150,145?scan'147,150,145,208,217,147,150,145";
	a="489984360"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga001.jf.intel.com with ESMTP; 09 Apr 2014 06:58:32 -0700
Received: from irsmsx101.ger.corp.intel.com (163.33.3.153) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 9 Apr 2014 14:58:30 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.2]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.246]) with mapi id
	14.03.0123.003; Wed, 9 Apr 2014 14:58:30 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.6_M5.rc2 full pass report
Thread-Index: Ac9T7VEM85pOz12DR7G6kt0/k5PgGAADmxsQ
Date: Wed, 9 Apr 2014 13:58:29 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E961B68C69B@IRSMSX104.ger.corp.intel.com>
References: <1FFB62CE8AEB0D4298B51122D8903E961B68C4E9@IRSMSX104.ger.corp.intel.com>
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E961B68C4E9@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Yocto 1.6_M5.rc2 full pass report
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
X-List-Received-Date: Wed, 09 Apr 2014 13:58:43 -0000
X-Groupsio-MsgNum: 18906
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_008_1FFB62CE8AEB0D4298B51122D8903E961B68C69BIRSMSX104gercor_";
	type="multipart/alternative"

--_008_1FFB62CE8AEB0D4298B51122D8903E961B68C69BIRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E961B68C69BIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E961B68C69BIRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the Full Pass report for Yocto 1.6_M5.rc2 build.

Summary and issue summary:

-          No High or Medium+ issues found (new or old).

-          Beagleboard BSP was replaced by Beaglebone and Beaglebone Black =
in this build. The tests on the BSP weren't performed because no method tha=
t tried to boot the board (Beaglebone Black) couldn't boot the board. Beagl=
ebone test run will appear as blockd in the summary report.

-          Edge Router BSP was introduced in this build replacing the Route=
rstationPro.

o   We discovered a dmesg error after boot #6111

o   BSP cannot boot from USB #6113

-          The adt-installer issue was fixed and we were able to perform th=
e adt tests.

-          Toaster UI test run was introduced in this test cycle and test r=
eport.

The detailed full pass report is available on the wiki: https://wiki.yoctop=
roject.org/wiki/WW14_-_2014-04-02_-_Full_Pass_Release_1.6_M5.rc2

Testing data

 Test type:  Full Pass Release Test

 Branch: master

 Milestone: M5

 Build name: 1.6_M5.rc2

 poky commit: 3e528d3e4bc542ca2f654c54363c56af0fb9f61b

 Eclipse Plugin commit Kepler:  1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e

 Autobuilder images repository:  http://autobuilder.yoctoproject.org/pub/re=
leases/yocto-1.6_M5.rc2

 Distributions tested: Ubuntu 14.04 64bit (BETA), Ubuntu 13.10 64bit, Fedor=
a 19 64bit, Fedora 20 32bit, Opensuse 12.3 64bit, CentOS 6.5 64 bit

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

2195<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2195> 2197<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2197>

ADT: master branch

Fedora 20 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

2194<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2194> 2196<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2196>

ADT: master branch

Ubuntu 13.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2218<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2218> 2219<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2219>

BSP/QEMU: master branch

Beaglebone Black

0.0%

none

0.0%

none

100.0%

none

100.0%

2212<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2212> 2213<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2213>

BSP/QEMU: master branch

EdgeRouter

96.1%

none

3.9%

6111<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6111> 6113<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D6113>

0.0%

none

100.0%

2178<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2178> 2179<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2179>

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

2173<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2173> 2177<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2177>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

100.0%

none

0.0%

none

0.0%

none

100.0%

2203<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2203> 2204<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2204>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

2201<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2201> 2202<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2202>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

2217<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2217> 2216<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2216>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

2188<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2188> 2189<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2189>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

2192<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2192> 2193<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2193>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

2190<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2190> 2191<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2191>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

2171<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2171> 2172<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2172>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

2162<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2162> 2163<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2163> 2165<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2165>

Eclipse Plugin: master branch

Fedora 20 x86_64

96.4%

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760> 5769<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5769> 5163<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5163> 5285<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5285>

3.6%

6118<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6118>

0.0%

none

100.0%

2166<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2166> 2167<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2167> 2168<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2168>

Eclipse Plugin: master branch

Ubuntu 13.10 x86_64

100.0%

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760> 5769<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5769> 5163<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5163> 5285<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5285> 5713<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D5713>

0.0%

none

0.0%

none

100.0%

2198<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2198> 2200<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2200>

Meta-yocto: master branch

Ubuntu 13.10 x86-64

96.0%

none

4.0%

6016<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6016>

0.0%

none

100.0%

2180<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2180> 2181<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2181>

Hob: master branch

Ubuntu 13.10 x86_64

95.7%

none

4.3%

6086<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6086> 5995<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5995>

0.0%

none

100.0%

2215<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2215>

Toaster: master branch

Ubuntu 12.04 x86

93.3%

none

6.7%

5919<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5919> 6134<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D6134>

0.0%

none

100.0%

2182<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182>

Toaster: master branch

Ubuntu 13.04 x86_64

86.8%

none

13.2%

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187> 5642<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5642> 6114<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D6114> 5253<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5253> 5255<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D5255> 5254<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D525=
4> 5226<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226> 5811<http=
s://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5811>

0.0%

none

100.0%

2164<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2164> 2174<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2174>

OE-Core: master branch

Multiple environments

100.0%

none

0.0%

none

0.0%

none

100.0%

2185<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2185> 2186<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2186>

BitBake: master branch

Ubuntu 13.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2214<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2214>

Runtime: master branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

2206<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2206>

Runtime: master branch

qemuarm

40.0%

6121<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6121>

60.0%

5846<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5846> 6015<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D6015> 6016<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D6016>

0.0%

none

100.0%

2208<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2208>

Runtime: master branch

qemuppc

40.0%

none

60.0%

6121<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6121> 6119<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D6119> 6120<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D6120> 6122<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6122>

0.0%

none

100.0%

2187<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2187>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

83.3%

none

16.7%

6086<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6086>

0.0%

none

100.0%

Total: 25



Test Case Status Report

Status

Count

BLOCKED

69

ERROR

3

FAILED

22

PASSED

924

Total: 1018


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:69,3,22,924&chco=3DFFFF66|FF0000|FF9933|00FF00&chl=3DBLOCKED(69)+7%25|ERRO=
R(3)+0%25|FAILED(22)+2%25|PASSED(924)+91%25]



Bug Status Report


ID[?]<https://wiki.yoctoproject.org/wiki/WW14_-_2014-04-02_-_Full_Pass_Rele=
ase_1.6_M5.rc2>

Priority[?]<https://wiki.yoctoproject.org/wiki/WW14_-_2014-04-02_-_Full_Pas=
s_Release_1.6_M5.rc2>

Status[?]<https://wiki.yoctoproject.org/wiki/WW14_-_2014-04-02_-_Full_Pass_=
Release_1.6_M5.rc2>

Resolution[?]<https://wiki.yoctoproject.org/wiki/WW14_-_2014-04-02_-_Full_P=
ass_Release_1.6_M5.rc2>

Test Runs[?]<https://wiki.yoctoproject.org/wiki/WW14_-_2014-04-02_-_Full_Pa=
ss_Release_1.6_M5.rc2>

Description[?]<https://wiki.yoctoproject.org/wiki/WW14_-_2014-04-02_-_Full_=
Pass_Release_1.6_M5.rc2>

Version[?]<https://wiki.yoctoproject.org/wiki/WW14_-_2014-04-02_-_Full_Pass=
_Release_1.6_M5.rc2>

Target Milestone[?]<https://wiki.yoctoproject.org/wiki/WW14_-_2014-04-02_-_=
Full_Pass_Release_1.6_M5.rc2>

Age (days)[?]<https://wiki.yoctoproject.org/wiki/WW14_-_2014-04-02_-_Full_P=
ass_Release_1.6_M5.rc2>

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

2178<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2178>

dmesg log errors in Atom-PC

1.3.1

1.5

387

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

Medium

ACCEPTED

2162<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2162> 2166<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2166>

no external tools displayed when first trying to run QEMU - test case 48 fa=
iled on Ubuntu 12.04 x86-64 host(build 1.5 M4 rc2)

1.5

1.6

203

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>

Medium

NEEDINFO

2182<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182>

same cooker log file name used for several builds

unspecified

1.6

201

5226<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226>

Medium

NEW

2182<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182>

in 'variables' API, the 'changed' field seems to return always 'FALSE'

1.5

1.7

196

5253<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5253>

Medium

RESOLVED

WONTFIX

2182<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182>

[webhob-poky/master] work_directory in tasks table is empty

unspecified

1.6 M1

191

5254<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5254>

Medium

RESOLVED

DUPLICATE

2182<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182>

[webhob-poky/master] line_number in tasks table is empty

unspecified

1.6 M1

191

5255<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5255>

Medium

ACCEPTED

2182<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182>

source_url in the tasks table is empty

unspecified

1.7

191

5285<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5285>

Medium

NEW

2165<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2165> 2168<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2168>

powertop: Output is useless

unspecified

Future

187

5642<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5642>

Medium

IN PROGRESS REVIEW

2182<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182>

The number of warnings from Build table doesn't match the number of orm_log=
message.level entries with value 1

unspecified

1.6 M5

117

5713<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5713>

Medium

NEW

2168<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2168>

systemtap displays blank pop-up error window

1.5

1.6

82

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>

Low

NEW

2162<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2162> 2166<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2166>

headless build takes took long

1.6

1.6

65

5769<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5769>

Low

NEW

2162<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2162> 2166<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2166>

ssh connection doesn't disconnect when qemu is restarted/shut down

1.6

1.6

63

5811<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5811>

Medium

IN PROGRESS IMPLEMENTATION

2182<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182>

the orm_variablehistory table should collect the variable value for each fi=
le

unspecified

1.7

50

5834<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834>

Medium

NEW

2179<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2179>

Cannot wake from suspend state using the USB mouse or keyboard

1.6

1.6

44

5846<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5846>

Medium

NEW

2206<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2206>

perf report command hangs or crashes on arm targets

1.5.1

1.5.2

43

5919<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5919>

Medium

IN PROGRESS REVIEW

2215<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2215>

Interaction between sorting and "Edit columns" menu not working as designed

unspecified

1.6 M5

27

5995<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5995>

Medium

RESOLVED

WORKSFORME

2181<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2181>

xinit:giving up on sato image

1.6

1.6 M4

15

6015<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6015>

Medium

NEW

2206<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2206>

Lttng does not work on qemuarm due to lttng-tracer module not found

1.6

1.6 M5

13

6016<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6016>

Medium

RESOLVED

FIXED

2206<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2206> 2200<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2200>

CrossTap has issues on running scheduler script against qemuppc

1.6

1.6 M5

13

6086<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6086>

Medium

IN PROGRESS REVIEW

2181<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2181> 2187<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2187>

A hob error occurs after recipe add

1.6

1.6 M5

1 (Recent)

6111<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6111>

Undecided

NEW

2212<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2212>

[edgerouter] rtc-ds1307 error in dmesg

1.6

---

NEW

6113<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6113>

Undecided

NEW

2212<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2212>

[edgerouter] Can not boot from USB root

1.6

---

NEW

6114<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6114>

Undecided

ACCEPTED

2182<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182>

Elapsed_time value null for tasks with outcome=3D0

1.6

1.6 M5

NEW

6118<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6118>

Undecided

RESOLVED

DUPLICATE

2165<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2165>

crosstap doesn't work on qemux86 core-image-sato-sdk

1.6

---

NEW

6119<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6119>

Undecided

NEW

2208<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2208>

perf test command does not work for QemuPPC

1.6

1.6 M5

NEW

6120<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6120>

Undecided

NEW

2208<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2208>

perf top command does not work on QemuPPC

1.6

1.6 M5

NEW

6121<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6121>

Undecided

NEW

2208<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2208> 2206<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2206>

powertop --calibrate does not work on QemuPPC

1.6

1.6 M5

NEW

6122<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6122>

Medium

RESOLVED

DUPLICATE

2208<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2208>

Crosstap does not work on QemuPPC

1.6

1.6 M5

NEW

6134<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6134>

Undecided

NEW

2215<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2215>

Wrong information of images.

1.6

1.6 M5

NEW

Total: 29




Distro Testing:

All the distro tests are passed during this build. We also performed manual=
ly the distro tests (covered in the summary report from above) on Ubuntu 14=
.04 (beta).


COMMIT

3e528d3e4bc542ca2f654c54363c56af0fb9f61b

RELEASE

1.6_M5.rc2

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


Performance Test:

Here are the trends for the performance_test. There is a slight improvement=
 observed in the Bitbake core-image-sato (rm_work). Building from scratch t=
he core-image-sato-sdk and the virtual/kernel observed few degradations. Al=
l the other measurements are available on the performance_test wiki: https:=
//wiki.yoctoproject.org/wiki/Performance_Test#1.6_Nightly_results



Bitbake core-image-sato (rm_work):

[cid:image003.jpg@01CF5408.F190E470]

Bitbake core-image-sato-sdk:
[cid:image004.jpg@01CF5408.F190E470]


for Bitbake birtual/kernel:
[cid:image005.jpg@01CF5408.F190E470]

--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E961B68C69BIRSMSX104gercor_
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.sortarrow
	{mso-style-name:sortarrow;}
span.EmailStyle25
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
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
	{mso-list-id:690491741;
	mso-list-type:hybrid;
	mso-list-template-ids:1301286890 -1997393850 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
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
<p class=3D"MsoNormal">Here is the Full Pass report for Yocto 1.6_M5.rc2 bu=
ild.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary and issue summary:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>No High or Medium&#43; issues found (new or old).<o=
:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Beagleboard BSP was replaced by Beaglebone and Beag=
lebone Black in this build. The tests on the BSP weren&#8217;t performed be=
cause no method that tried to boot the board (Beaglebone Black) couldn&#821=
7;t boot the board. Beaglebone test run will
 appear as blockd in the summary report.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Edge Router BSP was introduced in this build replac=
ing the RouterstationPro.
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo2">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>We discovered a dmesg error after boot #6111=
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo2">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>BSP cannot boot from USB #6113<o:p></o:p></p=
>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>The adt-installer issue was fixed and we were able =
to perform the adt tests.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Toaster UI test run was introduced in this test cyc=
le and test report.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The detailed full pass report is available on the wi=
ki: <a href=3D"https://wiki.yoctoproject.org/wiki/WW14_-_2014-04-02_-_Full_=
Pass_Release_1.6_M5.rc2">
https://wiki.yoctoproject.org/wiki/WW14_-_2014-04-02_-_Full_Pass_Release_1.=
6_M5.rc2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testi=
ng data</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p><=
/span></h1>
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
lack"> Milestone: M5<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Build name: 1.6_M5.rc2<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> poky commit: 3e528d3e4bc542ca2f654c54363c56af0fb9f61b<o:p></o:p></sp=
an></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Eclipse Plugin commit Kepler:&nbsp; 1dfe1d2f1322b5fda8e1a7637c447b0e=
060efb3e<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Autobuilder images repository:&nbsp; <a href=3D"http://autobuilder.y=
octoproject.org/pub/releases/yocto-1.6_M5.rc2">http://autobuilder.yoctoproj=
ect.org/pub/releases/yocto-1.6_M5.rc2</a> <o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack">&nbsp;Distributions tested: Ubuntu 14.04 64bit (BETA), Ubuntu 13.10 6=
4bit, Fedora 19 64bit, Fedora 20 32bit, Opensuse 12.3 64bit, CentOS 6.5 64 =
bit <o:p></o:p></span></pre>
</div>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;background-positio=
n:initial initial;background-repeat:initial initial;overflow:hidden;word-sp=
acing:0px">
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;background-posi=
tion:initial initial;background-repeat:initial initial">
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;background-position:initial initial;background-repeat:initial initial">
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
rg/tr_show_run.cgi?run_id=3D2195"><span style=3D"color:#5A3696">2195</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2197"><span style=3D"colo=
r:#5A3696">2197</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2194"><span style=3D"color:#5A3696">2194</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2196"><span style=3D"colo=
r:#5A3696">2196</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2218"><span style=3D"color:#5A3696">2218</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2219"><span style=3D"colo=
r:#5A3696">2219</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Beaglebone Black<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2212"><span style=3D"color:#5A3696">2212</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2213"><span style=3D"colo=
r:#5A3696">2213</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">EdgeRouter<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">96.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">3.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6111"><span style=3D"color:#5A3696">6111</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D6113"><span style=3D"color:#5A3696">611=
3</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2178"><span style=3D"color:#5A3696">2178</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2179"><span style=3D"colo=
r:#5A3696">2179</span></a><o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">2.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5834"><span style=3D"color:#5A3696">583=
4</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2173"><span style=3D"color:#5A3696">2173</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2177"><span style=3D"colo=
r:#5A3696">2177</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2203"><span style=3D"color:#5A3696">2203</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2204"><span style=3D"colo=
r:#5A3696">2204</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2201"><span style=3D"color:#5A3696">2201</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2202"><span style=3D"colo=
r:#5A3696">2202</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2217"><span style=3D"color:#5A3696">2217</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2216"><span style=3D"colo=
r:#5A3696">2216</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2188"><span style=3D"color:#5A3696">2188</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2189"><span style=3D"colo=
r:#5A3696">2189</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2192"><span style=3D"color:#5A3696">2192</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2193"><span style=3D"colo=
r:#5A3696">2193</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2190"><span style=3D"color:#5A3696">2190</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2191"><span style=3D"colo=
r:#5A3696">2191</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2171"><span style=3D"color:#5A3696">2171</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2172"><span style=3D"colo=
r:#5A3696">2172</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2162"><span style=3D"color:#5A3696">2162</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2163"><span style=3D"colo=
r:#5A3696">2163</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D216=
5"><span style=3D"color:#5A3696">2165</span></a><o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">96.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5769"><span style=3D"color:#5A3696">576=
9</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163"><span style=3D"col=
or:#5A3696">5163</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5285"><sp=
an style=3D"color:#5A3696">5285</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6118"><span style=3D"color:#5A3696">6118</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D2166"><span style=3D"color:#5A3696">2166</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2167"><span style=3D"colo=
r:#5A3696">2167</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D216=
8"><span style=3D"color:#5A3696">2168</span></a><o:p></o:p></span></p>
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
rg/show_bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5769"><span style=3D"color:#5A3696">576=
9</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163"><span style=3D"col=
or:#5A3696">5163</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5285"><sp=
an style=3D"color:#5A3696">5285</span></a><span class=3D"apple-converted-sp=
ace">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D5713"><span style=3D"color:#5A3696">5713</span></a><o:p></o:p></span>=
</p>
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
rg/tr_show_run.cgi?run_id=3D2198"><span style=3D"color:#5A3696">2198</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2200"><span style=3D"colo=
r:#5A3696">2200</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">96.0%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">4.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6016"><span style=3D"color:#5A3696">6016</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D2180"><span style=3D"color:#5A3696">2180</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2181"><span style=3D"colo=
r:#5A3696">2181</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">95.7%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">4.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6086"><span style=3D"color:#5A3696">6086</span></a><sp=
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
rg/tr_show_run.cgi?run_id=3D2215"><span style=3D"color:#5A3696">2215</span>=
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
<span style=3D"font-size:10.0pt">Ubuntu 12.04 x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">93.3%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">6.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5919"><span style=3D"color:#5A3696">5919</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D6134"><span style=3D"color:#5A3696">613=
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
rg/tr_show_run.cgi?run_id=3D2182"><span style=3D"color:#5A3696">2182</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Toaster: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">86.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">13.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5187"><span style=3D"color:#5A3696">5187</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5642"><span style=3D"color:#5A3696">564=
2</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6114"><span style=3D"col=
or:#5A3696">6114</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5253"><sp=
an style=3D"color:#5A3696">5253</span></a><span class=3D"apple-converted-sp=
ace">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D5255"><span style=3D"color:#5A3696">5255</span></a><span class=3D"app=
le-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5254"><span style=3D"color:#5A3696">5254</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5226"><span style=3D"color:#5A3696">522=
6</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5811"><span style=3D"col=
or:#5A3696">5811</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2164"><span style=3D"color:#5A3696">2164</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2174"><span style=3D"colo=
r:#5A3696">2174</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2185"><span style=3D"color:#5A3696">2185</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2186"><span style=3D"colo=
r:#5A3696">2186</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2214"><span style=3D"color:#5A3696">2214</span>=
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
rg/tr_show_run.cgi?run_id=3D2206"><span style=3D"color:#5A3696">2206</span>=
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
<span style=3D"font-size:10.0pt">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">40.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6121"><span style=3D"color:#5A3696">6121</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">60.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5846"><span style=3D"color:#5A3696">5846</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D6015"><span style=3D"color:#5A3696">601=
5</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6016"><span style=3D"col=
or:#5A3696">6016</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2208"><span style=3D"color:#5A3696">2208</span>=
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
<span style=3D"font-size:10.0pt">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">40.0%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt;color:black">60.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6121"><span style=3D"color:#5A3696">6121</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D6119"><span style=3D"color:#5A3696">611=
9</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6120"><span style=3D"col=
or:#5A3696">6120</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6122"><sp=
an style=3D"color:#5A3696">6122</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2187"><span style=3D"color:#5A3696">2187</span>=
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">83.3%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">16.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6086"><span style=3D"color:#5A3696">6086</span></a><o:=
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
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 25</span></b><span style=3D"font=
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;background-posi=
tion:initial initial;background-repeat:initial initial">
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
se;background-position:initial initial;background-repeat:initial initial">
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
<span style=3D"font-size:10.0pt">69<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ERROR<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">3<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">22<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">924<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 1018</span></b><span style=3D"fo=
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
idth=3D"432" height=3D"120" id=3D"Picture_x0020_30" src=3D"cid:image001.png=
@01CF540C.4CDF3130" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;=
chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:69,3,22,924&amp;chco=3DFFFF66|FF0000=
|FF9933|00FF00&amp;chl=3DBLOCKED(69)&#43;7%25|ERROR(3)&#43;0%25|FAILED(22)&=
#43;2%25|PASSED(924)&#43;91%25"><o:p></o:p></span></p>
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;orphans: auto;t=
ext-align:start;widows: auto;-webkit-text-stroke-width: 0px;background-posi=
tion:initial initial;background-repeat:initial initial;word-spacing:0px">
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;background-position:initial initial;background-repeat:initial initial" i=
d=3D"sortable_table_id_0">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">ID</span></b><a href=3D"https://wiki.yoctoproj=
ect.org/wiki/WW14_-_2014-04-02_-_Full_Pass_Release_1.6_M5.rc2"><b><span sty=
le=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0=
" width=3D"12" height=3D"14" id=3D"Picture_x0020_29" src=3D"cid:image002.gi=
f@01CF540C.4CDF3130" alt=3D"&#8595;"></span></b></a><b><span style=3D"font-=
size:10.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p=
></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Priority</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW14_-_2014-04-02_-_Full_Pass_Release_1.6_M5.rc2"><b><sp=
an style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_28" src=3D"cid:image=
002.gif@01CF540C.4CDF3130" alt=3D"&#8595;"></span></b></a><b><span style=3D=
"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW14_-_2014-04-02_-_Full_Pass_Release_1.6_M5.rc2"><b><span=
 style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_27" src=3D"cid:image0=
02.gif@01CF540C.4CDF3130" alt=3D"&#8595;"></span></b></a><b><span style=3D"=
font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Resolution</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW14_-_2014-04-02_-_Full_Pass_Release_1.6_M5.rc2"><b><=
span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_26" src=3D"cid:ima=
ge002.gif@01CF540C.4CDF3130" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Runs</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW14_-_2014-04-02_-_Full_Pass_Release_1.6_M5.rc2"><b><s=
pan style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_25" src=3D"cid:imag=
e002.gif@01CF540C.4CDF3130" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Description</span></b><a href=3D"https://wiki.=
yoctoproject.org/wiki/WW14_-_2014-04-02_-_Full_Pass_Release_1.6_M5.rc2"><b>=
<span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bo=
rder=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_24" src=3D"cid:im=
age002.gif@01CF540C.4CDF3130" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Version</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW14_-_2014-04-02_-_Full_Pass_Release_1.6_M5.rc2"><b><spa=
n style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_23" src=3D"cid:image0=
02.gif@01CF540C.4CDF3130" alt=3D"&#8595;"></span></b></a><b><span style=3D"=
font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Target Milestone</span></b><a href=3D"https://=
wiki.yoctoproject.org/wiki/WW14_-_2014-04-02_-_Full_Pass_Release_1.6_M5.rc2=
"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><i=
mg border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_22" src=3D"c=
id:image002.gif@01CF540C.4CDF3130" alt=3D"&#8595;"></span></b></a><b><span =
style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Age (days)</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW14_-_2014-04-02_-_Full_Pass_Release_1.6_M5.rc2"><b><=
span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_21" src=3D"cid:ima=
ge002.gif@01CF540C.4CDF3130" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2178"><span style=3D"col=
or:#5A3696">2178</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">dmesg log errors in=
 Atom-PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.3.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">387<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2162"><span style=3D"col=
or:#5A3696">2162</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D21=
66"><span style=3D"color:#5A3696">2166</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">203<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">NEEDINFO<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182"><span style=3D"col=
or:#5A3696">2182</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">201<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182"><span style=3D"col=
or:#5A3696">2182</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">196<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5253"><span style=3D"color:#5A3696">5253</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">WONTFIX<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182"><span style=3D"col=
or:#5A3696">2182</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[webhob-poky/master=
] work_directory in tasks table is empty<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">191<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5254"><span style=3D"color:#5A3696">5254</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">DUPLICATE<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182"><span style=3D"col=
or:#5A3696">2182</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[webhob-poky/master=
] line_number in tasks table is empty<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">191<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5255"><span style=3D"color:#5A3696">5255</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182"><span style=3D"col=
or:#5A3696">2182</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">source_url in the t=
asks table is empty<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">191<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5285"><span style=3D"color:#5A3696">5285</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2165"><span style=3D"col=
or:#5A3696">2165</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D21=
68"><span style=3D"color:#5A3696">2168</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">powertop: Output is=
 useless<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">Future<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">187<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5642"><span style=3D"color:#5A3696">5642</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182"><span style=3D"col=
or:#5A3696">2182</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">The number of warni=
ngs from Build table doesn't match the number of orm_logmessage.level entri=
es with value 1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">117<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5713"><span style=3D"color:#5A3696">5713</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2168"><span style=3D"col=
or:#5A3696">2168</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">systemtap displays =
blank pop-up error window<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">82<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2162"><span style=3D"col=
or:#5A3696">2162</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D21=
66"><span style=3D"color:#5A3696">2166</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">headless build take=
s took long<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">65<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5769"><span style=3D"color:#5A3696">5769</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2162"><span style=3D"col=
or:#5A3696">2162</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D21=
66"><span style=3D"color:#5A3696">2166</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">ssh connection does=
n't disconnect when qemu is restarted/shut down<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">63<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182"><span style=3D"col=
or:#5A3696">2182</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">50<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5834"><span style=3D"color:#5A3696">5834</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2179"><span style=3D"col=
or:#5A3696">2179</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Cannot wake from su=
spend state using the USB mouse or keyboard<o:p></o:p></span></p>
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
_bug.cgi?id=3D5846"><span style=3D"color:#5A3696">5846</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2206"><span style=3D"col=
or:#5A3696">2206</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">perf report command=
 hangs or crashes on arm targets<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5.2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">43<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5919"><span style=3D"color:#5A3696">5919</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2215"><span style=3D"col=
or:#5A3696">2215</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Interaction between=
 sorting and &quot;Edit columns&quot; menu not working as designed<o:p></o:=
p></span></p>
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
tyle=3D"font-size:10.0pt">27<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">WORKSFORME<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2181"><span style=3D"col=
or:#5A3696">2181</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.6 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">15<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6015"><span style=3D"color:#5A3696">6015</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2206"><span style=3D"col=
or:#5A3696">2206</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Lttng does not work=
 on qemuarm due to lttng-tracer module not found<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.6 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">13<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6016"><span style=3D"color:#5A3696">6016</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2206"><span style=3D"col=
or:#5A3696">2206</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D22=
00"><span style=3D"color:#5A3696">2200</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">CrossTap has issues=
 on running scheduler script against qemuppc<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">13<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6086"><span style=3D"color:#5A3696">6086</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2181"><span style=3D"col=
or:#5A3696">2181</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D21=
87"><span style=3D"color:#5A3696">2187</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">A hob error occurs =
after recipe add<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.6 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1<span class=3D"apple-converted-space"><span styl=
e=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Rece=
nt)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6111"><span style=3D"color:#5A3696">6111</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2212"><span style=3D"col=
or:#5A3696">2212</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[edgerouter] rtc-ds=
1307 error in dmesg<o:p></o:p></span></p>
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
_bug.cgi?id=3D6113"><span style=3D"color:#5A3696">6113</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2212"><span style=3D"col=
or:#5A3696">2212</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[edgerouter] Can no=
t boot from USB root<o:p></o:p></span></p>
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
_bug.cgi?id=3D6114"><span style=3D"color:#5A3696">6114</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2182"><span style=3D"col=
or:#5A3696">2182</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Elapsed_time value =
null for tasks with outcome=3D0<o:p></o:p></span></p>
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
_bug.cgi?id=3D6118"><span style=3D"color:#5A3696">6118</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">DUPLICATE<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2165"><span style=3D"col=
or:#5A3696">2165</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">crosstap doesn't wo=
rk on qemux86 core-image-sato-sdk<o:p></o:p></span></p>
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
_bug.cgi?id=3D6119"><span style=3D"color:#5A3696">6119</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2208"><span style=3D"col=
or:#5A3696">2208</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">perf test command d=
oes not work for QemuPPC<o:p></o:p></span></p>
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
_bug.cgi?id=3D6120"><span style=3D"color:#5A3696">6120</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2208"><span style=3D"col=
or:#5A3696">2208</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">perf top command do=
es not work on QemuPPC<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.6 M5<o:p></o:p></span></p>
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
_bug.cgi?id=3D6121"><span style=3D"color:#5A3696">6121</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2208"><span style=3D"col=
or:#5A3696">2208</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D22=
06"><span style=3D"color:#5A3696">2206</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">powertop --calibrat=
e does not work on QemuPPC<o:p></o:p></span></p>
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
_bug.cgi?id=3D6122"><span style=3D"color:#5A3696">6122</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">DUPLICATE<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2208"><span style=3D"col=
or:#5A3696">2208</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Crosstap does not w=
ork on QemuPPC<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.6 M5<o:p></o:p></span></p>
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
_bug.cgi?id=3D6134"><span style=3D"color:#5A3696">6134</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2215"><span style=3D"col=
or:#5A3696">2215</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Wrong information o=
f images.<o:p></o:p></span></p>
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
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Total: 29</span>=
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
<p class=3D"MsoNormal"><b><u><o:p><span style=3D"text-decoration:none">&nbs=
p;</span></o:p></u></b></p>
<p class=3D"MsoNormal"><b><u>Distro Testing:<o:p></o:p></u></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">All the distro tests are passed during this build. W=
e also performed manually the distro tests (covered in the summary report f=
rom above) on Ubuntu 14.04 (beta).<o:p></o:p></p>
<p class=3D"MsoNormal"><b><u><o:p><span style=3D"text-decoration:none">&nbs=
p;</span></o:p></u></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"492" style=3D"width:368.95pt;margin-left:.1pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;background:#DA9694;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:black">COMMIT<o:p></o:p></sp=
an></b></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der:solid windowtext 1.0pt;border-left:none;background:#DA9694;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">3e528d3e4bc542ca2f654c54=
363c56af0fb9f61b<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#DA9694;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:black">RELEASE<o:p></o:p></s=
pan></b></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#DA9694;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">1.6_M5.rc2<o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:black">Fedora 20<o:p></o:p><=
/span></b></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nighlty-world<o:=
p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; buildtools<o:p><=
/o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-arm<o:p>=
</o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-multilib=
<o:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-qa-syste=
md<o:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-x86<o:p>=
</o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-x86-64<o=
:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-x86-64-l=
sb<o:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
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
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nighlty-world<o:=
p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; buildtools<o:p><=
/o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-arm<o:p>=
</o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-multilib=
<o:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-qa-syste=
md<o:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-x86<o:p>=
</o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-x86-64<o=
:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-x86-64-l=
sb<o:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
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
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nighlty-world<o:=
p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; buildtools<o:p><=
/o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-arm<o:p>=
</o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-multilib=
<o:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-qa-syste=
md<o:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-x86<o:p>=
</o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-x86-64<o=
:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-x86-64-l=
sb<o:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#8DB4E2;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b>CentOS 6.5<o:p></o:p></b></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#8DB4E2;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nighlty-world<o:=
p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; buildtools<o:p><=
/o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-arm<o:p>=
</o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-multilib=
<o:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-qa-syste=
md<o:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-x86<o:p>=
</o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-x86-64<o=
:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"209" nowrap=3D"" valign=3D"bottom" style=3D"width:157.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.75pt">
<p class=3D"MsoNormal"><span style=3D"color:black">&#8226; nightly-x86-64-l=
sb<o:p></o:p></span></p>
</td>
<td width=3D"283" nowrap=3D"" valign=3D"bottom" style=3D"width:211.95pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;=
height:15.75pt">
<p class=3D"MsoNormal"><span style=3D"color:black">PASS<o:p></o:p></span></=
p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Performance Test:<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal">Here are the trends for the performance_test. There =
is a slight improvement observed in the Bitbake core-image-sato (rm_work). =
Building from scratch the core-image-sato-sdk and the virtual/kernel observ=
ed few degradations. All the other
 measurements are available on the performance_test wiki: <a href=3D"https:=
//wiki.yoctoproject.org/wiki/Performance_Test#1.6_Nightly_results">
https://wiki.yoctoproject.org/wiki/Performance_Test#1.6_Nightly_results</a>=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Bitbake core-image-sato (rm_work):<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"794" height=3D"502" id=3D=
"Picture_x0020_1" src=3D"cid:image003.jpg@01CF5408.F190E470"><span style=3D=
"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Bitbake core-image-sat=
o-sdk:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"757" height=3D"482" id=3D=
"Picture_x0020_3" src=3D"cid:image004.jpg@01CF5408.F190E470"><span style=3D=
"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">for Bitbake birtual/ke=
rnel: <o:p>
</o:p></span></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"779" height=3D"496" id=3D=
"Picture_x0020_2" src=3D"cid:image005.jpg@01CF5408.F190E470"><b><o:p></o:p>=
</b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E961B68C69BIRSMSX104gercor_--

--_008_1FFB62CE8AEB0D4298B51122D8903E961B68C69BIRSMSX104gercor_
Content-Type: image/jpeg; name="image003.jpg"
Content-Description: image003.jpg
Content-Disposition: inline; filename="image003.jpg"; size=29240;
	creation-date="Wed, 09 Apr 2014 12:56:43 GMT";
	modification-date="Wed, 09 Apr 2014 12:56:43 GMT"
Content-ID: <image003.jpg@01CF5408.F190E470>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCAH2AxoDASIA
AhEBAxEB/8QAGwABAQADAQEBAAAAAAAAAAAAAAIDBAUBBgf/xABOEAABAwIDAwgIAwUFBgUEAwAA
AQIDBBEFElITIZEUMUFRYpKh0QYiI2FxgZPhFTJCFjNysdIkVFWUwTRDU4KisjU2Y3TCJnOD4kRF
s//EABcBAQEBAQAAAAAAAAAAAAAAAAABAgP/xAAuEQEBAAIABAMHBAMBAQAAAAAAAQIRAxIhMUFR
0RMyYXGRobEjgeHwFCJSQsH/2gAMAwEAAhEDEQA/AP2YAAAAANStrqbDoEmq5WxRK9rMzuZFctkv
1b15zbOdi+G/ilIyFJlhcyaOZr0ajt7HI5LovOm4DHUekWFUblbUV0LFtdEve6ervS3Onrt3+8zT
YvQQQrK+shypHtfVejlVmpETeqfA4H7CQMiRkNbKzrV0bXX/AHa/ziRfmqHkvoJDM/M+umsscjVs
xEsr0cjlbpT1lWydSAj6ZtbTvlZE2eJXvvlaj0u63PZOm3SQ/EqKLa7Ssp27FUSTNK1MirzX37r+
849N6JU9LiFLUJPK9KdERrH79zVerN9+dM6pdbqvEqX0XR7XtZVq1qTunivC12Rzlcrrqv5k9d1u
rd1Adb8SomPcx1XAj2uRjmrI26OXmRd/OonxKkpJFjqamKFURHe0ejUst7b1+C8Dgy+g9I+mZA2e
VGtlc/1kvma5jWK1bWvuam9TPXeiUOIV3KZKqdVyKzK6zrXbI3nXq2i8AOw3EqN+z2dVA7aOVrLS
NXOqc6Jv3qeMxOhkRFZWU7kc/ZoqStW79PPz+44M3oRBLLE7lcqMjlbLs8iWumTm6l9Tn96mvR+g
25jq6par2SJZsaeqsaNjaiLzXX2bd9i9B9VJW08MyQyzxMkVquRjnojrJzrbqNf8aw3aKzl1NmSP
ar7VLZL5c1+a19xzK70VbWViztrp43rEsavSyvW6ORLu6UTOtkVPgqGvT+hUdO1iw1jkexyvT2Tc
ubaLIm7qRVVLfDpQg70+IUdM9rZ6iNmdiyIrnWblSyKt+ZE9ZOIZiuHyypFHXUr5HLZGNmaqqvVa
/uORP6KQyNpYGzuSCGmbTuzb3KjZGPavVzssvxH7JQMqXVMcz1l2qzIitREus21te3Nfd8AO5LVQ
wORJpWRqtrI9yJe6oieKonxUxLidE3NmrKdMjc7ryt9Vt7XXfzX6Tl4lgU2OpEta5lLJDmyLTu2m
a6br5mpbK5GuT3tQ1n+hFK9ix8okSLKlm5G3zZWtVb9KKjE3daqoHZZjeHyNRWVUbkWXYoqar24X
3X5jx2O4Y3EloFrIeVpzx5t6c3PxTicxfRNjaiqlgqpP7ZUMmna/enqyI9MvVzW997ntX6IU1TX1
VbymZtRO5rmqqqrWK1zXJ6qrZfyIC/B048aw+WeaFlbAskKIr0V6JZFRFRfem9N6dZU2L0FO16y1
1OxGMdI68qXRqXutupLLwPn2+gcGx2Tq6VzEa3L7NqKj2sRqOv0pZObmMv7EU7olbJWSuc5rmufk
airmbKi//wCqr8kFI69Vj2GUdBJW1FdAymjbnc/Oi2Tm5k386ohkjxOllrEpUe5J3NzNRzHIjkRE
VbKqWW2ZL26zjx+h0acv2lW96VcEkKokbUyK+yucnvvzdR0KXB30+Lvrn1SzN2LYYo3Rp7JqIl8q
36VS67t+7qQDrgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaEmK0sLp0ke5qQtVznK1bLa17ddrpzdZvnPTDGbe
eRZHqkrXNRu6zc1syp8bJzgZH4hTMWBHP3zuRsaWVVVVS/y3Hn4jTIyZzXq7ZP2bkaiqqu3bk613
oh6tE1YYYle7LC5rm836U5jXjwaOCGWKCeZqSPSRMzs+RyWta/8ACBnhxKnqJmRxucqvS6LlVEva
9r9dt9jdObT4THTzRvbK9WsS6MWyIr7WV3Do5joqiKllS4HoJyN0pwGRulOAFAnI3SnAZG6U4AUC
cjdKcDTZO92Ivp1p7RIl0fYDeBORulOAyN0pwAoE5G6U4DI3SnACgTkbpTgMjdKcAKBORulOAyN0
pwAoE5G6U4DI3SnACgTkbpTgMjdKcAKBORulOAyN0pwAoE5G6U4DI3SnACgTkbpTgMjdKcAKBORu
lOAyN0pwAoE5G6U4DI3SnACgTkbpTgMjdKcAKBORulOAyN0pwAoE5G6U4DI3SnACgTkbpTgMjdKc
AKBORulOAyN0pwAoE5G6U4DI3SnACgTkbpTgMjdKcAKBORulOAyN0pwAoE5G6U4DI3SnACgTkbpT
gMjdKcAKBORulOAyN0pwAoE5G6U4DI3SnACgTkbpTgMjdKcAKBORulOAyN0pwAoE5G6U4DI3SnAC
gTkbpTgMjdKcAKBORulOAyN0pwAoE5G6U4DI3SnACgTkbpTgMjdKcAKBORulOAyN0pwAoE5G6U4D
I3SnACgTkbpTgMjdKcAKBORulOAyN0pwAoE5G6U4DI3SnACgTkbpTgMjdKcAKBORulOAyN0pwAoE
5G6U4DI3SnACgTkbpTgMjdKcAKBORulOAyN0pwAoE5G6U4DI3SnACgTkbpTgMjdKcAKBORulOARr
U3oiIBQAAAAAAAAAAAAAYKh87Ir08TZX6XPyJb42UzgDnpU4jb/YIf8AMf8A6nPjq8U/GpY1polR
sTX5OUbrKqon6etFO8cqFZP2nqUW2Tkse/8A5nfcl23LLvozcpxL+4w/5j/9TahdI+JFmjbG9edr
XZkT52QzArNsvg9AAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOI/EqpJqtkSwq6Nkita5F9
TLayutz3uq9HMdshGNuq5Uu7nW3OBzZK2dsVFIzY5ZZGNkve6I5L7k6Fv4GBmJzrT1N5oXZJGtbN
ZLI1yomayKqWS69PRvOzlbpTr5iUhjRqtSNtlvdLJvvzgcmhxSapq4WPWOz0srETf+W+fn5l5jsq
tk3Iq/A8RjUdmRqItrXt0dRYEZnaHeHmMztDvDzLAEZnaHeHmMztDvDzLAGPM7Q7w8znROX9oqj1
Xf7LH1annUPn6uWvi9IJVoKaCf8As0edJJVYqes+1ty+8lum8Jvcd3Ouh3h5jO7QvFPM434rjEae
1wJ7v/tVLHfzseL6Rys/fYNiTP4Ykengo5o17HL4X947WZ2h3h5jM7Q7w8zjJ6WYai2m5VCv/q00
jf8AQyR+lOCybm4jTovU5+X+ZObHzS8HiTwv0dXM7Q7w8z3M7Q7w8zWixSjmtsauB99MjV/1NlHI
qXRUX4Gt7Y5bO5mdod4eYzO0O8PMq6dYCJzO0O8PM0ZcQqGSuY3Dap6Iu5zVjsvFxvnoJdd45M2M
TQQvlfhdWjGNVzlvHuRN6/qLbilQ5qKmF1e/fzx/1HuPTNp8DrHK1VzRObu96WNqhlSoooZURW5m
ItlJqt7muzDT1080yMfh9TC1f1vVlk4OU28ztDvDzLQFYt32Tmdod4eYzO0O8PMsARmdod4eYzO0
O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARm
dod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO
0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsAR
mdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYz
O0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsA
Rmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eY
zO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYzO0O8PMs
ARmdod4eYzO0O8PMsARmdod4eYzO0O8PMsARmdod4eYRVXnaqfGxYAAAAASjkVVRFS6c6X5gKB5d
Lc5Odqoqo5tk51vzAWCEc1Vsjkva9r9BYAAAAAB50HNi/wDMdR/7aP8A7nnS6Dmw/wDmOo/9tH/3
PJWsfF0zw9BWXlk6jBJSQTJaSGNydpqKZwFls7OXL6O4TMt5MOpVXr2aIYF9EsI54qd8K9cUz2fy
U7Z4Z5cfJucXiTtb9XD/AGYYxP7PiWJwr7qhXJ/1Io/CMVi3Q47MqJ0TQMf42Q7gt7y8sJx858fn
Jfy4nJ/SSL8tbQT/AMcLmfyVQlZ6QRbpMNpJ064qlW+DmnbQ9Jryq+133kv7a/GnzGKYzXfhlVHU
YHVR5onJma5kjU3LvWymeD0po44WNqKetgVGoi56Z9k3daIdPF//AAau/wDbyf8AapsxImybuTmQ
ay33Xnws64/S+u3JT0twVdy1zWL1PY5v80MjfSjBl5sTpfnIh1FYxUsrUX4oYnUlO/8ANBEvxYij
V803wvK/X+Go30hwl/5cSo1//M3zMzcXw935a2mX4St8wuE0DvzUdOvxjb5GN2A4U/8ANh1Iv/4W
+Q6p+n8W0yqgk/JPG7+F6KZEei8yocpfRbBX/wD9bTJ8GIn8jGvojhSfuopYV64p3t/1G75Lrhf9
X6T1drnF7HDT0cmh30eMYhCqcyPekjeDkPFg9IaT93VUda1OiWNYnL823TwG74w9njfdyn77n8O7
8B8T56b0lqqGNVrsHqo1TndGrZGfHMnN80Nmjx52IR7SjpNu3pVlRGtvil9wmUvRLwcpN+DsXFzk
txeodWPpUw6XasYkiptY+ZVVE6fcZ+XV3+FTfWj8zW2eS/2x0QYYHyPha6WJYnrzsVUVU+abjMGQ
AAAAAAAAAAAAAAAAAAAAAAAAAxJPGsqxI7106AMoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAABxZMJkmnrdoxmzlZI1FRyosma1kW3QllT5naAHKfhrpI6NFRNpTSMddXL
bc1EWyGtBh06UcqPpY45Hva5YmvTZuRqouXm33RLXU7wA4lBhlRT1cL5MlmJdXo7fbLbZ/BF3nZV
LpuVU+BQAx5X63cEGV+t3BDIAMeV+t3BDFPHULFannayS/O9mZLfBLGyAObyfFP75Tf5df6jTZS4
h+LSyJWQbRYmsX+zrayKq6u0d058dZI7GJKdU9RG7lsTTXM82GKf32m/y6/1G1FHM2FqTSo+RPzO
Y3Ki/LeZwVne0ZX63cEGV2t3BDIAMeV+t3BBlfrdwQyADHldqdwQZXa3cEMgAx5Xa3cENKXFaWCV
0ck8iPatlRInL/JDoHlgTXi4mJYrSzYXVxxTSue+F7WtSF29Vatk/KZ48Yo2xtRaiTciJ+5d/SdG
d72ROdG3M5Og9ic58TXPblcqb06iarXNjrWmnT4lTVM2yhme5y70RY1TxVDcyu1u4IVY9KzdeCMr
9buCDK/W7ghkAGPK7W7ggyu1u4IZABjyu1u4IMrtTuCGQAYsrl/UvBDl1vo5RVku2yvgqE3pPAuz
fxTn+Z0qiKSWLLDMsL73zI1HeCmryKt/xKT6TPImpe8bxyuPWXT5uOfEcH9IKh07JMQjZA3NLG1E
lay62XLzO6eY+moa6DEaVs9JUpJGu66W3L1Klty+410wqpSqdUpiMu1cxI19my1kVVTo96mhU+jt
ZDUSV2GVyx1rk9ZHMakcv8SInP7zPXHs624cTvZL5+H7x9FldrdwQZXa3cEOXguKJXxOhmV7KyH1
ZopURHtXrsm5U6lQ65qXc3HDLG43VRlfrdwQZX63cEMgKjHlfrdwQZX63cEMgAx5X63cEGV+t3BD
IAMeV+t3BBlfrdwQyADHlfrdwQZX63cEMgAx5X63cEGV+t3BDIAMeV+t3BBlfrdwQyADHlfrdwQZ
X63cEMgAx5Xa3cEMU8yU0WdyyuS9rMZmXgiGwQ+RkTc0jmtb1qtgsaP4rEnO2t/yr/6TRixmN2Ky
s2VTuai3Smde3R0fE8q/SiFtS6lw5qVtS38yNejY4/4nru+SXU5kSYhW4xUJVYxT0t4WK5KXKu66
2RFd0pv3+8xzeXV3x4PTeXT++T6L8Vi01v8AlX/0m1DIk8bZGukai9DmZV4KlzhLgtI7fJjdc53/
ALzL4JYyt9HGqzPTYxiSX5nJUZ08UUu75M3DDz+zuZXancEPHI7WvBDjLQ47S76bE4apqfoqYbL3
m+R5+O1tH/4phU7GJzzU67VnxVE9ZOAmXmnsrfdsv98q7SNdqdwQ9yu1u4IalDi1HibM1JUxy250
au9PinOhupzFl32c7LLqzScr9buCDK/W7ghkBUY8r9buCDK/W7ghkAGPK/W7ggyv1u4IZABjyv1u
4IMr9buCGQAY8r9buCDK/W7ghkAGPK/W7ggyv1u4IZABjyv1u4IMr9buCGQ8ugGPK7UvBBldqXgh
z8UxCiiiWOfE20j0W92SNR3wst/5HF/FaVy2psSxmpXrhhzJxyWJc5HXHhZZTcn2fV5Xa3cEFna1
4IfCxVuJyYtMyNuNPYjEVGOdGxye9bpaxvp+Nr+WlxL/AJqyFP8A4k541/j5eNn1j6uztbuCCztb
uCHCgrMdjgSP8IR6t3Zpaxqq742aX+IY/wD4JB/nE/pJzz+xn2OXnPrHas7WvBBZ2teCHGTEcdst
8Ejv1JVt8h+J42ib8C3+6rb5F55/Yexy859Z6uzZ2teCCzta8EOMuMYq382ATru/TPGv+p5+PV7f
z4DXJ/C6N3/yHPD2GXw+s9Xayu1u4ILO1u4Icb9pHt/eYRiifCBHfyU8T0op0T2lHiMf8VI//RBz
TzT2OfhHayu1O4IMrtbuCHy8mNYdJM97sWxOBHLfKsKta33Jdhr1mMUDKOV9J6Q1Lp0b6jHOal1+
CsJz4tf4+fjL9K+wyu1rwQZXa3cEOZDhcksTH/idemZEW2dn9JnpsOkp5kkdX1c1kX1JHNVq8Goa
3XKyebcyv1u4IMr9buCGQFRjyv1u4IeoipzuVfjYsAAAAAObJi8cTqhFimckLXORWIiq/LbMiJ7r
pzgdIGi/EWRpTOWORUqHtY1UbubdL3VeohuKMdDM9sU145NkjXNyq5263PzXzJzgdEHNp8ViqZo2
MjeiPSyOW1kda6t+NvkdBVREuqoie8CgRtGam8RtGam8QLBG0ZqbxG0ZqbxAsjI3Nmypm67DaM1N
4jaM1N4gWCNozU3iNozU3iBYI2jNTeI2jNTeIFgjaM1N4jaM1N4gWCNozU3iNozU3iBYI2jNTeI2
jNTeIFgjaM1N4jaM1N4gWCNozU3iNozU3iBYI2jNTeI2jNTeIFgjaM1N4jaM1N4gWCNozU3iNozU
3iBYI2jNTeI2jNTeIFnhO0ZqbxG0ZqbxA5WLYQtY5lXRyJBiEP7uW25yaXJ0tUrCMWTEWyRTRrBW
Qrlmhcu9q9adbV6FOntG6k4nGxjDXVD467D5GR4jAnqOVfVkb0sd7l8DNmusdcMplOXL9r5fw7d9
wuczCcWixOmzoixSxrklievrRvTnRfPpOjtGW/MnEsu5uOdxuN1e6wRtGam8RtGam8SosEbRmpvE
bRmpvECwRtGam8RtGam8QLBG0ZqbxG0ZqbxAsEbRmpvEbRmpvECwRtGam8RtGam8QKBO0ZqbxMNV
WwUdPJPPKxkUaZnOVeZASW3UVUVMVLA+eeRscTEu57lsiIfPrFU+lX71r6bCL3RipaSo966W+Knt
NTyekNQytxFqxULFzU1I5d7+p8idfU3oPokexOZzeJn3vk7bnC7e9+P5akOEUEETY46SBrGJZE2a
bjThwihTF5ZEgiVVb+RYksnMdjaN1N4ko6O+a7br03Quo5XLK9bWFMMo/wC6U/02+RniiZCxGRta
xqcyNSyIe7RmpOI2jNTeJU63us8J2jNTeI2jNTeIHNrsAoMRdtJoUbOnNNEqskT/AJk3mpybG8K3
01QzEoE/3U/qSp8HpuX5odtHtt+ZvE9zst+ZOJOWd46Y8XKTV6zyrkU/pLSSTJBWJJQVC7tlUtyX
+DuZfkp2Eejm3Rd3uMFTT01ZCsVVHFLGvO16I5PE46+j7qNyuwbEJaT/ANFy7WLurvT5KTrPiuuH
n2ur9Z6voQfPpiuL0aWrsNSdif72jkR3/Q6y/wAyv2ywdqJyiokp3aZYXtVPAc08T2Gd92b+XV3g
fM4p6X0MeHPloKpskqKlvUcu7p6DYo/SnD30MUlVUIyVWIr02brIvAvNPNPZcT/m/R3vkDiJ6X4H
myriEaL2kVP9CF9LcOd6tK2qqndUMDl8VREJz4+ZOBxP+a7x5c4S4rjFV/suFMp0X9dXOif9LbqT
+G4pVp/bca2TV546NiM/6luo35RfZa96yff8OxUVtPRxbSqnjhZqkcjU8TlL6U0sy5cPgqq53XDG
uTvLZDJT+jmE070k2DZ5U/3s71ldxdc6qOjRqI1zUROZEVB1vwN8PHtLfs4qP9Iq1fVZSYfGvS9V
mk4JZo/ZvbrmxLEK2svzs2mzZ3W2O0j26m8T3OzUnEcs8ep7bL/zJPl693Lb6NYSyPJHRxx70XNH
dr7/AMSb/EypgdIiWR9WidSVcv8AUb+0bqbxGdupvEvLJ4MXiZ3va5TfRqjbUPnR9XncllXlMl+N
7mb8Cpv+JWf5uX+o6G0ZrbxG0ZrbxGoc+XmiCFIIGxsV6o1LIr3K5fmq71MxG0ZqbxG0ZqbxKysE
bRmpvEbRmpvECzwnaM1N4jaM1N4gVZBZOonaM1N4jaM1N4gaUlVOx6tbh08jUWyOR8dne/e65o4o
2fEMOmp0wqZHPb6qq+LcvR+o7e0ZqTiNozU3iTTUy058NVUQxNjbhlTlalk9pH/UZoKqeSRGSUM8
Sa3uYqeDlU2tozU3iNozU3iNJv4LBG0ZqbxG0ZqbxKiwRtGam8Qj2qtkcir7lAsAADSTD4Ummks5
VmarXIrlsl+eydF7Jf4G6ANZaKJY42LdWxOa5iX5lalkIfQRSNlbd7UldncrXKi5t1lTqVMqG4AN
GHDKannZJG1yKxLIiuVUva2a3Xbdc3gAPLCx6APLCx6APLCx6APLCx6APLCx6APLCx6APLCx6APL
Cx6APLCx6APLCx6APLCx6APLCx6APLCx6APLCx6APLCx6APLCx6AOBi9BPT1X4thjc1Uxtp4E3JU
MTo/iToX5HSw+vgxOjjqaZ143pu6FRelFToVDb50Pna6J/o/XS4nSNc6imW9ZC1Pyr/xGp19adPO
YvS78HbH9Sct7zt6Po7CxjhmjnhZLC9r43ojmuat0VF6TIbcexYWPQB5YWPQB5YWPQB5YWPQB5YW
PSXORrVVyoiJvVV6AMc00dPC+WZ7WRsRXOc7ciInScCmhf6S1UdbVRuZhsTs1NA5LbVf+I9OrqT5
niIvpTVoq+rg0L/VT+9vRef+BF4qfSNajURESyIZ7/J2v6c14/j+XqJYWPQacXlhY9AHlhY9AHlh
Y9AHlhY9AHlhY9AHhyqrDKqoe/8AtyJEq3SN1OxyNTq3nVBLNrjlcesfJ4l6JtfSSqjoXvVLXZRx
o5Peioly6b0QjWGN7lpmuVqXa6jjWx9SCcmPk6/5HE7bcagwLkc6PWWFzET8jaWNniiXOxZOpD0F
kk7OeWdyu6WFj0FZeWFj0AeWFj0AeWFj0AeWFj0AeWFj0AeWFj0AeWFj0AeWFj0AeWFj0AeWFj0A
eWFj0AeWB6AAAAAHDfPWuqK1kcr2ubG9UvHdI7WyKnWqpm6+YDuA5MktUsVE+OVbrIxJmpHvVFal
0VejrNWGsq3UczpJJURFZmcsfrNvbaW3fpuvQvgB9ADhUNVWSVcLZXSXc31mKyyZMu5/Nz33f6Hc
W9tyXUD0GO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve
+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQ
GO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79
Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQlWorVRUu
i9Ck3fpb3vsLv0t732A+dS/otWWX1sHnfuX+6vVeb+BV4KfSNcjkum9FMM0KVEL4po2Pjeitc1y3
RUXo5jg0s03o3Ux0VW5X4dK7LTVD3ful6I3r/JfkZ935O1/Um/H8/wAvpgY0V6/pb3vsLv0t732N
OLIDHd+lve+wu/S3vfYDIDHd+lve+wu/S3vfYDIDHd+lve+wu/S3vfYClPnKmV/pLWPoqZytw2F2
Wpmattq5P921errX5HtbWVGNVb8Mw16xwxrarqWL+XrjYupeleg7NJSMoaWOmpomRxRpla1F5k4G
b/t08HafpTd7+Hw+PozRRMhibHE1GMYiNa1qWREToMpju/S3vfYXfpb3vsacWQGO79Le99hd+lve
+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQ
GO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79
Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99
hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+l
ve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99hd+lve+wGQGO79Le99ikV197UR
PiBQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPDBVUkNbTSQVEbZIp
EyuY5NyoZwCWy7j5uGqn9G5W0mISOkw5y5YKp29Yupki/wAncT6Jjkc26LdF6SZ4Y6iJ0czGvjcl
nNcl0VD59KWu9HXK6ibJWYb0097ywp2FX8zeyu/qM9Z8nb/Xide2X2v8vo0Iml2MSvVFW3QhyqPH
48QRy0dNNO1q2VWujRUX3orkVPmhmmxWWmp5JpsOqWxxtVzlzRrZE/5i7ndzuGUur3dCN+0ja9EV
MyXspZz24jUOajm4bUKipdFzx/1GGfGo6NqyV8MlLF/xJXsVFXqREcqqvwQbhMMrdR1VWyc9j56q
r6jG6h9DhD1jhYuWorG8zetjOt3v6CVSv9I1s5JqHDF50X1Zp0/+DfFTu0tNDR0zIaaNscTEs1rU
siITrl8nTWPC63rl9p8/iihoIMOpGU9NGjI2JZETp969am0Aa7ONtt3XoAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABrrWU6Plas8aOiTNIiuT1E616jYOS/CX
Sy1O1cx0UjXoxqtvvfZVv8FalgN91VAxY0dMxFl3R3cnrfAhtdSviklbPEscaqj3I5LNt1mlLhUk
iwIj2I1jWsk3LdyIrVunvu23wMcOESwwy+0jWVXNcxVuqNRiplTrtu3/AOoHTZVwSSNjZNG57m50
ajkVVb1mwcikwmSlqInOlascfr2RFur1blX5bzqql0tv+SgUDHs063d5Rs063d5QMgMezTrd3lGz
Trd3lAyAx7NOt3eUbNOt3eUDIDHs063d5Rs063d5QMgMezTrd3lGzTrd3lAyAx7NOt3eUbNOt3eU
DIDHs063d5Rs063d5QMgMezTrd3lGzTrd3lAyAx7NOt3eUbNOt3eUDIDHs063d5Rs063d5QMgMez
Trd3lGzTrd3lAyAx7NOt3eUbNOt3eUDIDHs063d5Rs063d5QMgMezTrd3lGzTrd3lAyAx7NOt3eU
bNOt3eUDIDHs063d5Rs063d5QMgMezTrd3lGzTrd3lAyAx7NOt3eUbNOt3eUDIedBGzTrd3lGzTr
d3lA5tdgFHXS7ZWOhqU5p4HLG/inP8zkY1RYzR4RUZMRbVwZLObNAmdE68zVT+R25ML2kjnrW1jM
y3ytlsifDcYKnBNrTvjSsrXZ0yqiz86Lz9Bm4u2PEs1Ldz4zbTpKTHqqii2mIQUrHMT1Yqe70T4u
W1/kblH6O0dNMlRLtKuqT/fVDszk+HQnyQyR4O7ZNR9dXZrb7TfYzQYZsJEfyqrkt+mSW6CSF4ts
1Lr5TTeRNwI2adbu8o2adbu8ppxZAY9mnW7vKNmnW7vKBkBj2adbu8o2adbu8oGQGPZp1u7yjZp1
u7ygZAY9mnW7vKNmnW7vKBkBj2adbu8o2adbu8oGQGPZp1u7yjZp1u7ygZAY9mnW7vKNmnW7vKBk
Bj2adbu8o2adbu8oGQGPZp1u7yjZp1u7ygZAY9mnW7vKNmnW7vKBkBj2adbu8o2adbu8oGQGPZp1
u7yjZp1u7ygZAY9mnW7vKNmnW7vKBkBj2adbu8o2adbu8oGQGPZp1u7yjZp1u7ygZAY9mnW7vKNm
nW7vKBkBj2adbu8o2adbu8oGQGPZp1u7yjZp1u7ygZAY9mnW7vKNmnW7vKBkBj2adbu8o2adbu8o
GQGPZp1u7yjZp1u7ygZAY9mnW7vKNmnW7vKBkBj2adbu8o2adbu8oGQGPZp1u7ynqNRFvdfmoFgA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHFkxOdstSjI4nbNkix
tVyot2WvmXqXNfm6DtGFKeJHvekTM8iWe7Kl3J7+sDnTYpNElO5GR5Xsa911W6oqtTd83eHvMVNi
809LK/Zxo9Hsa1VuiJntZVTpTfz9Nug6q00CqxyxRqrFu1cqeqtrXTq3EpR0zY3RpBEjHXzNRiWW
/PdPeBz6PFZaqohYrI2sf6iol82ZG5r/AMO6x1nvRjbuvb3Iq/yISnhZIkjYo2uRuRHI1EVG9V+r
3GYDDyqPt/Td5DlUfb+m7yMwAw8qj7f03eQ5VH2/pu8jMAMPKo+39N3kOVR9v6bvIVEuwpZpbXWN
iut12S5xW+kcslJNNHRo9YoIpXNSW1ldfMl7fpt8wO1yqPt/Td5DlUfb+m7yMwAw8qj7f03eQ5VH
2/pu8jMAMPKo+39N3kOVR9v6bvIzADDyqPt/Td5DlUfb+m7yMwAw8qj7f03eQ5VH2/pu8hUSPigk
fFGsr2tVUYjkTMvVdeY5k2MvjpaGZIbcpYkr96q2Nvq33onaTeB0+VR9v6bvIcqj7f03eRqYhiXI
J6VrmI5kznNc69sqI1Vv799k+Zhw7FZa2WmbJTJE2el2+baXs66IrUT3X5wOjyqPt/Td5DlUfb+m
7yNCDGFqY81PRzvXZ7RLuY1N6Xai79103+43KGoWroaeoc3I6WNr1ai3tdL2uBfKo+39N3kOVR9v
6bvIzADDyqPt/Td5DlUfb+m7yMwAw8qj7f03eQ5VH2/pu8jMAMPKo+39N3kOVR9v6bvI1+WSJiyU
iwWjWFZUlzJvVFRFS3z5zHhOIuxGKRz4tlZUVrVvfKqXRVuBt8pj7f03eQ5TH2/pu8jjQ+kMlQjW
sp4mvWOV7lfLZrMr0al1tzKi38DbXF9jBA6oppWvljdIrW29WyonTZd6uS3x32Bpv8qj7f03eQ5V
H2/pu8jVir5ZK+OlkpHRNfAsuZ70VboqIrbJfr57nQAw8qj7f03eQ5VH2/pu8jMAMPKo+39N3kOV
R9v6bvIzADDyqPt/Td5DlUfb+m7yMxr1Ur4KWSWOLavY1VRmZG5vmvMBXKo+39N3kOVR9v6bvI5s
2MuihoZEhS1SxJJFVVyxt9W+9E63IZsRxPkE9MxY0cybPmcrrZbNunxutk+YG5yqPt/Td5DlUfb+
m7yOZh+KVNXLDtadjI5IElXK9XOYqoi791rLdUTp3BuNLPTulgpnoiRo/PM5rWMul0zWVV/Kt9ye
7nA6fKo+39N3kOVR9v6bvImjmfUUkcssaxPe26sXoNgDDyqPt/Td5DlUfb+m7yMwAw8qj7f03eQ5
VH2/pu8jMAMPKo+39N3kOVR9v6bvIzGhy16Yq6kdBaNIdqkuZPW3oipb5gbPKo+39N3kOVR9v6bv
I08KxF2IwOe+PZORUVGLe6NVLoq39ymlS49PWtayGnYkqwvkVHPVUarXIiJZEut0W+74AdnlUfb+
m7yHKo+39N3kc/8AGmNgp3ugkV00W1ysVFy70S29U35nIn87Fw19RJX7B9OjGKzMt33ez+K25L70
Tf0AbvKo+39N3kOVR9v6bvIzADDyqPt/Td5DlUfb+m7yMwAw8qj7f03eQ5VH2/pu8jMAMPKo+39N
3kOVR9v6bvIisnfTUcs0UW2fGxXIzMjc1vevMaU2MOi5F7HdUNR73Kq2Yi5U57dbkA6HKo+39N3k
OVR9v6bvI0cTxVcOngYsSObK2RVcrrWVqIqJ81Wxhocfjq6hkLmsa/kqTyIkiKrXWRVbbn3IvOB1
OVR9v6bvIcqj7f03eRzW406alkmgop3qyLaWcrWpdWo5Gqt925UX77jo0s3KKSGZW5VkY19r3tdL
ge8qj7f03eQ5VH2/pu8jMAMPKo+39N3kOVR9v6bvIzADDyqPt/Td5DlUfb+m7yMwAw8qj7f03eQ5
VH2/pu8jW5c9MTlpXwWjZDtUkzIubfZUt0E4TiDsQpnSSR7N7Xfk33RFRFS9/coG3yqPt/Td5DlU
fb+m7yOFH6S1E8TNhRZ5nRZ1Y1yuyuzo225Oay3ub0mLxxtgTZvlfLEkns7W3qjUTeqc7nIn8wN/
lUfb+m7yHKo+39N3kasNfLLiK0z6Z0TdikqOc9FVVvZUsnV13OgBh5VH2/pu8hyqPt/Td5GYAYeV
R9v6bvIcqj7f03eRmAGHlUfb+m7yHKo+39N3kZjVr6l9JQzVEUO2fGxXIzMjb2968wGTlUfb+m7y
HKo+39N3kc+fFnRS0jEh9WZrXvet7MRVRE3257qhWKYsuHTQt2SPbJHI66utZWolk+arYDe5VH2/
pu8hyqPt/Td5HMocXkqJHrUU6wxJCkjFsqq/1UV1l5lRL2PfxiSWnfJBSuajGtdnnc1rGKqItlsq
reyou5OmwHS5VH2/pu8hyqPt/Td5HlLK+alikljWJ72ormLztXqM4GHlUfb+m7yPWzMlXK3Mi+9i
p/NDKAAAAAAAAAAAAAAAAAIexsjHMeiOa5LKi9KGu3D6VjJGNpokbIlnojU9ZL338VNsAAAAAAAA
AAAB4qXSy8ymquH0r2RtdAxWxqisS25tkslvkbYA0GYVHvWolkqtKT5XI34WRDM2jp2ozLCxMjcr
bJayXRbcUTgbIA1WYfSsmZKyCNr42bNqonM3qM0cTIomxxNRrGIjWtTmRE6DIAAAAAAAAAMLoIpJ
EkexFeiZUd0ol0W3FE4Gs/CokbamllpUVyuckKomZV67opvgDQfg+HyxrHJSQuavP6vPzL/onAyJ
h9KkeTYNVuRWWXf6q2um/wCCcDbAGvDSwU+zSKJrdm1WNsnMi71TwQ2AAAAAAAAS5qOaqOS6KllQ
oAajsPpnJGjoWWjVFZu/KqJZLfJE4GKPCok/2iSSrt+Xb5XZfhZE6k4HQAGjFhNFBM6WKmYx7kRH
K3de1rfyTgeS4PQVDUSakiciMRiIqcyJzJ8jfAGOKJkETY425WNSyJ1GQAAAAAAAGF0Eb5Ukcxqv
RLI7pte9uKIZgBz3YXG1EbTSzUqXVzkhVERyr13RS1wqiVjmLSxWclls23V5JwN0Aaq4dSKzItPH
lVmS1v07t3gnAx02F0VHOs1NTsjkVLK5qWvutv4G8AAAAAAAAAIc1HsVrkRWuSyovShryUFNJs7x
MvGt2Lb8q2sluCcDbAHPjwuO96iSSrVPyrPldl333WROlE4GZKGmRW2hYitajEVG2VGpbd8NyG0A
NVuHUjZUkbBGj0j2V0T9PUZ2MbHG1jGo1rUsiJzIhYAAAAAAAAAwup4ny7RWNV9kTNbfZFvbiaq4
VG1ESmlmpWoqqrYVREcq9K3RToADSXCaBY3M5LEjXJZbNt1f0pwLdh9K9rmugYqOZkVLfp3bvBOB
tADBFSwQq1Y4mNVjMjVROZvUZwAAAAAAAQ9jZGOY9qOa5LKi8yoWANSSgp5FYqxtzRrdjk52ra10
4JwMTMLi/wD5L5KpU/Ks9nZd6LusidKJwOgANRmG0cTnOZAxqvRGrZOdE5kMU+DYfUb5qSJ9ka1L
pzI3m4HQAERxtijbGxLNalkTqQsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcb0kpaqrw2NtGkqyNqIpHJC9GPyNeiusqra
9rnZAHwFRhHpLPHmnWpc9yJdIJ2MuvsVuu9EvZsiX6/cplqqX0qqo1ibtVidTyMs6RnrXR2TMqKi
o9FyotvfvPuQCPlqSH0k/FKJal9oGJadUyua9bvzLzoqIqZMu5VTmXpPKiPHVSdG8sVy1Cq5Y3xI
ixXdkSO+9FtkzX6lPqwB8bNSeleyztndtnz+sjVYrWtRjcqtRVT1c2a6Kt+YzYtSekE+JK6jdsYd
llzQyt3qjZbfmS/5ljv/AD5z6wAfGPh9Ko5aZkT5HNZMjnSOfGuZq5MyOTdu3vta67re81sPf6TV
bI3QzVGySdEc6Zrc18sd1tuvHfae/eh94C7HzGIp6RfiW1o2Zotg5uybK1GI6z7LmVLqqrk3W3df
Oc2Cj9JGvSSd9Y71FY7LLGjsm2VdyXsj1Yqb/cqXufcgg+TrqfHZUom53pVcjyvfCqIjZNpHnXfu
vkzW+diWUnpBBW7Z9TUOp2TK5WuexUWNJrcyJdfZb+u/vPrgNj5nFavEa/Yyej75XtbdJm2SPms9
v50T82VWbubPfoNOWm9KVjexs0u0dGl3o+NGoio26N7aOz7+a1j7IAfFpQY3TT1MciyPjfWsfSOS
TMqJtUzK/wCLL+610tcxYx6O43iGK1822mSlkVjYo2VCtu3PHm3Xsnqo/ifcngg+GqqH0pqMPqYJ
ZJXbRXNywvYxb5XIio5V/JfLdNym62m9Ipa5GyzSsp1qEWVWuYl2Zn2ydKNy5EW++9z60AfFQ4d6
QVkF691Q18VfTzxsSZqIrEc3aIqtX1mpZbItr9XQdP0dw+voa7EFqldsJH+zzLdz1zPVXrZV50Vq
dHNzJY+iAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADiSYdNLUVuZqtbLG9udsllkvbKm7elrKnzO2AOHPSSyO
o41pldkRueZJEVY1RG/lRV3Xtz9SL1kQ0FSyjmY+BfWVirEj0tJa2e/R61l5/na53wBw6DDqmCsh
fI1LMbvkz39XLZI/ku/qO2t1Tctj0ATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavA
oATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ
2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwF
navAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavA
oATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ
2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwF
navAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavA
oATZ2rwFnavAoATZ2rwFnavAoATZ2rwFnavAoATZ2rwCIqLvdf5FAAAAABzn4tBE+oR7ZbQtc5VR
l82W10aib1tdOIHRBpPxGGPk6qki8ocjWWYu5VS+9eZDFHjMMsT3sjlu3LZqol3ZrZbb7b7pzqgH
SBz6fFoKiZjGI/103OVN2a18vxsb6qiJvWwHoJzt1JxGdupOIFAnO3UnEZ26k4gUCc7dScRnbqTi
BQJzt1JxGdupOIFAnO3UnEZ26k4gUCc7dScRnbqTiBQJzt1JxGdupOIFAnO3UnEZ26k4gUCc7dSc
RnbqTiBQJzt1JxGdupOIFAnO3UnEZ26k4gUCc7dScRnbqTiBQJzt1JxGdupOIFAnO3UnEZ26k4gU
Cc7dScRnbqTiBQJzt1JxGdupOIFAnO3UnEZ26k4gUCc7dScRnbqTiBQJzt1JxGdupOIFAnO3UnEZ
26k4gUCc7dScRnbqTiBQJzt1JxGdupOIFAnO3UnEZ26k4gUCc7dScRnbqTiBQJzt1JxGdupOIFAn
O3UnEwNSRKlz3StWNU3NuBsgnO3UnEZ26k4gUCc7dScRnbqTiBQJzt1JxGdupOIFAnO3UnEZ26k4
gUCc7dScRnbqTiBQJzt1JxGdupOIFAnO3UnEZ26k4gUCc7dScRnbqTiBQJzt1JxGdupOIFAnO3Un
EZ26k4gUCc7dScRnbqTiBQJzt1JxGdupOIFAnO3UnEZ26k4gUCc7dScRnbqTiBQJzt1JxGdupOIF
AnO3UnEZ26k4gUCc7dScRnbqTiBQJzt1JxGdupOIFAnO3UnEZ26k4gUCc7dScQjkXmVFAoAADRTD
IdvNIqvXatc219zc1s1vjZOBvADUWijdFFGquVsLmuZv5sqbjBFhEEMMkcb3t2js7nJZFzIqKi83
RbzudIAc+DCYKeZj41f6ibmq7dmtbN8bG+qIvOh6AJyt0pwGVulOBQAnK3SnAZW6U4FACcrdKcDC
2mVKp0quu1UtlsZxcDzK3SnAZW6U4Hp6BOVulOAyt0pwKAE5W6U4DK3SnAoATlbpTgMrdKcCgBOV
ulOAyt0pwKAE5W6U4DK3SnAoATlbpTgMrdKcCgBOVulOAyt0pwKAE5W6U4DK3SnAoATlbpTgMrdK
cCgBOVulOAyt0pwKAE5W6U4DK3SnAoATlbpTgMrdKcCgBOVulOAyt0pwKAE5W6U4DK3SnAoATlbp
TgMrdKcCgBOVulOAyt0pwKAE5W6U4DK3SnAoATlbpTgMrdKcCgBOVulOAyt0pwKAE5W6U4DK3SnA
oATlbpTgMrdKcCiVcjUu5URPeAyt0pwIR8SyLGitzpzoVtWa28TVZHlrnzK+PIqWTeBt5W6U4DK3
SnA82rNbeJ6ioqXRbp7gGVulOAyt0pwKAE5W6U4DK3SnAoATlbpTgMrdKcCgBOVulOAyt0pwKAE5
W6U4DK3SnAoATlbpTgMrdKcCgBOVulOAyt0pwKAE5W6U4DK3SnAoATlbpTgMrdKcCgBOVulOAyt0
pwKAE5W6U4DK3SnAoATlbpTgMrdKcCgBOVulOAyt0pwKAE5W6U4DK3SnAoATlbpTgMrdKcCgBOVu
lOAyt0pwKAE5W6U4DK3SnAoATlbpTgMrdKcCgBOVulOARqJzIhQAAAAAcN9bVuqK2OGVqPjY9Ua5
l0itbKvWuZFVfkB3Acl9TUpFRPjkbZ8jGypkutlam73dZqUmKVMtDM+SZGq1zUV6tS7EXLmXq9W6
7l3p0jQ+hBw6DEameshZI78zfWjyW9XLdJPmu7qO0qqibkuoFAjM/R4jM/R4gUa9VSQ1sOzqGI9l
72VVTeZcztHiMz9HiCXXWOf+z2Gf3Vved5nLhwWkd6S1EDoLwNgY5G53WRVVd/P7j6TM/R4nIgzf
tVUrslvyZm/N2nGbI3MsuvVn/Z7DP7s3vO8zdp6eKlhbFCxGMbzNToLzP0eIzP0+JdSM2296yAjM
/R4jM/R4lRYIzP0eIzP0eIFgjM/R4jM/R4gWCMz9HiMz9HiBYIzP0eIzP0eIFgjM/R4jM/R4gWCM
z9HiMz9HiBYIzP0eIzP0eIFgjM/R4jM/R4gWCMz9HiMz9HiBYIzP0eIzP0eIFgjM/R4jM/R4gWCM
z9HiMz9HiBYIzP0eIzP0eIFgjM/R4jM/R4gWCMz9HiMz9HiBYIzP0eIzP0eIFgjM/R4jM/R4gWCM
z9HiMz9HiBYIzP0eIzP0eIFmGenhqI8k8TJWXvle1HJf5lZn6PEZn6PEDU/B8O/uFL9JvkcqnoaB
3pJVQLS0isbCyzdk3ct193Od/M5E/L4nzsmN4bR4/Uvc/PK6FjcsSK917uulm338xLqd3ThzPLcx
3XY/B8O/uFL9FvkbMUMcETY4WNYxvM1qWRPkcb9q4b2TDcUy6uSrYuL0qwyV+zfOtPIv6ahqxL/1
JYkynmt4XE11ldwGJku0bmYiOau9FRyKilZn6PE05LBGZ+jxGZ+jxAsEZn6PEZn6PECwRmfo8Rmf
o8QLBGZ+jxGZ+jxAsEZn6PEZn6PECwRmfo8Rmfo8QLBGZ+jxGZ+jxAsEZn6PEZn6PECwRmfo8Rmf
o8QLBGZ+jxGZ+jxAsEZn6PEZn6PECwRmfo8Rmfo8QLBGZ+jxGZ+jxAsEZn6PEZn6PECwRmfo8Rmf
o8QLBGZ+jxGZ+jxAsEZn6PEZn6PECwRmfo8T1Fcq722T4gUAAAAAAAAAAAAAAACTnRf+ZKn/ANtH
/wBzzoocuORiek88auaj3Usao2+9URz7/wAyVrDx+TrA8PSsgAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAHgHhpYlidPhVKs1Q/cq5Wtal3Pd0I1OlTzE8Vhwql20qOc5VRkcb
N7pHLzNROs5dLRyRSfi+MMfNVrujhiYsiU7V6GonT1uJcvCOmGE1zZdvy8ZQ1+Pevijn0tJzto4n
Wc5P/Ucn/ahs4bh8OH41UR00ccUKU8dmMbZOd3kbH43D0U9d/lJPI1YsUY3FZ5nUtdkfExqLySTe
qK6/R70JJJ1buWVlnaeTuWTqMc8EVRGrJomSMXna5qKniaP43F/dq7/KSeRu08yVELZGte3N0PYr
XJ8UXehdyuOrOrjv9GmU7llweplw+Xnyxrmid8WLu4WPG47U4a5Isep0haq2bVw3dC749LPnu953
kIdG2Rqte1HI5LKipdFJy67dHT2u+mc3+fq8jlZLGj2ORzXb0c3eimQ+flwarwmR0+AuRI1W76J6
+zd/Av6F8DewzGqfEc0VnQ1Uf7ynlSz2fLpT3puEy8KmXD6c2N3PvPm6gPAac3oAAAAAAAAAAAAA
AAPAYKmSaGLNBDtn3/LmRu74qavLMQ/w1P8AMN8ibWTboXFzjR1lf+ISsSgcrmsa5WrUNtZbonR2
VNrleIf4an+Yb5F2vJf7Y6IMULnvha6WPZvVN7c17fMyhkAAAAAAAAB4APQeAD0AAAAAAAAw7eLM
9u1ZmjS70zJdqda9RmONJhDpZalJEidDKyRGot1zK+y+t7ky+IHVWRiI1Ve1Eduat+f4GJlbTSRv
kZUQuZH+dzXoqN+K9BqPw3aR0iK2LaU0jHZlS97IiLbqU8dh8nJ32SN07pdqrlVURVRyKjebmsiJ
8ukDfSeJ0iMbKxXq3OjUcl1b1/AzHGpMJmpqmFznRuZH6yql811bly/w9P8AoddUulrqnwAoEbPt
u4jZ9t3ECwRs+27iNn23cQPT57EMKjxLHZkVzop4qeN0MzFs+N2Z+9Pd1p0nfydp3E50Tf8A6jqP
Wd/ssfT2nmbN9K3hbjbY1aLF5qWpZh+NtbHO7dFUN3Rz/DS73cDuoatZh9PiFK+nqo0kiem9rv5+
5Ti7Ws9G1tVulq8LTc2dN8kCdT0/U3tc/WTdnfs3y48T3el8vP5ej6U9NeCSOoibLDLnjcl2ua66
Khk2fbdxNuNmmQEbPtu4jZ9t3ECwRs+27iNn23cQLBGz7buI2fbdxAsEbPtu4jZ9t3ECwRs+27iN
n23cQLBGz7buI2fbdxAsEbPtu4jZ9t3ECwRs+27iNn23cQLBGz7buI2fbdxAsEbPtu4jZ9t3ECwR
s+27iNn23cQLBGz7buI2fbdxAsEbPtu4jZ9t3ECwRs+27iNn23cQLBGz7buI2fbdxAsEbPtu4jZ9
t3ECwRs+27iNn23cQLBGz7buI2fbdxA95jWrayDD6OSpqHIyKNMzlUyqiJvV62+J8/TsX0kxJKl2
ZcLpX+xavNPIn6/4U6Otd5nK66Tu6cPGX/a9p39GbCaKaurExfEmK2RUtTU7v9wxele2vT1cx3+Y
jZ2/U7iNn2ncSyajOeVyqzXZWRPq3UyL7RqXUzbPtu4mNKaNsqypdHruV1yssx6Rs+27iNn23cQL
BGz7buI2fbdxAo5mJ4LTYkjXuzxVEe+KeJcsjF9y9XuXcdDZ9t3EZO27iSyXpVxtxu5XCixepwiV
tPjqNyOXLHWsS0b+pHp+hfA7qORzbtVFRd6W6SJII5o3MlTOxyWc129FT4HDXCq7A3Z8Ges1Lzuo
pX83/wBty83wXcZ64/GOv+vE+F+19H0KfA9OVhuNUuIudG174qhn7yCX1ZGfLp+KbjpZL8z3cTUs
vVyuOWN1ZpkBq1Ui09O6Rudyp0c5cK7WFj1VyK5L2uVGcGPJ23cT3Z9t3ECwRs+27iNn23cQKBq1
NVT0cSyVNS2Fifqe9Gp4nJ/aaGa7cOgq653XCyzO+6yEtk7t48PLLtHfRQqnARPSKs5kpMPYvWqz
yJ/JpX7OPnutfitfUqvO1smyZwbb+ZOa3tGvZye9lP26/wAfd15qunp23nnijTtuRP5mlJ6SYPEq
o/EqVFTn9o0xxeimDQ720MTnapPXXi65uswykiS0dNC1PdG1P9B1P0p537eri03pDhrscqZPxGl2
ToWNb7REuqK7d4+J3Ya2lqE9hURSfwPRf5HIho6ST0jq4308aokLNytRU516LGxL6L4PPvkw+C/W
1uVeKWJOZcvZXzn0vo61/gLnD/Zani30dZX0q9Uc6qnB10POQ4/S/uMTgqm6amHKveb5F3fGM8mN
93L69PV3gfPuxbFKX/bsImVvS+klSRO6tlM1P6SYXUPSPlixS/8ADnasTuDkQc0Lwc5Nyb+XV2wY
mo1zbtkVUXmVFK2fbdxNOawRs+27iNn23cQNOTCqaWV0jttdy3W0z0TgimlimGQQYXUyxOqGvZG5
zVSok3Lb4nY2fadxNLGm2war9Z37l3T7iWTTeOV3JsTBqWyfv/8AMSf1GSHDYKeXaR7XMm71pnuT
gq2NhGeqnru5us9ydt3EaiXK+bICNn23cRs+27iVlYI2fbdxCMst8zl+KgWAAAAAAAAAAAAA8AMN
RO6CLOkMkq3tljsq+KoDuzHKh2n7T1N7ZOSx/wDc77mX8Uf/AIdW9xv9RpsqZm4xNUrh9Xs3QMjT
1W3ujnKv6vehm1vGXq7h4qI5FRUuimh+KP8A8Pre43+o24JFlha9Y3xqv6X2RU+Ni7Z1Y4kuFVWE
TOqsCRFjcuaWhctmP61Yv6XeCm9heMU+KsdsVcyZi2lhkTK+NepU/wBToqcvE8Eir5GzxOfS1rE9
Spi3OT3LqT3KTVnZ055n0z7+fq6oOBS47NRzspMbY2CVy5Y6hv7qb5/pX3Kd9FRSyysZYXHu9ABW
QAAAAAAAAAAAAAAAGOSVkLc0j2sbzXctkMXL6b+8Q/UQySwxzsySxtkb1ORFQw/htH/dKf6TfInV
ZrxVy+m/vEPfQcvpv7xD9RDmx0FL+0M7eTQW5LGttmmt50Ew2j/utP8ASb5CWrZI2I3tkYjmOa5q
8ytW6KWRHGyFiMja1jU5mtSyIWVkAAAAAAAAAAAAAAAB4B0HLxvE1w6lakTNpVTO2cEWt6/6Jzr7
iW6m6uONyuo0sXnkxSu/BaNytarUdWStX8ka/pRdTv5Hbp4I6aBkMLUZGxqNa1OZEQ0sEwtMNo8r
3bSolcsk8q873rzr8OhPcdK2/eMZ41viZT3ce0+981AArmAAAAAAAAAADwHoA5uIYNR4oxFqIfat
/JKxcr2fByb0OLJgddRvc9sdPikardUmTZy95NzvmiH1XMaMtXVMlc2PD5pGotkckkaI7371uZyx
l6uuHFyxnL3nxfLYpVYYmFVLJcKqKGpWNcqvhVW5vc9t0+Zu01f6K7FiOmosyIl7rbf8zaxypq5M
GqY/wyZFkYrEVZI91/gpmpp5paOJXYM9UVic74/9VM9f7HXmxs6y/WNaLF/RiklSSCqpWyJuRWLd
d/wNj9q6J+6lirKlf/Spnr4qiIbdM6R02V+HOhbb86ujVE4Lc6G7qQsl/sc7lhvtb+/8OH+KYzUp
/ZMH2KL+uqmRv/S26j8LxisT+24ssLV546ONGf8AU66ncsel151Pa692Sff8uPTejOG08m1fBt5v
+JO5ZHcXHWa1GoiIiWTmRD1Pielkk7MZZ5Zdbdh6AVlr1NO6phyNnmh6c8SojvFFNP8AB3/4nX/U
b/SdME0stnZx2+j6NqHztxCvSR6I1zto3eic36TL+Dyf4nX/AFG/0nTA6Lz1ip41hgbGsj5Fals8
iorl+NjKegrLzoNeqoqesjyVMEUrOqRiOTxNgAlsu44TvRalh9bDp6mgd1QSLl7q3Q8y+kFCu51L
iUadabGT/Vv8ju/MKY5J4dHX22V97r8/Xu4bfSimidkxKnqKB/XOz1Pk9LodaCphqYkfTyxysXmc
xyOTwMj2NkaqOajkXnRUuhyJ/RjD3yLNTMko51/3tK9Y1+aJuX5oP9p8TfDy85947CLuNDHG7TBK
xFVUtE5d3wNHZY9h6+xmhxKJP0TJspe8m5fmiGviPpHC7DamnrqaooZ3xOa1s7fVctuZHpdFLcpr
r0XHhW2XHr8vTu+kiZs4mtRVVEREupkPE/Kh6acQAAAAAAAA5cuK5H1Fqd70ja9zMrku9W2RyWXm
508TqGolBTpJK/Z+tKitet13ovPu6L+4DHJiORtK/YSKlQ9rb3SzLpe6/wAjBDjHKKR8rIXZlc1r
Gq6181st7puvfqX5m/yWFWMYrLtjcjmoqruVOYwfhtKkb40jXK/n9d3y333Wtu6ugDDS4ulTPE1I
layT1cyrzPRLqluq3SdNXI1LrzGrFh9NFO2SOJGua3Ki3Xcnw5r+/nNsCNqzUNqzUWAI2rNQ2rNR
YAjas1EJVQrKsaPTOnQZjGkLEkWRGpnXpA92rNQ2rNRYAjas1Das1FgDVqoaasgdDUMZJG9LOa5L
opwuTV2ALegV9dQJz0z3XliTsOX8ydlT6ULzc5m47bx4lx6d55NHD8WpMUiWSmlRcu57F3PYvU5v
Oim5tGajmYhgUNZMlVTvfSVrUs2oh3O+Dk5nJ7lNRmNVWFOSLHocsfMlZCirEv8AEnOxfAc1ndr2
cy68P6eP8u9tGagkjNR5DNHPE18T2vY5Ltc1bovzNeTFaCF7o5a2mZI3c5rpWoqfFLmtuer2bO1Z
1jas1GjJjuGRsVy11KtuhJm+Z6zHMNe1FSvpUv1zN8ybhy3ybu0ZqPdqzUa0OJ0VTJs4Kynkk6Gs
la5V+SKbZU1runas1Das1FgCNqzUNqzUWQ57WNVznI1E51VbIgHm1b1jaM1HIm9KMNjkWOCV1XMm
7Z0rFkXw3JxMf4ljVV/smEtgavM+rmRF7rbr4meaeDpOFl3s18+jt7RnWNqzUcVKHH5t8uK08F/0
w0+bxcp6mC4mv5sfq1X3Rxp/8Ru+S+zx8cp9/RlhRE9J6l+056WPd/zP8jqbVvWfKx0OMQ47NHDi
qSPbTsVXTwtXMmZ1ks21t99/vN/8SxmhT+24Y2pjTnlo33VP+R2/gqkl13i5cLfu5S/b86draN6V
Pdoy3OaWG4zRYmipTTo57fzRuRWvb8WrvQ6BqWXrHK43G6s1U7VmobVmosFRG1ZqG1ZqLAEbVmob
VmosARtWahtWaiwBG1ZqG1ZqLAEbVmobVmos8AwT1UNNA+aZ7WRxtVznLzIiHFweN+JVbsarWq1X
pkpInJ+6i617TudfdZCKl37RYotGzfh1I9FqHJzTSJvSP3onOvv3H0TUytshnvd+Dtf08deN+0/l
5tWaj3as1Fg04o2rNQ2rNRYAjas1Das1FgCNqzUNqzUWAI2rNQ2rNRYAjas1Das1FgCNqzUNqzUW
AI2rNQ2rNRYA1K2oZFTOcqI/3KlzJBOySBjtzbpeydBkexr2q1yIqL0KeoiNRERLInQB5tWahtWa
iwBG1ZqG1ZqLAEbVmobVmosARtWahtWaiwBG1ZqG1ZqLAEbVmobVmosARtWahtWaiwBG1ZqG1ZqL
AEbVmobVmosARtWajzas1GQAY9ozUc7Hla/A6tEVP3arvQ6hzsdaj8Eq0W+6Jy7vgS9msfejbiei
QsR70c5ES69Zk2rNR5ExI4mtS9kS28yFZRtWahtWaiwBG1ZqPUe1y2Rd5QAAAAAAAAAAAAAAAAAG
u2nVtU6bOqoqWymwAAAAAAAAABLmo5qtciKi7lRekoAcCX0fWkldNgtQtDI5buhtmhf8WdHxSxiX
GFoXWx3Ddhv31MbdrE73qqJdvzQ+iJVqKm9L36zPLrs6zi76Zzf5+rk18tBU4DWS02wmasD7OjRr
v0r1G9TQU8lPG5II0u1F3sQ42O+jtA/D6qohp0gqGxOcskKqzNZLqi23L8y6fBcShp2JBjlSnqpu
kjY9PFLk3Zesa5cLOmWvn/G3dZBEx2ZkTGr1o1EMlzh/heOb74635UbfM8XAq2Vf7Tjlc5OlI8ka
eCXLu+TPJj45T7+jrzVEVPGr5pWRsTnc5yInicmT0poFcsdHtq6VP00savT5u5k4lRei2FxuSSSn
WpkTfnqHulX/AKlsdaKJkTEZGxrWpzIiWRB1vwP0sfO/b1cVZsfxD93FT4bEv6pV2snBPVTip630
Xp5nZ8SqKjEJOe07/UT4MSyHcTmCDlnj1PbZT3eny9e7FT00NNGkcEUcTE5msajU8DMAacrd9aAw
1EzoY8zYZJV0x2v4qhrficv+HVnBn9RNklrDFG1PSepfvutLH/3P8jqnDZUztxiWpXDqvI+Bkabm
XujnKv6u0hu/icv+G1nBn9QlbsqMQwWixNWvniVJ2/knjXJI34OTeaCVGKYH/tiOxCi/40bfbRp2
mp+ZPem/3Hbge6SFr3MexV/S+10+NjLa4s8YuPEsmsusatFXwYjTNnpJWyxO5nNX+fUptJz7zi12
AKtQ6twqbkdau9ytS7Jfc9vT8ecUePf2hKPFYuR1i/lRVuyb3sd0/DnJza6Vbw5ZzYdfh4x3AeJz
HppyAAAAMU7pGRKsTczuoDKDHGrnRtV6ZXKm9OosDw4mM4hNJMzCsOdasnS7pE38nj6Xr7+hE6zP
jGK/h0bI4I9vW1C5IIUX8y9a9TU51UYLhX4bC980m2rJ3Z55lT8zupOpqcyIZt3dR1wxmM58v2nn
8flGzQUEOG0cdNTtyxsSyda9ar1qpuAGpHK227r0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAeGhjX/AILWf/Zd/ImXF44ZXxupq1ytW2ZlM9yL8FRN5p4nirajDKmKKjr1fJG5
rU5M9N6p8CWzTeON3K7jfyp8D05iY5HZP7JX/wCVf5GSnxNlTPsmU9WxbKuaWBzG8VQbjNxsdAAF
QAAAAADiStrZKisaySojVWPs5G3RObJkvuvbNe3z6DtgDkvSqdFROZJKjmyM2zUbzplS91tzGtBy
tmHytfJUvXMiuejHtc5Lpnsi3VLJe1ufoO+AOHQurlrIOUbfm9bMi5MmXdfozZre87S3t6tr+8oA
R7Tsj2nZLAEe07I9p2SwBHtOyYkqc1QsKWzIhsE5W5s1kzL02A89p2R7TslgCPadke07JYAj2nZH
tOyWAI9p2R7TslgDH7TsmnL+JbR2z5Js7+rmzXt7zoHgJdONXRYtPQzw/wBj9oxWLbPdLpYyxfi6
RNRUokVETd651ANNc3hppU/4jtE5RyXZ9OTNfxNr2nZLPQzeqPadke07JYAj2nZHtOyWAI9p2R7T
slgCPadke07JYAj2nZHtOyWAI9p2R7TslgDH6/ZNatoIcRp3QVUUcsbudrk5venUvvNwDustl3Hz
iMxXAE9ntMSoE/Sq3niT3L+tPE6lDilNilPtKSZkjU3OTejmr1KnOim6py8QwGnrZuURLJS1ic1R
AuV3z6HJ7lM6s7OvNhn73S+c/wDsdNM9v0i7/ccLl+MYYlq6lSug/wCPSpZ6J741/wBFNum9IsLr
FyMq42y9Mcvs3p8nWUTKeLN4OUm51nnP7+WaTEmxvcx0VQqtWyq2nkcnyVE3kSYzBFG6SSOpYxqX
c51NIiIndOgj2uTcqW+JyvSKqp4cGqklmjaro1RqK9EVVsW9OqYzd1pmTF4lS+yqlReZUpZf6TTr
vSOGlyxQxTy1cn7mBYXsWRfiqbk61NeHGarEII4MDpnPajUR1VUIrY2fDpevw3HRwzBI8PV8z5H1
NZJ+9qJPzO9yaW+5DO7ezpyY4dc518vXyYMJwiWnlfW1z2S18yeu9L5Y29DGdSJ4nY9fslg1Jqaj
lllcrup9p2R7TslgrKPadke07JYAj2nZHtOyWAI9p2R7TslgCPadke07JYAj2nZHtOyWAI9p2R7T
slgCPadke07JYAj2nZHtOyWAI9p2R7TslgCPadke07JYAj2nZHtOyWAI9p2R7TslgCPadke07JYA
j2nZHtOyWAI9p2R7TslgCPadke07JYAj2nZHtOyWAI9p2R7TslgCPadke07JYAx+07Is/smQAY/a
dke07JkAEe07I9p2SwBHtOyG57+tlt7iwAAAAA0JMVpYXTpJIrUharnOVq2W1r267XTm6wN8Gm/E
KeNYEWTfO5GxpZVVVVL/AC3dZ4uJU2SVzZM2yfs3I1FVVdu3InSu9OIG6DSixKnqJmRxucqvbdFy
qic17X67b7G6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADw9AHnQatXh1JWttVU
0Myf+oxHfzNoDW1lsvRwXei+Ao5U5Oxipzo2VzfBFNTFMFwqiwiqloqSm2yRr6zlRXIlt6oq33ne
fhtHI9z5KSne9VurnRtVVXgY5cGoZY1ZyOnbfpSJvkY5fhHX2uV75X6qoqhq0UG1fG2TImZEcm5b
Gy2aN62bI1V6kVFNWPB6CONreR0y2S11ibv8DLFh9JBJtIqaBjk5nMjRF4murldNoAFQAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA56YYxZ55FkeqStc1G
7vUzWzKnxsnOdAAaa0TVhhiV7ssLmubzfpTmNePBo4IZYoJ5mpI9JEzOz5HJa1r/AMJ1ABzafCWU
08b2yvVrN6MW1lfayu4dBvvjbI3K9LoWANfkcOle8o5HDpXvKbAA1+Rw6V7yjkcOle8psADUkggi
Y6R6Wa1Fcq5l3IhqOr8JbEsrp2NYjGSKqucnqvvlX52U6E8W3p5YlW20Yrb9V0scqL0fjipqiHlD
nJLE2JFVqeqiKtrcbAdPkcOle8o5HDpXvKbAA1+Rw6V7yjkcOle8psADX5HDpXvKORw6V7ymwANf
kcOle8o5HDpXvKbAA1JoqWnhfLMqMjYl3Oc9URE4mB09A2GGTNdlRZYlbmXMi8y7ujem/wB5vvaj
2OavMqWOVLgqSwUkSypelajGvVnrWsl1Rb7nXam/oA2puRwSwxyrlfMqtjRXL6yoiqvgimKmqcOr
JI46eVsj5Ikma1HLdWLazvEx1FBUYm+NaprKZYVVWLFJtFW6WXnalt38zNS4WlLydYpd8ECwpdvO
iq1b/wDT4geufh7Gq508SNRquVdr0Jzrz8yGSCOmqYI5ofXjkaj2ORy70VLopqUeDto5I9m9ro2x
NjVrokuqolrovRz70N+jp+S0UFOjldso2szKlr2S1wHI4dK95RyOHSveU2ABr8jh0r3lHI4dK95T
YAGvyOHSveUcjh0r3lNgAaKLRLWLSI9q1CM2ixo9bo29rnlMtJVI50OZyNXKq+snC/OnvQyOpc1c
2pa9Ec2NY7Zb3urVv4eJpUuH1GFRuZRxwzNct7OdskaiJZNyI66r0ruuB7y7DFja5JUcj0crUTMq
uyuRq2TnX1lRLGwx1C+JkiSNRkiKrVc9Uuic/P1HOb6OyQtV1NWuilyua12zRcqOVFdbenUu/wB5
syYMk0UbJJGIscLom5IrIl1at7Kq9LevfcDNHJQSVCU8UrHyrHtUa16r6l7X5+bebPI4dK95TBT0
Gxmhmc9qvjidGqMYjGrmVFvbo5jfA1+Rw6V7yjkcOle8psADX5HDpXvKORw6V7ymwANfkcOle8pj
njpKaB806pHExMznOeqIicTcMcsaSxPjXmcipzAaLpqFjYH5ly1FljVMy5kW2/dzJvTevWZJlo6a
WKOZ2R8ubIiuX1rJdfA1ZcFSSOkbtW3pWo1rlZ61ky8y33Ldqb+pVQVNBU4nLG6qaymWG+RYpNpe
/PztS25LfMDJT1eH1UjGwSZ1exHtVMyIqKiLuXmvZUW3PvKklw+KPM6Vipa6I16uVUvbcib137tx
ho8ImpJWqtU2SOOJIomrDZY0RERbLmtvt1dXUYkwKSGFGUVWkSpEyPOsKOcitREui3S106ulb3A6
UEdNUwtliTMx6XRbqXyOHSveUUkC09LHF6nqNt6jcqcLr/M2ANfkcOle8o5HDpXvKbAA1+Rw6V7y
jkcOle8psADX5HDpXvKYUdRLVupEe1ahrNo6NHrdG3tdTeNN9HmxDlKPs7ZLErbc6KqLfwsBFNyS
rY50N3NauVV9ZOF+dPea6V+GPY10cqvzsV7UYj3K5EdlWyJvXetiaOhqcJiWOkjhmYq70c9YkaiI
iJZER11tzruupjgwBaW6w1PrLG6NEfHdqI5UVUsip0ovSnOBvotCsTJNo1GSNztVZFS6Wvfn6jHH
PQS1GwifmkXellcqLuRdzuZVsqLa/SYH4GjoYmLNdYYtkxVjRbb2rdd/NdvN1LYyUmGz09Ys09RH
KxGZWMbDk2fXlstt6+6/NvA3eRw6V7yjkcOle8psADX5HDpXvKORw6V7ymwANfkcOle8o5HDpXvK
bAA06hlJSQPnqFSOKNMznueqIiGJ8tExYLuVUnts7Zlui9O7mTem9es3J4kmp5Il3Z2q29r2uc2f
BtryVdqiupkRrVyetZMq7lv6qqrefqVUA2J3UVLJHHO5GPkRzmoqu3o1LrwQ8hloJ3xtika50kST
NRHLdWLzO+BrVOHT4o+N1WjKZYbo3ZP2mZFte90S25LfMU2ApSzpKyqmVdgkCtciK21kS6Jzpzdf
SBsSTYdFG6R88SMYxZHLteZqbr8/MZo4KeaJskaZmORHNXMu9FNKnwRKZFYyVisWFI1RYkzXRqNu
i9Cbr26+k6VNDsKWKFHZkjYjL9dksBPI4dK95RyOHSveU2ABr8jh0r3lHI4dK95TYAGvyOHSveUc
jh0r3lNgAaDXUT6p9Kj2rPGxHvYj1u1q8yqe03JKuNZILuai2uuZP5/zPX0SPrXVCPsrotkrbc6X
uq/HoNOioanCotlTRwTMcqKt3rEjbIiJZqI7fZLqt96gepiOFOibI2fM1zNo3LnVVbmy3RE38+42
V5G1jXPc1iObnRHvVFtzqtlOcz0ZZExW7VstmIxrZoUexN7V3tvv3oq/P3GeTBUkay813RxJExXM
vzOa66796XbzdShWzFJQzVSwRSMfKjEkVrXqtmrzL8zY5HDpXvKYaeg2NQydXtVzYdkqNYjUXfe9
uj4G8Ea/I4dK95RyOHSveU2ABr8jh0r3lHI4dK95TYAGvyOHSveUxVKUdHTST1LkihjTM57nqiIh
umCphSppZYVWySMVt7XtdOcDWfJRxvha5VzTfkRMy39+7mT3qeVElDSSNZO9GOexz2oqu3tal3L8
kUwz4PtZaaRHpnp2ojVVm9USy2Rb+qqqm9bcyqhFVhtRirmOq0ZTLEitakT9pmR1r3uiW3Jb5gbF
PNQ1b3NhVz7NR6rZ6NsqIqb+bmVNwlnw6JuZ0rHbkVEY5XuVFWyWRLqu/qMNPgaU6vyPjTNFslc2
FGuduRFVy39bm3dXvMX4JLHG5lJVsg9VrcyQIrks1GrZbpZFRvRzKq7wOlDFTTwsli9Zj0zNcjl3
oXyOHSveU9gi2FMyJMvqNRvqNyp8k32M4GvyOHSveUplPHG7MxqovxUzAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD//2Q==

--_008_1FFB62CE8AEB0D4298B51122D8903E961B68C69BIRSMSX104gercor_
Content-Type: image/jpeg; name="image004.jpg"
Content-Description: image004.jpg
Content-Disposition: inline; filename="image004.jpg"; size=23590;
	creation-date="Wed, 09 Apr 2014 12:56:43 GMT";
	modification-date="Wed, 09 Apr 2014 12:56:43 GMT"
Content-ID: <image004.jpg@01CF5408.F190E470>
Content-Transfer-Encoding: base64

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
AAAAAAAAAAAAAAAAAAHPu6bltC2knLC4dx0Dw9AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
B4egDw5+y/v33/Ey/KJ0Dn7M+/ff8TL8ok7rOldEAFQAAAAAAAAOZdxuntGj6n1qp7t8X7K3vVqX
v3YwdMAcOtC7pbOjSl2yrU9ZJaovelqliTaw3uxuXgI09of0xZuMuLSba9qWZYceHs6e7G87gA4l
pC+7XSc1XVPfjXLKVP2sKW/733PHx7zsvOPZxnxKAEYnxj0GJ8Y9CwBGJ8Y9BifGPQo1bivXpNKj
azrJ97jOMcdWCTbP7XFdB7XFdDSlfXcYuUtnVUkst+th+pgsts1b+2jXttn1pU5ZSbqQXd+I2vBf
7XVxPjHoMT4x6GpRu7mdSMZ2NSnF98nUg0ujN33BLNJxPjHoeYlxXQruW9nKuvSHZ1rV9U6/ra/w
qKdSfSOfMlsnVcccsrqTbp4lxXQe1xXQ4v2jti8X9C2ZG2g+6reTw/4I5fVo8exL66WdobXrtPvp
20VRj9MrMn1JvfSOns5Pesnr9nTub2hZQ1XVzQox41JKP5s5z9KrCXs20q13Lhb0Jz8+7zM9v6N7
Ltpa4WVOVT4lT25dZZZ04wjFYikkvcOdN+HPO+n5cVbZ2nVWbfYdw17nWqQp+WWzBe3+3FY3Ep7M
tadP1by5XWWljwifRmptSOvZd1HGc0pbvwGr5k8THfLGev5cWw2ntdWFvJbHhUperjiVO6jlpLg0
jYXpKqS/pthfWvGUqLnFfjFs6OyY6dk2ixj9lHd+Bt4Q1e1W+Jjbzx+lv87aFntiy2hlWl5Qqy5Y
vevw7zd9vw6Gle7F2ftDfdWlKpJd09OJL6SW80vse/st+y9pVNC7qF2vWw+il95dWN3vE4cMul18
/wAx2sSx7ugxLHuOJ/pBWsXp2zY1bdL/AF9L9pS+ra3x/FHXtruheUVVtqsKtOXdKDTRZlKxl4dx
565ejLifGPQYnxj0LBWUYnxj0GJ8Y9CwBGJ8Y9BifGPQsARifGPQYnxj0LAEYnxj0GJ8Y9CwBGJ8
Y9BifGPQsARifGPQYnxj0LAEYnxj0GJ8Y9CwBGJ8Y9BifGPQsARifGPQYnxj0LAEYnxj0GJ8Y9Cw
BGJ8Y9BifGPQs8Ahxm01qSz70jS+za3/ALhd9Y/9p0AFls6OJcW1xSvrSlHaF1pquerfH3Ryv3Tb
+za3/uF31j/2mHaFd09s7NgoOSk571/hwdb3E01bdRgo0KlGlodaVR5zqqb35YMuJ8Y9Cj0rCMT4
x6DE+MehYAjE+MegxPjHoWAIxPjHoMT4x6FgCMT4x6DE+MehYAjE+MegxPjHoWAIxPjHoMT4x6Fg
CMT4x6DE+MehYAjE+MegxPjHoWAIxPjHoMT4x6FgCMT4x6DE+MehELiE60qUW9Ue/cZgIxPjHoMT
4x6FgCMT4x6DE+MehYAjE+MegxPjHoWAIxPjHoMT4x6FgCMT4roaGzNWu+w1/aZe7widE5+zPv33
/Ey/KJO6zpW9ifGPQYnxj0LBURifGPQYnxj0LAELVne448EWAAAAAAAAAAAAAAADw9AGOUdcHF9z
WDmejdONLYdBL3uT/wAzOpJZTSeM+8+W2RszaN7s6kq20JUbTMtMLdaZyWp/em96/Azbq8nTHGWX
d07d/tmx2ZuurmEKj+7TXtTl9IrezS+0tq7QWNnbP9RT91a99npBb+uDdsNjWWzMu1t4Qm/vVH7U
5fWT3s30NW9V4sMfdm/n+HDXo/O79ra9/Xu0++lB+qpfwx3v8WdO0sLWwpaLOhTow4Qilk2fcPd3
lmMjN8TKzW+Xo9PQCsAAA07i3uatTVRvJUo4+6qcZebNeps67qU5QltGpiScX+yh3P8AA6YJpZdO
ZS2dd0aUKcdpVMQiorNKHcvwNi3trmlU1VryVWGPuOnGPmjbA0W2vQAVEtJ+449z6OWtWs7izlOx
uXv9bbvTn/FHul+KOyCWS9WscssbuVwe17Z2Yv6ZbRv6C/11stNRLxpvv/B/gb2z9sWW001bXEZT
j96m/ZnH6xe9G/3o5+0Ni2W0sSuKCdWP3asXpnH6SW8as6N8eGXvTXxn4dAfQ4SsttbN/sd5C9or
/VXe6a+lRd/4omHpXb0pTp7TtrmxqU37TqU3Kn+E47mTik68j2OWXuc/l1+jv44j6HHh6V7HnRdW
F5qprvkqcml5Gb7fsPiVf+hU/wC0vFPNi+HnOVldMGpabSt72Uo0JTk4rL1U5R/NI2ys2WdXoAAA
AAAAABguJVoqPqYp5e/IGcAAADwDxPcM4RoX+2LLZiSubiEJy+7TXtSl9IrezQ+0NrbS3bPsla0n
/rrzc/qqa39WiXKTk3j4WVm+k867uUott4wcm49JNmUKjpq5Vaqv9XQi6sukcmJejcbh6tq3dxfy
79EpaKS/5I/zydW2sre0pKnbUKdKC/dhFRXkTnfguvDx6235cnMW2Np3H9k2JX081xUjS8t7PHU9
I6m9UNm0vCVSc35JHbSPRq96e0nbGer5i6lt6N/aOUNn1J5noSc4r7u/L3m29rbUtl/S9jVJR98r
arGp/leGbl7/AOa7P+tT/wCJviS9q1fEmpvGermWe3tn30/U0bhQr++jVTpzX/K8M6aNO92ZZ7Rp
6Ly2p1Y+7XHLX0fejnPZW0dlrOybt1qS/wDTXcnJY4Rn3r8cjdnVOHDL3bq/H8u8Dj2fpBRrXCtb
ynOyu33Uq25S/wAMu6X4HXXgyyy9HPLG43VigAVAAAADA6lXtKh6v9njOoDOAAAAAAAAAAPDzJjr
0IXFF06ik4vv0ycX1W81fsa04Vf+vU/7icya7txRSk5JJN97x3lHFt9m0J7TvKUvXOFONNxXr57s
p59/gbf2NacKv/Xqf9w3WrMZ3dEExioxUV3JYRRWQAAAAAAPABzdkQ0VL/2m83Mu/wCiOkc7ZUlK
d9hp4uZfkgs6V0gAEAAAAAAAAADl3lzXpbSoUab9mWPZ0ZU8t6nn3aVh/iB1AcZ3N8tk1JqpT7TC
Us/snvSm1uWeC3E9tul279pGbg36tRWVBb8LGE9WFn3gdsHDtL+6q3tGnKTlCWUvYx6yHtftM43d
0f4jtNtLcssCgRqnyeY1T5PMCzwnVPk8zUuY30pRdrVoU4pe0qlNzbf4NBZNtx9xzfR//wAlof8A
N/8AJk1YbXp0pz7VZvTFvHZ5f95obDhtOWzIKjc2yjBuK1UG3355vEndrU1eb6QHOo09qKtF1ri2
nTX3oxouLf0epm/qnyeZWLNLBGqfJ5jVPk8wLBGqfJ5jVPk8wLBGqfJ5jVPk8wLBGqfJ5jVPk8wL
BGqfJ5jVPk8wLBGqfJ5jVPk8wLBGqfJ5jVPk8wLBGqfJ5jVPk8wKNCtG/dSSpq0dL3a9WceJu6p8
nmeap8nmFl0+Y2j6Ly2jSkuz2FCrL/WU1NPyxkqnsPbls49k2uqcEsaKqdVee/zPpcz5PMap8vmZ
4I6z/kZ611+fP7uLGfpHbL26dheJckpUpPrlHr2/cUd17si+o475U4qtHrF58js6p8vmeOUuXzHD
e1T2kvXGfb/Tl0/SnZE5KM72FKfLWTptfxJHRoXdvcxzQr0qq4wmn+QqUoVo6atCMo8JYaOdW9Gt
k1nqns2gpP3wWh9Vgcz/AKr5z6X8OumuKH4HD/0Yt4P+jV7+3XCndSx0eT1bFvqf9Ttu9iuE1Tn+
cRu+RwYXpl9Z/wDXcBw+wbdi/Y2xTkv9pax/k0Oy+kSW7aFjJ+NvJf8A2G75Hsp+qev4bzsbhybW
0blJvOFGnu/ynP2rUuNnRtn9o3D9bWjB5hT7vf8AulK29Ifff2C+lvL/ALjS2ls/a9RW/aNpUJL1
8FFQtV7Lz372yW/CtY4zfvT1/Dt9huP/AHK6/hp/9p5KvR2bScr7aC0vepV5Qjj6YSNF7Buq/wDa
9sX9WPLTlGkv8qz5ma39HNm20/WQsqc6q/1laTqS6yyOfaJZhOt38owv0kjcy07Ks7i+l3a4x0U/
45Y8sjsG2No57dfRs6T/ANTZ/e/Go9/RI7ME1uUVg9zPl8y8N71PaSe7NfPnWjYbFsdmtyt6EVUf
3qkvanL6ye86HuJzPl8xqnyeZZJOjnblld27ZARqnyeY1T5PMqDeE3jOPcjR+05f3C8/gj+pu6p8
vmMy5PMEs7xxbm8uKm0LKrDZ926dJz1twjnescTd+05/3C8/gj+psVLlU6sKbg9U+7eZdUuTzJpr
c8kW9Z16Wt06lLfjTNJMzkap8nmNU+TzKywXljbbQoOjdUYVab/dksnI7JtLYjzYTlfWn92rS/aQ
XyTff9JdTu6pcvmeNzx93zJcZebePiWTXWeTR2dti02nGUaNSUa0N1ShUWmpB+MX/wDh0feczaOx
7faTU6lOVO4h/V16U9NSH0f8nuNPtu09jeztGk760Xdc0I/tIr54e/6x6E3Z1a4Mc/c6+V/i930A
NSzv6N/RVa0q061J/vQnn/8ADY1S5PM11c7LLqsgMeqfJ5nuqfJ5hFgjVPk8xqnyeYFgjVPk8xqn
yeYFgjVPk8xqnyeYFgjVPk8xqnyeYFgjVPk8zzVPk8wNO1/85v8A/DS/KRvI59tJ/bF97P7tL3+E
jYqXlGhHNWrSp/46iX5kjWUtvL4fZsHpyKnpNsmi8S2hbN8Iz1PyyYv9KrKX9Rb3tw/9lbTfm0ic
WPm1PC8S89V3DzecSO27+rns+w7x/wC9lCn+bPJXPpFV/q7Gxo/7y4lJr+GJeKHscu9k/eO6MnCV
n6QVd9XaVrR8KNDV5yYewrqr/aNsbQn4QnGmv8qJu+S8GM65T1dzUkt5p19r2Fsn6+8t6eOepFfz
OevRXZz/AK6jWrvjWuJz/Nm3Q2Js62/qdnWsJcVTjnrgczXhzvb+2mu/SvZO9U7l1pcKNOVT8kVs
GtTuKV3WpU501UuJPFSLjLuXen3HTjFxjhQSXBbjS2Y3rvvZ/wDUy9/hETe+aW4XG8Mv1dMEap8n
mNU+TzNOawRqnyeY1T5PMCwSnJvfHC+pQAAAAAAAAAAAAAAAAEyipRcZLKawyKFCnb09FJYjnJlA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPD0AAAAAAAAAaDpbR1PTXtdOdydCXd/Ec7atntetGgqVa3
loqqe6i1hru/eO+CLxND1e0v7xa/9CX/AHGxbxuYxl2mpSm87nTg44X4tmcDSb2HoBQAAAAAAABg
qTqKvTUaSlF98uBnMFSVZV6apxTpv7z4GcAAAAAAHnuPQBxrv0foVrh3NnOdldvvrUd2r/FHul+J
rTv9sbMpyjeWkbuOPZuLZNteMqec/wALZ9AROcacHOo0oxWW28JGbj3nJ0ni3plNxw7LbVXaEnC1
vdnyqe+EozjNfWLeTPK62pHaKtW7PfRdTVpl7mljv8Sr2GxNox/pbsqrXc5SjlfR96Pn3s+1pekU
YWe1altbeoctULlSxv7vaz7/AHE/yjpJhl5z9t+v+n0+na3PZfwz/U26PrfVL1zh6zHtaM4/DJwF
C4p/1fpRTa/2tOlL8sGxTs9sVaSlT25RnFrdONomn/mLMr5M3Cfqnr+HcGTiLZm2pL29uY/wWsF+
bZ49g3dT+v25fy/wOEPyiN3yTgx/VPX8O3k0rjbFhZtq5vLelj3SqJPoaS9FNnT33CuLh/7a4nLy
zg3LbYmzrN5t7G3pviqaz1HM14c72/tppv0qsJbrVXF3LhQt5y88Y8x9rbUuP7LsWrFe6VxWjT8l
lnZUUluSwe5Gr3px4Tpj9b+NOIqXpFcfeuLG1T5Kcqkl+LaQ+xL6s/6Ttu8l4UowpryWTtno4Z3T
2uU6ST9o+UtNhWNfa97Qrzu63q4w31Libz35zhrJ1aXozsek047Pt2175Q1PzPbJL7e2i9Sb0092
PBnV7hMZ5Ll43iXlu/Vgo2dvQWKNClTXyQS/Iz4XAA057t6h6AEAAAPD0AeHP2X/AFl9/wATL8on
QOdsmcZTvtLTxcy/JE7rOldIAFQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAicI1IOM4qUXuaaymWANT7Ns/7pQ/6cf0OZ
LY0f9II11Rpdm0Y0erWM4+h3QNLxXzav2baf3W3/AOnH9DPTpxpQUIRjGK7klhIsBLa9AAAAAAAB
4MmG4t+00XTdSpBP96nNxl1RpfYsf77f/wD9Mgsk71VrGK21fySWXGlv/CR0co5Mdg0YzlNXV6pz
wpS7RLLx3F/Ysf77f/8A9MiTa3V7umekRjpgo5bwsZby2WVkAAAAAAAB4c7ZMIwnfaUlm5l+SOic
/Zn377/iZflEndZ0rogAqAAAAAAAABzrm/nQvqVFQhKMtOcv2nqbSx9Mb/qdExSpU5VI1JQi5wzp
k1vWe/DA50tpXMdlTuuz0/WQlJSj6zcsTcXvxv3Il7WqJ3maUGqSco4l3JSlH2vxjn6M6fqKeGtE
cPvWlb9+Tzs9HM36qGZvMnpXtPGN/HduA5trtWrWu6dGcYYcnTk4t5clq9pfL7HmdZvCzhv6GKFv
RpyjKFKEXCOmLUUtK4LwM4Ea/ll0Gv5ZdCwBGv5ZdBr+WXQsARr+WXQa/ll0LAEa/ll0Gv5ZdCwB
Gv5ZdBr+WXQsARr+WXQa/ll0LAEa/ll0Gv5ZdCwBGv5ZdBr+WXQsARr+WXQa/ll0LAEa/ll0Gv5Z
dCwBGv5ZdBr+WXQsARr+WXQa/ll0LAEa/ll0Gv5ZdCwBGv5ZdBr+WXQsARr+WXQa/ll0LAEa/ll0
Gv5ZdCwBGv5ZdBr+WXQsARr+WXQa/ll0LAEa/ll0Gv5ZdCwBGv5ZdBr+WXQsARr+WXQa/ll0LAEa
/ll0Gv5ZdCwBGv5ZdBr+WXQsARr+WXQa/ll0LAEa/ll0Gv5ZdCwBGv5ZdBr+WXQsARr+WXQa/ll0
LAEa/ll0Gv5ZdCwBGv5ZdBr+WXQsARr+WXQa/ll0LAEa/ll0Gv5ZdCwBGv5ZdBr+WXQsARr+WXQa
/ll0LAEa/ll0Gv5ZdCwBGv5ZdBr+WXQsARr+WXQa/ll0LAEa/ll0Gv5ZdCwBGv5ZdBr+WXQsARr+
WXQa/ll0LAEa/ll0Gv5ZdCzwCdfyy6GhsyWJ33sy/tUvd4ROic/Zn377/iZflEndZ0re1/LLoNfy
y6FgqI1/LLoNfyy6FgCFPLxiS+qLAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
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

--_008_1FFB62CE8AEB0D4298B51122D8903E961B68C69BIRSMSX104gercor_
Content-Type: image/jpeg; name="image005.jpg"
Content-Description: image005.jpg
Content-Disposition: inline; filename="image005.jpg"; size=24679;
	creation-date="Wed, 09 Apr 2014 12:56:43 GMT";
	modification-date="Wed, 09 Apr 2014 12:56:43 GMT"
Content-ID: <image005.jpg@01CF5408.F190E470>
Content-Transfer-Encoding: base64

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
IqK2X8EjacFJ3d+YFgjRHjzY0R482BYI0R482NEePNgaWctxyXGtK76Cf+VnNwuaZusLSvkU5LRH
bDFU9qt22Z0c5pRlk2NTvsoTfa91mXB0oRwVBRvZU4978DNm71dMcpjjzm/f5c77dxsfv5Fjf+Wd
OX/UF7R1F9/Jszj8qSl+TOzojx5saI8ebGr6nHj/AK/+uN/Cigl7+AzKPzwsn+R7/CrL19+OLh+1
hai/cdjo4+D8zHRrwfmY1fVeLw/9b7/w5C9rcn78U4/tUpr80UvarJGv9o0F+1K35nUdKL7m/wAW
Q8LRl96lB/NXGr6m/C9L7z4akPaHKan3cywb/wDWj9TLHN8vn9zG4aXyqxf7z2eVYGp9/CUZfOCM
MvZ7KZ/ey3Cv/wBKI5n2X1bkcVQn92tTl8pJlqpFrZJP5M5b9lcllteW4byWI/gnk1vdwMI/sykv
yY3fQ14XrfafLPkspyo4jXDT/GatvMzpWPl8q9ncFiKNeWnFUJRxFSK6PE1I7FJ8Tcfs3OH8nzbM
6T419a/9yZJcvRcscN8svef9d08OH9nZ5Q/UZrSrrwxGH/fFo8WJz2h+uyzDYheNDEOL5SX7y79Y
nlb+7lL+ev8A3Tup37gzhfwhjRVsZlmY0PF9G6kecWzJS9pclqvT1+nCW7Vk6b/91i8WPqnlZ9df
u7QNWliMNiFejXhNf2Kl/wAmZ9MOPNlY1Z1ZAY9MOPNnk+jhG8pqK8XKwRZyKUWvarEvo7LqtP3r
/wBqX/z8BiPaDKcI9M8bSlPuhSbnJ/hG7OVTzDH47Oq8sswUoaqFNdJjLwUVqn7yj2u9+HYZuUdc
PCysts1PryfSYzG4fL8NKvi60KVKPbKTscVxxvtJ+sVXBZXuv3a2IXHcj6vgbGD9n4LERxeZ1ZY7
FLbGVTZCn+xDsXz7TsaFx5smrl16G8cPu876/CMNhqWEoQo0KcadKC0xjFWSRmI0R482NEePNm3K
3fOsgI0R482NEePNgWCNEePNjRHjzYFgjRHjzY0R482BYI0R482NEePNgWCNEePNjRHjzYFgjRHj
zY0R482BYI0R482NEePNgWCNEePNjRHjzYFmtjatWjhpTw9PpKia90zaI8ebGiPHmwPKMpTowlUj
pm0nKPgzIRojx5saI8ebAsEaI8ebGiPHmwLBGiPHmxojx5sCwRojx5saI8ebAsEaI8ebGiPHmwLB
GiPHmxojx5sCwRojx5saI8ebAsEaI8ebGiPHmwLBGiPHmxojx5sCwRojx5saI8ebAoGvXk6NPVTo
1K0uzTCST9Wka3XK/wDVmL/vKf8ArJtZLU4Jzee5gnG0dFKz/BnTOFh6+KjmeLqSyzFaKkYKL6SH
df8AtcTc65X/AKsxf95T/wBYlauLpAwQipwTlCcG1dxctq4bGZNEePNlYWCNEePNjRHjzYFgjRHj
zY0R482BZ4Tojx5saI8ebA9fYc7G04yznLpNbU6n+U33CNu/mzQxcI/a2X9v+873uitY9fd0wRoj
x5saI8ebDKwRojx5saI8ebAsEaI8ebKSSVkB6AAAAAAAAAAAAA8PLo9NKtl7rVZT63ioX/mwmkl8
tgJI8zqShkuNdm/0E1s/ZZlwEteBoSs1enHY/katXJlWozpVMbjJQnFxkukW1Pt7j2OUOEVGOOxq
SVkukX0Jz23y1rbpXBp0MA6FRT63iall92pNNP0NwrFD0AAAAAAAAHj7GBoZR+oxH/E1v87N/wAT
lZA06GKs5P8AjNT737TOqSdFy6vQAVHljDWwtGvG1ajTqLwlFP8AMzAEtnRyKnsxk9Vtzy7Dpvvj
DS/Qx/wTypfq6deH7GIqL/qO2eGeDH0dJ43iTplfdxF7KZd31Ma14PF1PqUvZTJ07ywiqPxqTlP8
2doDgx9F8/xP9r7tbC4DC4OOnDYajRXhTgo/ka1PZ7R4j/haX+eZ0uJyaNO3tPiZ6m74Wns/5p/Q
umJbd2usegFZAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAeHoAAAAA
AAAAAAic9MJSabSV7JXfID3uuaGM/wBr5f8A+p/lPftal8DGf4Wp9DTxGPhPMcHUjh8Y4U9ep9Vq
bLrZ3EtjeMu3bBofa1L4GM/wtT6GzhsQsTTc4wqxs7WnBwfJjbNljOACoAAAAAAAAAAAAAAAAAAD
HWhKpSlGEtLfeKUHClGMpamltfiZAAAAAAAAAAAAHgNXEUcTVa6DEKjbtvTUr+ph6pmH9YR/w6+p
NrJ9TKP1GI/4mt/nZv2OXQy3G4eM408wjaU5Td8Ou2Tu+/iZo4XHqSbzCLSe1dAtvqWNWS3e3QAA
YAAAAAAAxV8RSw1J1K9SNOC7ZSdkBkObS/8AqTEf8LS/zzMn2zl39NoedHOp5tgVn1eo8TR0PDU4
qWrY2pT2eqJbG8ccufJ3waP21l39MoedG1Sqwr041KU1OEldSi7pl2xZZ1jKAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8B6APD0AAAAAAAAADFWjOVC
pGm9M3FqL8HbYcKll+LjOi1SnCMZpxXSJ9Ftjqfbt1Wl49p9EAOLjcHX6WvVhRniI1aVOPRTq2V0
3fZdKyW1rvJqYHFSeFVLpv0cUlUqTV6bTV20ntuk13/vO4AOdk+GrYbDzjWg4XknGDlqt7qTd+LT
f4m5JVr/AKOUEv7UW/3mUAYbYjfpeR/UWxG/S8j+pmAGG2I36Xkf1FsRv0vI/qZgBrThipQajVpR
b71B7PU9jHEqKTqUpNd+h7fU5Wd4TH1618H0mmWGqUXpqabOTW3t7VbYzbwGHr0cbialWdWVOpTp
6VKd1GST1JLu7gNy2I36Xkf1FsRv0vI/qZgBhtiN+l5H9RbEb9LyP6mYAYbYjfpeR/UWxG/S8j+p
mAGG2I36Xkf1FsRv0vI/qZgBhtiN+l5H9RbEb9LyP6nKq4XGQhmUac6zdeSlTbkpaVpV0lfZ2NJf
/wCmGpVbyWeWqdSnjZ0nCEVdSV76fe7E7W79jC6du2I36Xkf1FsRv0vI/qcWlgsxqOdWq60JPF0q
ihGrscEoqSe3ssm7eJnrfaLxTqXxCoOstMKfR3UdMbXv3atV+/ssEdO2I36Xkf1FsRv0vI/qauW4
atho4mNaVSalXlKEqk9TcWlyXbsOgBhtiN+l5H9RbEb9LyP6mYAYbYjfpeR/UWxG/S8j+pmAGG2I
36Xkf1GnEb9LyP6mY59ahVjm9HERlVlSVGcJwUvdveNnp8e3aBsacRvUfI/qe6a+9R8j+pyMBWnl
kaqzGc10k7qUk25S/nWSvs7LPYaKwmZRpXq0MRXhGFRKEa9nPXUjJX29iV142TQV9LpxG9R8j+p7
bEb9LyP6nJlSzCGHoQoTrqFOg1K+nXKV4+N9unVbb2rbcz4ShiIZiq1SeIdKeHUXGrNe7JPwWy9u
1oI37YjfpeR/UWxG/S8j+pmAGG2I36Xkf1FsRv0vI/qZgBhtiN+l5H9RbEb9LyP6mYAYbYjfpeR/
UWxG/S8j+prZlh6uIp0ehnVjKFenNqE9KklJXv4q19hpTlXw2bzxld1FhnC15dkFZWSSd29V+7sf
aB1rYjfpeR/UWxG/S8j+pwK9PG4zHzr4R1pYWpUoyUo1NNlBq6SbXbd/OxlwVHGrBqNKGJw8qmIj
KcZyUnCF1q2tu7fa343sB2rYjfpeR/UWxG/S8j+pwo0sdVxOF6xRxjnGeqVZyhpg7q6jGLWx+Lvs
ufRgYbYjfpeR/UWxG/S8j+pmAGG2I36Xkf1FsRv0vI/qZgBhtiN+l5H9RbEb9LyP6mYwYmk62GqU
4znByi0pQdpL5PuA9tiN+l5H9RbEb9LyP6nFrYfGrD5akqjlQjFVU5XTklHbJ3vZJS27dox9armV
ajPK51JqlGcaiTcEtSST22vba/wA7VsRv0vI/qLYjfpeR/U4uEw+Nw9RyjSrqosIqcnOepSqWVnt
k79/crbe25GIp5h0E6daji8U9MFpjOEYPYrt2abaeq6XbsA7tsRv0vI/qLYjfpeR/U8wsXDC0oyl
OUowSbn957O/iZwMNsRv0vI/qLYjfpeR/UzADDbEb9LyP6i2I36Xkf1MwAw2xG/S8j+otiN+l5H9
TMcGphMZDL8bRUsTNzrucZOSlJw926V2u3bZbAOxbEb9LyP6i2I36Xkf1OPiKs8RlkMvp1JRx6VP
VGDkmrSi373yT7zBh8Nm8atCU4Po+tSrVYuvtSa7LbbxV+y/aDs79sRv0vI/qLYjfpeR/U5cY5j1
yLqyxHQyqzdodH7qutN7/wA21+NzcyvD1MNg+iryqTkqlS0qk9UnFzbV38rAbFsRv0vI/qLYjfpe
R/UzADDbEb9LyP6i2I36Xkf1MwAw2xG/S8j+otiN+l5H9TMAMNsRv0vI/qLYjfpeR/U0pYfEQzWt
XhKpKlOgoJOfuxnfuXq2amW4h5dhuhzCc4VZybhrTcpbFdu10vevbgB2LYjfpeR/UWxG/S8j+p8v
DLc0eGjDEda0Qo06bUJqbm4u+1OXffa+3YdPExzJq9N1YRjShFwo6Lt3etx1d9krX4gdW2I36Xkf
1FsRv0vI/qaeBw9eljsTVqzrShVp03FVJp6ZLVqSS2Lu7DpAYbYjfpeR/UWxG/S8j+pmAGG2I36X
kf1FsRv0vI/qZgBhtiN+l5H9RbEb9LyP6mY5+Pw9arWwdSlOqlSrapxjOylGz7V392wDZtiN+l5H
9RbEb9LyP6nJpzq4PM8TicY6kcPU2KUldLs0pJN/2r3Wz8TWnQx+JxNSrhp1urVK7rRnGdtnR6Ek
m1svtt4gfQWxG/S8j+otiN+l5H9TkYfD46ngMPQoKpTcajk5T0puOmVlLa+2Vr27iKFLF1MfhZVa
OOTgryrVXDj7touyXGz7gO1bEb9LyP6i2I36Xkf1MwAw2xG/S8j+pcNSitbTlwVkWAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHzWb+1LyjM
cRh6mHU6NPDwqKpGS1KUuksnHvX6PtQH0oPj6Ptq1i5LF4SNLDRunONZOUf0k4JtbNnu/ge4f25o
1sbQpTw06UaqmmpPapRavt7LOLuu9uyA+vB89h/auhWyaWYyw1enRjUUJalaycU4y29qd0vmzVft
fVl0kaWXOU6dSEKmuqoKOqs6SXfd7GB9WD5N+3eEVCFVYWq7yhqjeN1GSTb/AAurk0vbKTxGAhiK
NNRxblTTi3smpJdvYlaS7e/Z3gfWg+Vp+21KtSjUpYHEOMtc05WjeEYa9W3vtst4kv23paFFYKuq
1puUX7yhbYm2u1N9vgDT60HyGZe2OIwU8FTo4KNWdfCLEzbnJKPuuVlse69rGF9tukoxhUwU3itM
I+67U3Uem8dT7EtS299mB9eD5Gh7bU54OjUlg5yqVIQSUZpKVSSp3jt7Euljtfbt/H3He2UoYfMO
qYFTrYLS5OpVSg4ubhJprts4tW7y6H1oOFlueVsZn2My+rQUFSUpQaT7FLTtfY79uzs7HtO6QAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAYq03ToVJxjqlGLaXi0jiUs4xEp0o9JRmnNJSUbKtdxult2adTv
2/d+YH0AORiMbi6dTFxp9A+jwyrUr3avtvfxWzZYqtjcRGGDnBUnGrNRqLa5bYNpLwdwOqatTA4W
vX6Wth6VSrp0a5005aduy/htfM18nxlTG4ecqsoz0ySU4qyd4ptfg21+B0G2u5sDVWV4FVelWDw6
q7Xr6KOrb27bCnlmCoxUaOEoU4p3ShTil2p+Hik/wNm73X6C73X6AYYYHC06DoQw1GNJu7pqmlFv
xt2EywOGmqilh6LVT76dNe9tvt8drb+ZsXe6/QXe6/QDVeVZe1Z4HCta9duhj97x7O3iWsDhUlFY
elpV9mhW2tN+qXIz3e6/QXe6/QDXjl+Ehq0YWhHU5N2ppXctjf49548uwcpRk8LQbi3pbpx2X2O2
zvNm73X6C73X6AYXhKErXo0naOhXgvu2tb5Wb2cTHLLcHPXqweHfSRUZ3pR95LsT2bUrI2rvdfoL
vdfoBrxy/CQlqWFoJ6Yxuqa7I/dXyVlbwsFl+DTqtYTDp1v1r6OPv9+3Zt/E2LvdfoLvdfoBjpYa
jRqVKlKjThOq71JRik5vxb7zORd7r9Bd7r9ALBF3uv0F3uv0AsEXe6/QXe6/QCwRd7r9Bd7r9ALB
F3uv0F3uv0AsEXe6/QXe6/QCwRd7r9Bd7r9ALBF3uv0F3uv0AsEXe6/QXe6/QCwRd7r9Bd7r9ALB
F3uv0F3uv0AsEXe6/QXe6/QCwRd7r9Bd7r9ALBF3uv0F3uv0AsEXe6/QXe6/QCwRd7r9Bd7r9ALB
F3uv0F3uv0AsEXe6/QXe6/QCwRd7r9Bd7r9ALBF3uv0F3uv0AsEXe6/QXe6/QCwRd7r9Bd7r9ALB
F3uv0F3uv0AsEXe6/QXe6/QCwRd7r9Bd7r9ALBF3uv0F3uv0AsEXe6/QXe6/QCwRd7r9Bd7r9ALB
F3uv0F3uv0AsEXe6/QXe6/QCwRd7r9Bd7r9ALBF3uv0F3uv0AsEXe6/QXe6/QCwRd7r9Bd7r9ALB
F3uv0F3uv0AsEXe6/QXe6/QCwRd7r9Bd7r9ALBF3uv0F3uv0AsEXe6/QpbV2WA9AAAjRFWtFbOzZ
2FgCbLwXge2Xgj0ASkoqySS4FAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAADFXhOdFqlPTLxAygimpRppTd5JbX4lgAAAAAAAAAAABLemLb7tpjw+IjiIOU
U1Z22gZgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAY6tRUqU6kr6YRcnbwRzIZzecYzw8
oyUkqiUk9Ck4qLXjfUvUDrg5tbM3RniY9WrSdCiquy3v3vsW3ut3nlbNY0XSbpS0Sipzlf7qbST4
7WB0waWAxvXac26bpyg0mm77GlJbfk0bbnGLs2kwKBHSQ3kOkhvICwR0kN5DpIbyAsEdJDeQ6SG8
gLBHSQ3kOkhvICwR0kN5DpIbyAsEdJDeQ6SG8gLBHSQ3kOkhvICwR0kN5DpIbyAsEdJDeQ6SG8gL
BHSQ3kOkhvICwR0kN5DpIbyAsEdJDeQ6SG8gLBHSQ3kOkhvICwR0kN5DpIbyAsEdJDeQ6SG8gLBH
SQ3kOkhvICwR0kN5DpIbyAsEdJDeQ6SG8gLBHSQ3kOkhvIBKcYtKUkm+xN9pZgqQo1ZxlN3cezaZ
OkhvICwR0kN5DpIbyAsEdJDeQ6SG8gLBHSQ3kOkhvICwR0kN5DpIbyArYauP/kkrX7UYqmWZfXqS
qVcPRnOTu5OO1nOzrK8tpZRiprDUYyUHpcY2afcTbUkt1t3MP/J6d7/dXaZNhzKeUZU6cXDC0HG2
z3TNh8vwOGqdJh6NKnO1tUVZ2HNOTeBOuPiNcfEqaUCdcfEdJHxBpQI6SG8h0kN5AWeE9JDeRqYm
pi9S6q8Pptt6Vyvf8Asm26eJJdiOY5ZrZ6Xgb922ZqZZjM3xeDVap1JNzlFXcr7G13cUNrwu+enM
hUzLVHpHgtF/e0ud7cDodJDeQSzSwR0kN5DpIbyCLBHSQ3kOkhvICwR0kN5DpIbyAoGviZ1uj/ir
o9Jf/eXtb8DU6TNPHA85k2sx26YPn8PmeZV8yxOFXUb0Un2z23/A3deaeOB5zLteF1AYaU/0cekl
DXb3tPZfgX0kN5BlYI6SG8h0kN5AWCOkhvIdJDeQFgjpIbyHSQ3kBYI6SG8h0kN5AWCOkhvIdJDe
QFgjpIbyHSQ3kBYI6SG8ik01dbUB6AAJlFSi4ySaas0+80oZXhKfRuNL9W7xeqT27O3bt7F29ll4
G+ANeWFoycnKF3Kn0cm29sduz1ZEsBh5zpylC7p/dvJ2XZst3rYjbAGvhsJRwlNwoQ0xbu1dv8zY
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmSbi0nZtbH4Gh1LHf1nP8AuYfQ
6AGiXTh4yjmNLEYSMMzlarVcJfoYbrf7jc6njv6yn/dQ+hOY1IQxuXKckm67sm/7EvqVmGcYLLIx
6xWUZz+5TinKc/lFbWZ5Tq6Tiy1MZu/gz4anWowksRXddt3TcVG3DYZnJJX2WXE4nW87zL+S4anl
9B/7zE+9Ua4QWxfiz1ezFGu9WZ4vFY6T7Y1Z6afkjZDivaLwYz791+HP+GziPaDK8HLTXx1FT3Iy
1S5K7Nf+E9Cp/JcDmGJXc4YeST/GVjo4XLcHgo6cLhqVFLcgkbLj8uRdX1Ti8OdJb+bjLOM1n+py
Gvb/AMWtTh+9h43P5/dyrCw/bxd/yidsE1fVfMx7Yz9flw1W9o5f92y6O3vqzf7jy3tLLvyuO3wq
M7p5Ya+qeZ9I4qw3tHL72Oy+H7OHm/zkaGc4HOVlOJlic2pzpqG2FPDKN/xbdjuVMspVakpyq4lO
TvaNecUvkk9hgxWUUZYecW8VVUlZweJqNNcycP8AdtzxdentGtSyTG1KUXVzzHWcVsjGELf+0r+D
ba9/Ns0l/wDkW/JG3DKaUoJyqYuLa2rrVTZ6mahgIYaprhUxEna1qlec1ybLwxL4t7X9NOc/Zeg7
asdmLa73ipHq9l8Lb+VZg+PXKn1O2Bwz0Z87xPVwl7LYdO6xuY/4qZX8GaV7rMMzXyxUjtgcM9Dz
s/Vwv4NyV9Ob5qv/AMi/5o9/g9WVtOdZns8Zxf8A0nbsLF4Yebn6uJ9hY9L3c+xy+cab/wCkPJ8z
vsz/ABK+dGm/3HcsauIwUcTJSnUrwaVrU6soL0ZOCNTxsvp7T4cyWVZtGDaz2s7K+3D03+45uQYP
M8TlqnSzmrTgqk1p6CD/AJzu7s708opOEl0+Mez+lVPqamV5DSw2EcOkxcPebsq84+lycH93WvOu
u3tHrynNWrfb1dfLD0/oeLJcz26s/wAS/lRpr9xvQyylCakq2Kel3s8RNrlc3bDhjPnZdte0+HEj
keYX97P8a1/5dNf9J6shxi7c9zBr/k/0nbsLF4YnnZ/T2jhr2er3251mb/54r/pPX7O1JLbnOafh
Viv+k7VhYvDE83Nw/wCDdT+uc1/vl/pPV7OVE7/bOaf3sf8ASdywsOGHm5uF9gYlPZneYrwvKD/6
R9h4+K9zPsb/AM0Kb/6Tr4ipVpUtVGj0093Uo+rNXrmP/q1/38TOp/dtTxc/p7RxcLlOaQzbGdFn
DVRRp6pzw0JOV0/l4G+8L7QU17mZYKr+3hnH8pHlCpmUMyxNaWWPRUjBL9PHuv8AU2+t47+rX/fx
JJPr+q3xMvSe0anS+0lP71DLa37NScPzTPftPOqf6zJFNeNLFRfo0jr05TlCLnHTJq7V72fgWzXD
fVmeJO+M/X9q4f8ACOtTf8YybMqfFUlNf+1spe1eWrZWnXoPwrYecf3HaXzFk1tSGr6nH4d64+1/
65lH2kyivspZjhm+NRJ+pv08RSrK9KrCa/syTMdbL8JiF+nwtGp+3TT/ADNCfsrk1Rt/Z9GDffTv
B+lhzPsr6z2vw66twJmnKDUZaZNWUrXtxOM/ZfDQd8Ni8woeChiZNL8HcRyfM6K/i+eYi3hWown6
2TLu+hwYXpl7y/ttudSx39Zz/uYfQ1a8MfSxuFoLMZNVtd26MLqyuT0XtFR+7Xy/EL+1TnTfo2aj
ePxGf4D7QwlOhpU3GVKvrUml2WsmjPuvDZzll9v3dbqON/rKf9zD6G1hqVWlTca9d1pXvqcVGy8N
hnBrTlbt6ACoAAAAAAJbSTbdku81oZlhKnR6K8H0rcYbe1oDbBq1cfhqTqKdamnTipTV7uKfZs4n
ssZh4SpxdWN6v3Lbb8vmBsgw4fE0cVTc6FSNSKdrrxMwAAAADwCKtWNGm5z7Ee05xq01OPY9qE9O
h9JbT337D2OlRWm2m2ywFA8PQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8PQJXYRVqwo05VK
soxhFXcm7JIx4rF0MDh6lfEVI06UFqlKT2JHDpYTEe0dWOJzGnKll0Xqo4SWx1fCdT90eZm5dp1b
ww3N3lGlmONnnuNwSwMZYfDdM1DGzjtm7P7kX2r+0zu5dk2Dy5yqUoSniJffxFR6qk/m3+S2HmY0
L43LNLUYxrtJJdnuS+h1F2CY891rPxLw8OPKf3q9PQDTkAAAAAAAAAGLEU5VaLjCehvvAyginFxp
xjJ6mlZvxLAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABE5xpwlObtGKu2+5FgDn/beXf0yl
zOfiszwFXNcDVWIg1T6S8ttls2XO8Cc2pcZ2aP25l39MpczYw2KoYum54epGpFOzcfEzaT0c05PQ
AVAAAAABirUlWozpybSnFxbXE5cMmqKcZzxEZNyi6lqdlJRcXG23Z9xX7e1nZAHMrZa6laVenOnT
q6YJe57uqLbu9u1bbGN5OlHDxjKmlRho16Hrts7Heyvbbs7DrgDRy7BSwdOanUjUnNq7UdKsoqK2
Xfckbjim7u/MoARoXHmxoXHmywBj0LjzZq1cto1qrnKWIUpdunEVIrknY3QCWzo4Oc5RReTYuUJ4
q8aUpL+M1H2K/Y2ZcuyahDLcOpSxSfRpv+M1PDgzaznU8lxuhpPoJ8tLM2B1LA0NbvLo43t8iam2
+LLh6oo5dRoVekhKu5LZ71eclybsbOhcebLBWbbeqdC482NC482WAiNC482NC482WAI0LjzY0Ljz
ZYAjQuPNjQuPNlgCNC482NC482WAI0LjzY0LjzZYAjQuPNjQuPNlgCNC482NC482WAI0LjzY0Ljz
ZYAjQuPNjQuPNlgCNC482NC482WAI0LjzY0LjzZYAjQuPNjQuPNlngGPQr9jt82Y61Wlh6M6taWi
nBOUnKTSSXeZrpLafObfafGu+zKMPP8ADE1E/wDInzZLddG/Dx4ud5SdXmGw1X2gxEcfi4SjgaT1
YXDSuukfdUn+5d3adRV8w7OoU/8AE/8A9TfUYxikuwoTHRlnu9OXZx8RHMa9XDTWCppUamtp4p7f
da3eJsdPmH9Ap/4p/wCk3KmIhSnGMr3n2WRluNJxT0a2GdepCTxNFUpJ7FGq53XJGbQuPNlgrNTo
XHmxoXHmywBGhcebGhcebLAEaFx5saFx5ssARoXHmxoXHmywBGhcebGhcebLAEaFx5saFx5ssARo
XHmxoXHmywBGhcebGhcebLAEaFx5saFx5ssARoXHmxoXHmywBGhcebGhcebLAEaFx5saFx5ssARo
XHmxoXHmywBGhcebGhcebLAEaFx5saFx5ssARoXHmxoXHmywBGhcebGhcebLAEaFx5saFx5ssARo
XHmxoXHmywBGhcebGhcebLAEaFx5saFx5ssARoXHmxoXHmywBGhcebGhcebLAEaFx5spKysj0AAA
AAAAAAAAAAAHgBr1MdhqU3CpXpQmu2MppNAk30YM5lpyXGtXf6Ca2fss5WVZxXwccPg84jGnOpCK
oYlK1Ots7Huy4d/cb2bZhhfsjGRWJoNuhNW6RbfdZ50mW4/KoUMVWwtWlOlFSjKpHwM3ruOuOpNZ
Tlfd1l2HqPlKGYzyGp0dXE9dy3+bVjNTq4deE0tsore7V3n01CvTxFFVKU1OEldSTumiy7Zz8O48
+s9WYAFYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHgBx86zOrh1TweBSnjsTeNKL7ILvnLgvV7CW6m6
uONyuo1s0xFTN8fLJsHOUaSSeNrR/mRf+7T3peiO3h8PTwtCFGjCMKcEoxilZJI1sry2nlWBjQpt
zldyqVJfeqTfbJ8WbyEne9Ws8pf8cek/X6vT0ArCHGMmm4ptdl12FgAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGKtGU6FSNOWmcotRfg7HCpZbi41K
L6HRFTTjFTX6GzjqfHVaXZvfM+iAHGxeAqzr1akKc6lOdOkpUpVPvaZO8drstj/EirgcwlTwMIVI
tUZRdVyqO7drXXiuD7zuADm5NhauGw841oaLyTUNV7e6k3+LTf4nQalfY0l8igBFp7y5C095ciwB
Fp7y5GGeDpVJOU6VGUn2uVNNs2BcG9NSWXYaUWpYfDtP/wAJHqy7DxSSw+HSX/hI2gNLutZYOjDb
GlSi7WvGmkcWrlmKySpLE5KtdCT1VcC3aL8XT3Xw7GfRs8fZ2kuMrWOdx+s9GhluZ0c0oOph6m2L
01KcladOXhJdzN20t5cjlZjkyxGIWNwNV4XHwVlVirqa3Zr+cvVHmAzpzxHUczpLCY7uje8Ky8YS
7/l2okuuVaywmU4sPbvPl17T3lyFp7y5FHppyRae8uQtPeXIsARae8uQtPeXIsARae8uQtPeXIsA
Rae8uQtPeXIsARae8uQtPeXIsARae8uQtPeXIsARae8uQtPeXIsARae8uQtPeXIsARae8uQtPeXI
sARae8uQtPeXIsx1KsKVOVSpJRhFOUpN2SS7wNPM8fTyrBTxNZ3S2RhFe9OT7Iri2aeTZbXpOpj8
e1LH4lJz71Sj3U48F3+LMOXU555mEc1xMWsLSusFSku3xqteL7vBfM+htsMzndu2X2ePBOvf4Tae
8uQtPeXIsGnFFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciw
BFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C095c
iwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C09
5ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C
095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5C095ciwBFp7y5FK9truz0AAAAAAAAAAAAAAAAA
AAAPD0AeGlmGWYbM8O6OJpKcO1PscX4p9qfE3QNbWWy7j5yOMxvs/LRmLni8B/NxcVepSX/iJdq/
tL8Tu0a9LE0Y1aE41Kc1eMou6aMjSkrPsODWyXEZdWnisikqTk9VTCT/AFVX5bkuK2GOePTo6bx8
Tryv6V9ADlZdnlDHVpUKkZ4fGQXv4erskuK7pLijqo1LLzjnljcbqx6AeN2RUegw4fERxEZOKas7
bTKB6AAAAAAAAAAAAAAHgHh85Xk/aXHywdNv7Lw07YiS7K81/u091d/Iy5ljK2ZYuWU5bNwlb+NY
iP8AuIv+av7b9O06+DwdHAYWGGw0FTpU46YxRjrddnbH7KbvW9Pp9fhnjFRilFJJbEl3FAG3EAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYq
0pU6FScI6pRi2l4uxw6Oa4iUqSVanNOaUZabdNdxul4adT7N35n0J5ZeAHGxeOxFGvWh0tGnRdOn
KNRRvo1SalJt7GTUzGuqGDqucI1amnVQS2yulft27L9i8VfYdu2ywsr9gHPyfF1cZh5yqzjPTJJT
irJ3im1+DbX4G+5NdkW/kenoGPU92XoNT3ZehkAGPU92XoNT3ZehkAGCtWnTpSlGlKTXce0qsp0o
ylTlFtbV4GYAY9T3Zeg1Pdl6GQAY9T3Zeg1Pdl6GQAY9T3Zeg1Pdl6GQAc3MsqwuaU0sTSlrg706
sHpnB+MZLajnLG5nkezMITx2DXZiKUf0sF/bgu35rkfQv5i10S4946Y+JZNZTccvVRzqhTr4TGVu
i22lh6qSfz4nn2O/6bmP98jHjPZ+lPESxeX1J4HFvtqUfuz/AG4dkvzMUc4zDLVpzjBudNf96wqc
4/OUPvR9Sb11bmPFPs7+Xf8AkwGX1MRSquePzD3a9SCtVS2KTS7jajlDjJS65mLs72dZWZr+zGPj
jMJiGq1GpfEVJLRLbZyb2ruO5+IkljGdyxysvJOp7svQanuy9Cz005sep7svQanuy9DIAMep7svQ
anuy9DIAMep7svQanuy9CzBiesKi+qKk6vcqraj6AjJqe7L0Gp7svQ5+rOfh4Dzz+hqrMM0ePqYX
o8Ap06aqSbqTtZtrw4epNtTG3u7Wp7svQ4uaZpXrYl5ZlO3FtfpazV44eL734y8Ec/7UznOXWw2V
9VjCN4yxsXJwi+9RuvefFbEdzKMthleAhRjCKn96pJSctcn2ybe1tk3vlHXgnhc8ud9Pn4VlmXUc
rwqoUYSabcpzk7ynJ9spPvbNzU92XoWuwdxqTXJxtuV3eqNT3Zeg1Pdl6GQBGPU92XoNT3ZehkAG
PU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGP
U92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU
92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU9
2XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92
XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92XoNT3ZehkAGPU92X
oNT3ZehkAGPU92XoWnddlj0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAl2se3S7TzUvFAfOYTJsvzS
niKtTD6a8cTVSq024VF7z/nLaZvs7OcF/Icxjiaa/wB1jIXfnjt5pm5lE4yoYi0k/wCM1ex/22dC
6t2ozwzq63xcpdXnPrzcT7dxeDdsyyrE0l31KH6aHptXI28Jn+WY16aGNoynuOWmXJ7To9xqYvKs
Fj1/G8LRrcZwTfMavanF4eXWa/D4vy2k01dWPbnE/grg6b/ilXF4ThRryS5O6CybMqX6jPsRbuVW
jTn+5Dd9DgwvTL3nxt3AcTqOfxvpzXCy/awtvykFgc/krSzXDQ4wwt/zkN30PLx/2n6/DtXMVbEU
cNTc69aFOC7ZTkkvU5P2Jjq38qzzGSXeqUIU/wAlcmfs5gMLDplgZ5hiF2dPV1yf4zdhvL0JhhOu
W/wnzoqe0tPEt08pw1XH1OzVTWmkvnN7OVzl0ssxGaZ/XjnNXYqEJSoUG1CSu7Rk+2X7zuxxmOhF
Rhk81FdiVemkvU1o1sxjmlXFPKp6ZUYU0ump3upSfj/aRNb6ukvDvgkn13LXZo0adClGnShGEIq0
YxVkl8jKcz7Qx/8AVNX+/p/U3qE51KMZVabpzau4Np6fxRqPPd9aynoBUAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAY6tRUaM6kvuwi5O
3A5cM5k5xjPD2kpJVEp30qTio22bfvLw7zrNKSaaTT2NM1IZZhKfRaaKXRNuO17G/wA+xdvggMNb
Mp08TOgsLLWowcHOaSm5Nq2y9rW7TyWay6DD1oUG6dVJ7ZJS2+C77bW+zYmbVXBUK8WqtPVeKg3d
3sndbe3tIeW4adalVdK06S0wak1ZbNlk7W2LYAwGN65Tm3DRKDV1qvscVJbfk0bE69KnLTOpGL8G
7E4bC0cJTdOhBQi3eyM4GHrND41PzIdZofGp+ZGYAYes0PjU/Mh1mh8an5kZgBh6zQ+NT8yHWaHx
qfmRo5lnFPLakozoznbDzrpxa26be783f0M2ExyxWKr0ehqQ6GMJapWtNSv2cNgGx1mh8an5kOs0
PjU/MjMAMPWaHxqfmQ6zQ+NT8yMwAw9ZofGp+ZDrND41PzIzADD1mh8an5kedZofGp+ZGcAaGKoZ
djnF4qOHquH3ddnY1/snJP6LgvLEyPN4wp46c6NWKwklFppXndJpq3dtPZZkqWSzx7pSlopubpxe
267Vt77+JNRZbOUrXhk2RU01HC4Pa77YpmSOV5LGSlHDYJSTumox2M8+24OrKNOhVnGOIhQ1xtb3
lF6nw963zRmnmlCOJlh1GtOcZqDUKbe2yb/BJq/zHDF4r6trrND41PzI96zQ+NT8yMGBxixsK16N
Sk6VWVNqdru1tuzxubpWWHrND41PzIdZofGp+ZGYAYes0PjU/Mh1mh8an5kZgBh6zQ+NT8yHWaHx
qfmRmNOWMUczp4R0qnv05VFU2adjSt432gZus0PjU/Mh1mh8an5kamW5lHMo1ZU6coaJWWrtku52
/wDnzNSHtBGvaNLDTc3CpK0pqKjomo7X3J3vfwQHV6zQ+NT8yHWaHxqfmRp/bNBUaE6kKsZVafSK
Cg20rperaS8bmShmCr454boK0P0Kqqc46b3drW7boDZ6zQ+NT8yHWaHxqfmRmAGHrND41PzIdZof
Gp+ZGYAYes0PjU/Mh1mh8an5kZgBh6zQ+NT8yHWaHxqfmRhx2N6nClJ0qlRVKsKbcbWjqaV3fu2m
KOZRnm08EoO8I3c3sTex2Xjsa7/wA2+s0PjU/Mh1mh8an5kc7E55Tw+NqYZ0KkpwqUoJpr3tb7V8
i6WbJ0ZyxFGdOUayo6YvXeTtZXXft2+FmBvdZofGp+ZDrND41PzI0Hm93RlRw9WVKpNQ1y929+xx
T2y8fkmdUDD1mh8an5kOs0PjU/MjMAMPWaHxqfmQ6zQ+NT8yMwAw9ZofGp+ZDrND41PzIzGHEVXQ
w9SrGnOo4K+iC96XBAOs0PjU/Mh1mh8an5kaE85jCngpunK2Lip2b+5F27X2fzl9TJmOaQy+rRhO
nKSqRqS1JrZpV7fj2AbfWaHxqfmQ6zQ+NT8yNDDZxGrO1Wi6UHhliU5STemyvdLs7fRiWcwnQlLD
4erPTFSbqLo4xur7ZPsdmn+IG/1mh8an5kOs0PjU/MhQq9Ph6dXTKGuKlpkrNXXYzMBh6zQ+NT8y
HWaHxqfmRmAGHrND41PzIdZofGp+ZGYAYes0PjU/MjzrND41PzIznKlnKWCxFfq9aEqNXoVTkvel
LZbsvsd1xA3us0PjU/Mh1mh8an5ka1fMo0Mqjjujc4yUHpi1/OaXbwv6GClntKrVhTVKeqeIlQjt
XYv5/wAmD6uh1mh8an5ke9ZofGp+ZGqs0oSxDowhWlNTlB6aba93tfyu7X8TLgMX13Cqs6c6T1Si
4TtqWmTW23yAy9ZofGp+ZDrND41PzIzADD1mh8an5kOs0PjU/MjMAMPWaHxqfmQ6zQ+NT8yMwAw9
ZofGp+ZDrND41PzI13j1HMKuGlRqRVOj0vSO2mSv2LvPMuzCOY4WVdQdNJ/db22tdPhdNAbPWaHx
qfmQ6zQ+NT8yOKvaaE6MJ08JVlOdKFTT22cm1Z2Tey1727zeq5tQoSUZRnObpxmuji5J6nZJPvbs
+QG51mh8an5kOs0PjU/MjXw2PWJxmIoKjVh0MYS1TVtalfsXb3d5vAYes0PjU/Mh1mh8an5kZgBh
6zQ+NT8yHWaHxqfmRmAGHrND41PzIdZofGp+ZGY08Xjeq18LT6GpPrFTo9UbWhsbu+QGbrND41Pz
IdZofGp+ZGphsyhicfXwsabXQ7NT/nNWvZcLr/8AgwVs+pUK9WlKhUcqdZ0tlne1PXqS8O75gdLr
ND41PzIdZofGp+ZGhRzim8HRr14uk6k3DQk5OLSbd7pNWSbd0I5tqxNCEcNVjTrOylP3ZX29ke1r
ZtfFAb/WaHxqfmQ6zQ+NT8yMwAw9ZofGp+ZFwnGcVKDUk+9FgAAAAAAAAAAAAAAAADUxOXYXGyUs
RRVRpaU232GWnQpUqsqkI2nKMYt+KV7fmzMAAAAAAAAAAAA1Z4KjUdVyjtq/ftJrVssvQ13ld10S
xFXqrVpUGotS8bya1Xb23udIAaUMtwlGDhTpKMXONS1396O1P0PJ5dhqj1OEtWvXq1yTbsltd9qs
ls7HY3gBhpUKVKVRwjpdSWuXF+PoZgAAAAAAAYJ4enVqxqST1wTjGSbTSdr/AJIzgDnPLdDcsJXq
YZyd5uKUtXgveTsltsls2kzyHL505QlR+995xnKLe1PufikdMAaMstw1SKVSE52ho1OpJySun23v
e8U79t0ZaWEpUZxnCD1xh0ak5NvTe/a+3abIAAAAAAAAAw1qMK8FGpFSipKSXFO69UjXqZfCU3Vp
zqU69rKonqtxtK6vbZe17G8AOcsow0pdJiE61e93Vl7rdrW+7ZbLLkXQynC4ahTo04T6OnJShGVW
UlFrs7WbwA50MnwdPEU60IVY1KV9Fq07JPute1tnZ2HRAAAAAAABLSlFp9j2MoAaMstw0qdOn0b0
0klBanZJJWVr7VsWx7Nhj+yoVmnjqs8W4/c6SMY6dqf81LwXb4HSAGhHKsLDVaErOHR2c5NKNkrJ
X2Xsr27bEVslwVZ+/Tnb3XaNWcVeNrOyfbsW3gjpACIRUIKKu0lba7vmWAAAAAAADTngKEoVI6JL
pJa5aZyi3LZtunsexbTcAHO+zE/0cq03hVa2H0xUVa1ttr9qv2nscmy+PR2wlK9KWqEnG8ou1rp9
qOgANJZbhlUhNU5KUJOaanJXbd3fbt27bM2KNKFCDjTjpTk5NcW7v1ZlAAAAAAAAAGCWGpSrdLKP
6TTo1XfZe9jV+zeiSjhcRVoU27yikp6/m5JvsVvkdEAc6OTYKnGSpUXTukm4VJRdl3XTv3GSpluG
qReqDV1GN4zkmlFtqzT2Wu+w3QBgpYalRqSnCNpSjGDd27qN7fmzOAAAAAAADDVoUq2jXHVolrjw
fj6mYAc+eWw1yq0KtShVlsdRe/s79krpXsrvvsjyOUYbUqlWHS1u2VV7HJ2tfZZL8DogDSjl2GUI
x0OSi21rnKV20027va7NraRQyjC4fERr0o1VVjHSm603deDTdmdAAAAAAAAAAf/Z

--_008_1FFB62CE8AEB0D4298B51122D8903E961B68C69BIRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=11884;
	creation-date="Wed, 09 Apr 2014 12:56:43 GMT";
	modification-date="Wed, 09 Apr 2014 12:56:43 GMT"
Content-ID: <image001.png@01CF540C.4CDF3130>
Content-Transfer-Encoding: base64

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
u00qlU6cONHxFWhoaCgsLOQT9506dSo/Pz82NnbmzJkEQbS1teXl5Wk0milTpkRGRiKEcnNzHd01
nrKystzcXMepXC5fvny5Wq0uKysbNWoUP05VV1dXXV3d9evfK7hXHGLvYrFYWlpagoODezJv8PXX
X6empvL/1Ww2W3Nzc1BQEH9jeXl5WVkZP/3ijN1ub2pqCgwMdHTwLRaLzWZz+JX82OLdbKty55Qe
/aDiu89IQN2OIZIE0fGTJqkvM0mSoCiS/0lRJEmSFEXwP387vX6V41ij0WgwGFjWRhCcUAgyGSGT
CWnarXvWdjtnMNi1WpvJxFqtnMWCzGaCZQmOQ2fOyPz87GFh5k5JaDoFFd4YUdh5HZ5zCQDEx2dP
nPgK3OftB7Va7dtvv83ntbNYLP/4xz/mzp0bHx//1ltvdRLEc+fOHTly5KWXXvL29rZarSdOnDh9
+vTatWtJknz//fdjY2P5jTpKSkoOHz782muvOQQRIbR161aSJJ9++mmCIDZu3Jienu6Yw+Q5ffr0
5cuX+Ti2qqqqLVu2ZGdn8xk/P/744wULFnh5ee3Zs4eiqAkTJnz44YdpaWlTpkzZvHlzUFDQqFGj
duzYkZGRkZycfOLEicTERH9/f0fLVqu1ra2NPz5//nxra+vs2bM/+OCD9PT0o0ePLlu2TKFQbN68
+fHHH+fluNdxRw+xtxCLxZ2mSm7B+PHjf/rpp8zMTAAQCoXOUYc//fRT18BsABAIBJ2CE8VisXO+
WA+PB7L5CQAAxM/4j9DRs858+ntLS+0tqt3FnDJN0wqFj0Lhw3//rVZbe3t7ba2RZW0IsQghoZCQ
SkkPD8rDg3LJ+CPHIbOZMRpZnc5usXAMw9lsYLMBwwDHURxHIkQ41A0AoqLMFy54hoV1n8v6TvHx
CZ8+fa2PT3ivtNZzxGKxv7+/Ttd57yqeQ4cO5eTkeHt7A4BIJJoxY8bly5dVKhVFUbW1tStWrOCr
JSQktLa2tre386cIoe3btzvUsCdmREZGzpgxo7CwcPTo0W1tbQgh3quorq5euXIlRVErV640Go16
vb6pqYnfhigrK+v8+fPJycmpqalHjhxxDtcViUT8iLzFYikqKlq5cmVFRcVDDz2UnJzc0NDQ2tra
1NQUFhZ2n9QQ+rcg3hEymSwhIaFrOUJo6tSpnp6eD96kO0XmG/Lwq7nNZadLD22wtqq7rYOYO46k
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
IgaDwXTw/wHLBVXc/HurdQAAAABJRU5ErkJggg==

--_008_1FFB62CE8AEB0D4298B51122D8903E961B68C69BIRSMSX104gercor_
Content-Type: image/gif; name="image002.gif"
Content-Description: image002.gif
Content-Disposition: inline; filename="image002.gif"; size=462;
	creation-date="Wed, 09 Apr 2014 12:56:43 GMT";
	modification-date="Wed, 09 Apr 2014 12:56:43 GMT"
Content-ID: <image002.gif@01CF540C.4CDF3130>
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

--_008_1FFB62CE8AEB0D4298B51122D8903E961B68C69BIRSMSX104gercor_--
