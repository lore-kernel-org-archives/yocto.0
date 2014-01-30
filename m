Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02638E005B1
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 07:38:05 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Jan 2014 07:33:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,750,1384329600"; 
	d="gif'147?png'147,150?scan'147,150,208,217,147,150";a="475176850"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga002.jf.intel.com with ESMTP; 30 Jan 2014 07:37:15 -0800
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 30 Jan 2014 15:37:06 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.244]) by
	IRSMSX152.ger.corp.intel.com ([163.33.192.66]) with mapi id
	14.03.0123.003; Thu, 30 Jan 2014 15:37:05 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.6_M2.rc2 Full Pass report
Thread-Index: Ac8c/lGIcDkFaJ4dRW+WqG2FUXVAGgA0nsaw
Date: Thu, 30 Jan 2014 15:37:04 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619FD1CA6@IRSMSX104.ger.corp.intel.com>
References: <1FFB62CE8AEB0D4298B51122D8903E9619FD1708@IRSMSX104.ger.corp.intel.com>
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E9619FD1708@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: Yocto 1.6_M2.rc2 Full Pass report
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
X-List-Received-Date: Thu, 30 Jan 2014 15:38:08 -0000
X-Groupsio-MsgNum: 17937
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_1FFB62CE8AEB0D4298B51122D8903E9619FD1CA6IRSMSX104gercor_";
	type="multipart/alternative"

--_006_1FFB62CE8AEB0D4298B51122D8903E9619FD1CA6IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619FD1CA6IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619FD1CA6IRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
I have updated the report with the Runtime test run which we were missing y=
esterday. The full pass report is available on the same wiki page: https://=
wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.6_M2.rc2
Cheers,
--
Alexandru Georgescu

From: Georgescu, Alexandru C
Sent: Wednesday, January 29, 2014 6:02 PM
To: yocto@yoctoproject.org
Cc: Jolley, Stephen K; Purdie, Richard; Wold, Saul (saul.wold@intel.com); Z=
hang, Jessica (jessica.zhang@intel.com); Stewart, David C
Subject: Yocto 1.6_M2.rc2 Full Pass report

Hello,
Here is the full pass for 1.6_M2.rc2 build.

Issue summary (new issues):
- 5759<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5759> -in Build =
Appliance, the core-image-minimal cannot be built - "db" fails at do compil=
e
- 5754<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5754> - [p1022ds=
] opensp-native failed to build with 1.6 M2 rc2 on AB- this blocked testing=
 the P1022ds BSP
- 5757<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5757> - cannot c=
reate a bitbake commander project with a new git clone

No High issues found in this build, but there are two Medium+ pending:

-          5655<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5655> -=
 Wrong values in Recipe_Dependency table (Toaster)

-          5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182> -=
 X cannot startup with 3.10 kernel on the Beagleboard BSP

Overall, the bug count  is similar as the M1 build. There are quite a few b=
ugs around Toaster, Eclipse plugin,  OE-core and meta-yocto but neither one=
 are a Medium+ or High (except #5655 - Toaster bug). Also, the distro testi=
ng was done covering the major distributions (Fedora 20, Ubuntu 13.10, Cent=
OS 6.5 and Opensuse 12.3). The summary report with more details is availabl=
e below and the full report is available on the wiki: https://wiki.yoctopro=
ject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.6_M2.rc2. Since we di=
dn't have a meta-intel build in time, the runtime<https://wiki.yoctoproject=
.org/wiki/Yocto_1.6_Overall_Test_Plan#Compliance_Testing> tests have not be=
en performed against this build.


Testing data

 Test type:  Full Pass Release Test

 Branch: master

 Milestone: M2

 Build name: 1.6_M2.rc2

 poky commit: 1a9226f140f578f11696abf1a3c989fae1d4c14a

 Eclipse Plugin commit Kepler:  c73c6e4510c42601854f3c542ca6e14b4510380c

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20140123-3

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

1847<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1847> 1849<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1849>

ADT: master branch

Fedora 20 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

1846<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1846> 1848<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1848>

ADT: master branch

Ubuntu 13.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1870<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1870> 1871<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1871>

BSP/QEMU: master branch

Beagleboard

71.0%

none

4.3%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182> 3936<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

24.6%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

100.0%

1874<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1874>

BSP/QEMU: master branch

generic-x86 on AtomPC

97.4%

none

2.6%

5351<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5351> 4005<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005> 5733<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5733>

0.0%

none

100.0%

1838<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1838> 1859<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1859>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

100.0%

none

0.0%

none

0.0%

none

100.0%

1868<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1868> 1869<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1869>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

5733<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5733>

0.0%

none

0.0%

none

100.0%

1857<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1857> 1858<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1858>

BSP/QEMU: master branch

P1022ds

0.0%

none

2.1%

5754<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5754>

97.9%

5754<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5754>

100.0%

1863<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1863> 1864<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1864>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

1839<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1839> 1840<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1840>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

1844<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1844> 1845<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1845>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

1841<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1841> 1842<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1842>1843<https:=
//bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1843>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

1862<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1862> 1865<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1865>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

1866<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1866> 1867<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1867>

BSP/QEMU: master branch

Routerstationpro

100.0%

5733<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5733>

0.0%

none

0.0%

none

100.0%

1833<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1833> 1836<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1836>

Eclipse Plugin: master branch

Fedora 20 x86_64

92.6%

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760> 5707<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5707>5640<https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D5640>

7.4%

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163> 5736<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5736> 5707<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5707> 5766<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5766>

0.0%

none

100.0%

1834<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1834> 1835<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1835>

Eclipse Plugin: master branch

Ubuntu 13.10 x86_64

81.5%

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>

7.4%

5757<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5757> 5707<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5707> 5720<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5720>

11.1%

5757<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5757>5707<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D5707>

100.0%

1855<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1855> 1856<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1856>

Meta-yocto: master branch

Ubuntu 13.10 x86-64

92.6%

none

7.4%

5588<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5588> 5692<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5692>

0.0%

none

100.0%

1832<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1832> 1837<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1837>

Hob: master branch

Ubuntu 13.10 x86_64

95.7%

none

4.3%

none

0.0%

none

100.0%

1850<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850>

Toaster: master branch

Ubuntu 13.04 x86_64

65.8%

none

34.2%

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187> 5642<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5642> 5453<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5453> 5553<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5553> 5485<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D5485> 5763<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D576=
3>5192<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5192> 5252<https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5252> 5255<https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5255> 5655<https://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D5655>

0.0%

none

100.0%

1853<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1853> 1861<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1861>

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

1872<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1872> 1873<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1873>

BitBake: master branch

Ubuntu 13.04 x86_64

100.0%

5764<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5764>

0.0%

none

0.0%

none

100.0%

1854<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1854>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

50.0%

none

50.0%

5759<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5759>

0.0%

none

100.0%

Total: 21



Test Case Status Report

Status

Count

BLOCKED

67

FAILED

31

PASSED

849

Total: 947


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:67,31,849&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(67)+7%25|FAILED(31)+3%=
25|PASSED(849)+90%25]



Bug Status Report


ID[?]<https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Rele=
ase_1.6_M2.rc2>

Priority[?]<https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pas=
s_Release_1.6_M2.rc2>

Status[?]<https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_=
Release_1.6_M2.rc2>

Resolution[?]<https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_P=
ass_Release_1.6_M2.rc2>

Test Runs[?]<https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pa=
ss_Release_1.6_M2.rc2>

Description[?]<https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_=
Pass_Release_1.6_M2.rc2>

Version[?]<https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass=
_Release_1.6_M2.rc2>

Target Milestone[?]<https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_=
Full_Pass_Release_1.6_M2.rc2>

Age (days)[?]<https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_P=
ass_Release_1.6_M2.rc2>

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

ACCEPTED

1870<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1870>

[beagleboard xM] Some error message with usbhs_omap in dmesg

1.4

1.6

331

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

1874<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1874>

dmesg log errors in Atom-PC

1.3.1

1.5

318

5146<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146>

Medium

IN PROGRESS IMPLEMENTATION

1853<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1853>

btrfs image build fails at do_rootfs

1.5

1.5.1

136

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

Medium

REOPENED

1833<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1833>

no external tools displayed when first trying to run QEMU - test case 48 fa=
iled on Ubuntu 12.04 x86-64 host(build 1.5 M4 rc2)

1.5

1.6

134

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

Medium+

ACCEPTED

1871<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1871> 1870<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1870>

[Beagleboard xM]X can not startup with 3.10 kernel

1.5

1.5.1

132

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>

Medium

ACCEPTED

1850<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850>

same cooker log file name used for several builds

unspecified

1.6

132

5192<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5192>

Medium

WaitForUpstream

1850<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850>

non-existent URLs listed in the "Layer index URL" column

1.5

1.6 M5

132

5252<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5252>

Medium

NEW

1850<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850>

path_to_sstate_obj in the tasks table is empty

unspecified

1.6 M2

122

5255<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5255>

Medium

ACCEPTED

1850<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850>

source_url in the tasks table is empty

unspecified

1.6 M3

122

5351<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5351>

Medium

ACCEPTED

1874<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1874>

genericx86 auth.err getty[615]: tcgetattr: Input/output

1.5

1.5.1

101

5453<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5453>

Medium

ACCEPTED

1850<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850>

Remove the image_fstypes field from the builds table

unspecified

1.6

80

5485<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5485>

Medium

REOPENED

1850<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850>

Buildstats info and database entries doesn't match sometimes

unspecified

1.6 M1

78

5553<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5553>

Medium

ACCEPTED

1850<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850>

Missing task order numbers

unspecified

1.6 M2

66

5588<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5588>

Medium

NEW

1856<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1856>

pybootchartgui.py doesn't work with -s option

1.6

1.6

62

5640<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5640>

Medium

NEW

1836<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1836>

systemtap output is useless in Juno

1.6

1.6

48

5642<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5642>

Medium

ACCEPTED

1850<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850>

The number of warnings from Build table doesn't match the number of orm_log=
message.level entries with value 1

unspecified

1.6 M5

48

5655<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5655>

Medium+

REOPENED

1850<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850>

Wrong values in Recipe_Dependency table

unspecified

1.6 M2

43

5692<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5692>

Medium

NEW

1856<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1856>

sstate-cache-management.sh doesn't work correctly

1.6

1.6

24

5707<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5707>

Medium

RESOLVED

FIXED

1836<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1836> 1835<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1835> 1834<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1834>1833<https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1833>

Yocto Project BitBake Commander uses dash instead of bash

1.4

1.6 M2

15

5720<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5720>

Undecided

RESOLVED

NOTABUG

1834<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1834>

error when creating a local Bitbake Commander project with an existing git =
clone

1.5

---

10

5730<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5730>

Medium

IN PROGRESS REVIEW

1853<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1853>

Archive work directory and export source package

1.6

1.6 M3

7 (Recent)

5733<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5733>

Medium

RESOLVED

FIXED

1874<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1874> 1866<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1866> 1868<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1868>

rpcbind can not start up with 1.6 M2 RC1

1.6

1.6 M3

6 (Recent)

5736<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5736>

Medium

NEW

1833<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1833>

error when starting QEMU from Eclipse

unspecified

1.6

6 (Recent)

5740<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5740>

Medium

IN PROGRESS REVIEW

1861<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1861>

Use archiver.bbclass to filter the source - fails

1.6

1.6 M3

6 (Recent)

5754<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5754>

Undecided

NEW

1857<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1857> 1858<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1858>

[p1022ds] opensp-native failed to build with 1.6 M2 rc2

1.6

---

NEW

5757<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5757>

Undecided

NEW

1835<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1835> 1834<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1834>

[KEPLER] Error when creating a bitbake commander project with a new git clo=
ne

unspecified

---

NEW

5759<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5759>

Undecided

WaitForUpstream

1854<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1854>

[Build Appliance] db do_compile failed

1.6

---

NEW

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>

Undecided

NEW

1834<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1834> 1833<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1833>

headless build takes took long

1.6

---

NEW

5763<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5763>

Undecided

NEEDINFO

1850<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850>

Not available outcome when task is not executed.

unspecified

---

NEW

5764<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5764>

Undecided

NEW

1872<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1872>

QA Issue: libva: configure was passed unrecognised options

1.6

---

NEW

5766<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5766>

Undecided

NEW

1836<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1836>

can't launch Hob from Eclipse

1.6

---

NEW

Total: 31




Build performance

Here are the build performance charts (see *.xls attachment for details) fo=
r the 1.6_M2.rc2 build compared against the last milestones (including 1.5)=
; please note that the git-describe is "1.6_M1.final-796-g1a9226f". As we c=
an see, overall there are no degradations in the build performance. In the =
first chart, building core-image-sato time improved a little, a trend which=
 started on the beginning on 1.6. On the other part, building rootfs and th=
e virtual kernel don't maintain the same descendent trend (lower is better)=
 being more varied (see charts below) but staying around the same values. T=
his is due to the fact that the values obtained by having multiple runs on =
the same machine and same commit gives us different build times which are n=
ot always in the same range. This can be verified by inspecting the Perform=
ance_test wiki: https://wiki.yoctoproject.org/wiki/Performance_Test which w=
as also used to create the charts.



[cid:image004.png@01CF1DE1.E2630120]

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619FD1CA6IRSMSX104gercor_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
span.editsection
	{mso-style-name:editsection;}
span.EmailStyle26
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
	{mso-list-id:112481897;
	mso-list-type:hybrid;
	mso-list-template-ids:358934050 -1572333422 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hello,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I have updated the rep=
ort with the Runtime test run which we were missing yesterday. The full pas=
s report is available on the same wiki page:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass=
_Release_1.6_M2.rc2">
https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.=
6_M2.rc2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Cheers,<o:p></o:p></sp=
an></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">--<=
o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Ale=
xandru Georgescu<o:p></o:p></span></b></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Georgescu, Alexandru C <br>
<b>Sent:</b> Wednesday, January 29, 2014 6:02 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Cc:</b> Jolley, Stephen K; Purdie, Richard; Wold, Saul (saul.wold@intel.=
com); Zhang, Jessica (jessica.zhang@intel.com); Stewart, David C<br>
<b>Subject:</b> Yocto 1.6_M2.rc2 Full Pass report<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">Here is the full pass for <b>1.6_M2.rc2</b> build.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issue summary (new issues):<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- <a href=3D"https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D5759">
<b>5759</b></a> -in Build Appliance, the core-image-minimal cannot be built=
 &#8211; &#8220;db&#8221; fails at do compile<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- <a href=3D"https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D5754">
<b>5754</b></a> - [p1022ds] opensp-native failed to build with 1.6 M2 rc2 o=
n AB&#8211; this blocked testing the P1022ds BSP<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">-<span style=3D"font-size=
:9.5pt"> </span>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5757"><b>575=
7</b></a> &#8211; cannot create a bitbake commander project with a new git =
clone<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">No High issues found in this build, but there are tw=
o Medium&#43; pending:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5655"><b>5655</b></a> - Wrong values in Recipe_Dependency table=
 (Toaster)<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5182"><b>5182</b></a> - X cannot startup with 3.10 kernel on th=
e Beagleboard BSP<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Overall, the bug count &nbsp;is similar as the M1 bu=
ild. There are quite a few bugs around Toaster, Eclipse plugin, &nbsp;OE-co=
re and meta-yocto but neither one are a Medium&#43; or High (except #5655 -=
 Toaster bug). Also, the distro testing was done
 covering the major distributions (Fedora 20, Ubuntu 13.10, CentOS 6.5 and =
Opensuse 12.3). The summary report with more details is available below and=
 the full report is available on the wiki:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass=
_Release_1.6_M2.rc2">
https://wiki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.=
6_M2.rc2</a>. Since we didn&#8217;t have a meta-intel build in time, the
<a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.6_Overall_Test_Plan#C=
ompliance_Testing">
runtime</a> tests have not been performed against this build.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white">
<span class=3D"mw-headline"><span style=3D"font-size:17.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testi=
ng data</span></span><span style=3D"font-size:17.5pt;font-family:&quot;Aria=
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
lack"> Milestone: M2<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Build name: 1.6_M2.rc2<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> poky commit: 1a9226f140f578f11696abf1a3c989fae1d4c14a<o:p></o:p></sp=
an></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Eclipse Plugin commit Kepler:&nbsp; c73c6e4510c42601854f3c542ca6e14b=
4510380c<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Autobuilder images repository: <a href=3D"http://autobuilder.yoctopr=
oject.org/pub/nightly/20140123-3">http://autobuilder.yoctoproject.org/pub/n=
ightly/20140123-3</a><o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Distributions tested: Ubuntu 13.10 64bit, Fedora 19 64bit, Fedora 20=
 32bit, Opensuse 12.3 64bit, CentOS 6.5 64 bit <o:p></o:p></span></pre>
</div>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;background-positio=
n:initial initial;background-repeat:initial initial;overflow:hidden;word-sp=
acing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:17.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Summa=
ry Report</span></span><span style=3D"font-size:17.5pt;font-family:&quot;Ar=
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
n style=3D"font-size:9.5pt">Testing Summary Report</span></b><b><span style=
=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quo=
t;"><o:p></o:p></span></b></p>
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
<b><span style=3D"font-size:9.5pt">Test Run<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Test Plan<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Environment<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Passed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Other issues<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Failed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Failing bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Blocked<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Blocking bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Complete<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1847"><span style=3D"color:#5A3696">1847</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1849"><span style=3D"color=
:#5A3696">1849</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fedora 20 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1846"><span style=3D"color:#5A3696">1846</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1848"><span style=3D"color=
:#5A3696">1848</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1870"><span style=3D"color:#5A3696">1870</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1871"><span style=3D"color=
:#5A3696">1871</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">71.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">4.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">24.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1874"><span style=3D"color:#5A3696">1874</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">generic-x86 on AtomPC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5351"><span style=3D"color:#5A3696">5351</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5733"><span style=3D"colo=
r:#5A3696">5733</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1838"><span style=3D"color:#5A3696">1838</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1859"><span style=3D"color=
:#5A3696">1859</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">genericx86-64 on Sugarbay<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1868"><span style=3D"color:#5A3696">1868</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1869"><span style=3D"color=
:#5A3696">1869</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">MPC8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5733"><span style=3D"color:#5A3696">5733</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1857"><span style=3D"color:#5A3696">1857</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1858"><span style=3D"color=
:#5A3696">1858</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">P1022ds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5754"><span style=3D"color:#5A3696">5754</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5754"><span style=3D"color:#5A3696">5754</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1863"><span style=3D"color:#5A3696">1863</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1864"><span style=3D"color=
:#5A3696">1864</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemu-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1839"><span style=3D"color:#5A3696">1839</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1840"><span style=3D"color=
:#5A3696">1840</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1844"><span style=3D"color:#5A3696">1844</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1845"><span style=3D"color=
:#5A3696">1845</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1841"><span style=3D"color:#5A3696">1841</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1842"><span style=3D"color=
:#5A3696">1842</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D1843"><span style=3D"color:#5A3696">1843</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1862"><span style=3D"color:#5A3696">1862</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1865"><span style=3D"color=
:#5A3696">1865</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1866"><span style=3D"color:#5A3696">1866</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1867"><span style=3D"color=
:#5A3696">1867</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Routerstationpro<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5733"><span style=3D"color:#5A3696">5733</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1833"><span style=3D"color:#5A3696">1833</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1836"><span style=3D"color=
:#5A3696">1836</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Eclipse Plugin: master branch<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fedora 20 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">92.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5707"><span style=3D"color:#5A3696">5707=
</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5=
640"><span style=3D"color:#5A3696">5640</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">7.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5163"><span style=3D"color:#5A3696">5163</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5736"><span style=3D"color:#5A3696">5736=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5707"><span style=3D"colo=
r:#5A3696">5707</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5766"><spa=
n style=3D"color:#5A3696">5766</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1834"><span style=3D"color:#5A3696">1834</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1835"><span style=3D"color=
:#5A3696">1835</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Eclipse Plugin: master branch<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">81.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">7.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5757"><span style=3D"color:#5A3696">5757</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5707"><span style=3D"color:#5A3696">5707=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5720"><span style=3D"colo=
r:#5A3696">5720</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">11.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5757"><span style=3D"color:#5A3696">5757</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5707"><span styl=
e=3D"color:#5A3696">5707</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1855"><span style=3D"color:#5A3696">1855</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1856"><span style=3D"color=
:#5A3696">1856</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Meta-yocto: master branch<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">92.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">7.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5588"><span style=3D"color:#5A3696">5588</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5692"><span style=3D"color:#5A3696">5692=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1832"><span style=3D"color:#5A3696">1832</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1837"><span style=3D"color=
:#5A3696">1837</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Hob: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">95.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">4.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1850"><span style=3D"color:#5A3696">1850</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Toaster: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">65.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">34.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5187"><span style=3D"color:#5A3696">5187</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5642"><span style=3D"color:#5A3696">5642=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5453"><span style=3D"colo=
r:#5A3696">5453</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5553"><spa=
n style=3D"color:#5A3696">5553</span></a><span class=3D"apple-converted-spa=
ce">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D5485"><span style=3D"color:#5A3696">5485</span></a><span class=3D"appl=
e-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5763"><span style=3D"color:#5A3696">5763</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5192"><span styl=
e=3D"color:#5A3696">5192</span></a><span class=3D"apple-converted-space">&n=
bsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5=
252"><span style=3D"color:#5A3696">5252</span></a><span class=3D"apple-conv=
erted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5255"><span style=3D"color:#5A3696">5255</span></a><span clas=
s=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctop=
roject.org/show_bug.cgi?id=3D5655"><span style=3D"color:#5A3696">5655</span=
></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1853"><span style=3D"color:#5A3696">1853</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1861"><span style=3D"color=
:#5A3696">1861</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">OE-Core: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Multiple environments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">91.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">8.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5730"><span style=3D"color:#5A3696">5730</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5146"><span style=3D"color:#5A3696">5146=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5740"><span style=3D"colo=
r:#5A3696">5740</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1872"><span style=3D"color:#5A3696">1872</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1873"><span style=3D"color=
:#5A3696">1873</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BitBake: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5764"><span style=3D"color:#5A3696">5764</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1854"><span style=3D"color:#5A3696">1854</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Build Appliance: master branch<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemu-kvm on Ubuntu 12.04 libvirt<o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">50.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">50.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5759"><span style=3D"color:#5A3696">5759</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 21</span></b><span style=3D"font-=
size:9.5pt"><o:p></o:p></span></p>
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
n style=3D"font-size:9.5pt">Test Case Status Report<o:p></o:p></span></b></=
p>
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
<b><span style=3D"font-size:9.5pt">Status<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Count<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BLOCKED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">67<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">31<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">849<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 947</span></b><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><img border=3D"0" wi=
dth=3D"432" height=3D"120" id=3D"Picture_x0020_31" src=3D"cid:image002.png@=
01CF1DE1.E2630120" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;c=
hs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:67,31,849&amp;chco=3DFFFF66|FF9933|00=
FF00&amp;chl=3DBLOCKED(67)&#43;7%25|FAILED(31)&#43;3%25|PASSED(849)&#43;90%=
25"><o:p></o:p></span></p>
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
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black">Bug Status Report<o:p></o:p></span></b></p>
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
n style=3D"font-size:9.5pt">ID</span></b><a href=3D"https://wiki.yoctoproje=
ct.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.6_M2.rc2"><b><span styl=
e=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" =
width=3D"12" height=3D"14" id=3D"Picture_x0020_30" src=3D"cid:image003.gif@=
01CF1DE1.E2630120" alt=3D"&#8595;"></span></b></a><b><span style=3D"font-si=
ze:9.5pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></=
o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.6_M2.rc2"><b><spa=
n style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_29" src=3D"cid:image0=
03.gif@01CF1DE1.E2630120" alt=3D"&#8595;"></span></b></a><b><span style=3D"=
font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.6_M2.rc2"><b><span =
style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D=
"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_28" src=3D"cid:image003.=
gif@01CF1DE1.E2630120" alt=3D"&#8595;"></span></b></a><b><span style=3D"fon=
t-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.6_M2.rc2"><b><s=
pan style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_27" src=3D"cid:image=
003.gif@01CF1DE1.E2630120" alt=3D"&#8595;"></span></b></a><b><span style=3D=
"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.6_M2.rc2"><b><sp=
an style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_26" src=3D"cid:image0=
03.gif@01CF1DE1.E2630120" alt=3D"&#8595;"></span></b></a><b><span style=3D"=
font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.6_M2.rc2"><b><=
span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_25" src=3D"cid:imag=
e003.gif@01CF1DE1.E2630120" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.6_M2.rc2"><b><span=
 style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_24" src=3D"cid:image0=
03.gif@01CF1DE1.E2630120" alt=3D"&#8595;"></span></b></a><b><span style=3D"=
font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.6_M2.rc2"=
><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img=
 border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_23" src=3D"cid=
:image003.gif@01CF1DE1.E2630120" alt=3D"&#8595;"></span></b></a><b><span st=
yle=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW04_-_2014-01-23_-_Full_Pass_Release_1.6_M2.rc2"><b><s=
pan style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_22" src=3D"cid:image=
003.gif@01CF1DE1.E2630120" alt=3D"&#8595;"></span></b></a><b><span style=3D=
"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1870"><span style=3D"colo=
r:#5A3696">1870</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[beagleboard xM] Som=
e error message with usbhs_omap in dmesg<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">331<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Low<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1874"><span style=3D"colo=
r:#5A3696">1874</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">dmesg log errors in =
Atom-PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.3.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">318<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5146"><span style=3D"color:#5A3696">5146</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">IN PROGRESS IMPLEMENTATION<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1853"><span style=3D"colo=
r:#5A3696">1853</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">btrfs image build fa=
ils at do_rootfs<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">136<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5163"><span style=3D"color:#5A3696">5163</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1833"><span style=3D"colo=
r:#5A3696">1833</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">no external tools di=
splayed when first trying to run QEMU - test case 48 failed on Ubuntu 12.04=
 x86-64 host(build 1.5 M4 rc2)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">134<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1871"><span style=3D"colo=
r:#5A3696">1871</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D187=
0"><span style=3D"color:#5A3696">1870</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Beagleboard xM]X ca=
n not startup with 3.10 kernel<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">132<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5187"><span style=3D"color:#5A3696">5187</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850"><span style=3D"colo=
r:#5A3696">1850</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">same cooker log file=
 name used for several builds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">132<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5192"><span style=3D"color:#5A3696">5192</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">WaitForUpstream<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850"><span style=3D"colo=
r:#5A3696">1850</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">non-existent URLs li=
sted in the &quot;Layer index URL&quot; column<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">132<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5252"><span style=3D"color:#5A3696">5252</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850"><span style=3D"colo=
r:#5A3696">1850</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">path_to_sstate_obj i=
n the tasks table is empty<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">122<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5255"><span style=3D"color:#5A3696">5255</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850"><span style=3D"colo=
r:#5A3696">1850</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">source_url in the ta=
sks table is empty<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">122<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5351"><span style=3D"color:#5A3696">5351</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1874"><span style=3D"colo=
r:#5A3696">1874</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">genericx86 auth.err =
getty[615]: tcgetattr: Input/output<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">101<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5453"><span style=3D"color:#5A3696">5453</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850"><span style=3D"colo=
r:#5A3696">1850</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Remove the image_fst=
ypes field from the builds table<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">80<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5485"><span style=3D"color:#5A3696">5485</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850"><span style=3D"colo=
r:#5A3696">1850</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Buildstats info and =
database entries doesn't match sometimes<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">78<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5553"><span style=3D"color:#5A3696">5553</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850"><span style=3D"colo=
r:#5A3696">1850</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Missing task order n=
umbers<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">66<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5588"><span style=3D"color:#5A3696">5588</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1856"><span style=3D"colo=
r:#5A3696">1856</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">pybootchartgui.py do=
esn't work with -s option<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">62<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5640"><span style=3D"color:#5A3696">5640</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1836"><span style=3D"colo=
r:#5A3696">1836</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">systemtap output is =
useless in Juno<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">48<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5642"><span style=3D"color:#5A3696">5642</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850"><span style=3D"colo=
r:#5A3696">1850</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">The number of warnin=
gs from Build table doesn't match the number of orm_logmessage.level entrie=
s with value 1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">48<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5655"><span style=3D"color:#5A3696">5655</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850"><span style=3D"colo=
r:#5A3696">1850</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Wrong values in Reci=
pe_Dependency table<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">43<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5692"><span style=3D"color:#5A3696">5692</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1856"><span style=3D"colo=
r:#5A3696">1856</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">sstate-cache-managem=
ent.sh doesn't work correctly<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">24<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5707"><span style=3D"color:#5A3696">5707</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1836"><span style=3D"colo=
r:#5A3696">1836</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D183=
5"><span style=3D"color:#5A3696">1835</span></a><span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D1834"><span style=3D"color:#5A3696">1834</span></a><a hr=
ef=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1833"><spa=
n style=3D"color:#5A3696">1833</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Yocto Project BitBak=
e Commander uses dash instead of bash<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">15<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5720"><span style=3D"color:#5A3696">5720</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NOTABUG<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1834"><span style=3D"colo=
r:#5A3696">1834</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">error when creating =
a local Bitbake Commander project with an existing git clone<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">10<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5730"><span style=3D"color:#5A3696">5730</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1853"><span style=3D"colo=
r:#5A3696">1853</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Archive work directo=
ry and export source package<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">7<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5733"><span style=3D"color:#5A3696">5733</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1874"><span style=3D"colo=
r:#5A3696">1874</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D186=
6"><span style=3D"color:#5A3696">1866</span></a><span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D1868"><span style=3D"color:#5A3696">1868</span></a><o:p>=
</o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">rpcbind can not star=
t up with 1.6 M2 RC1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">6<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5736"><span style=3D"color:#5A3696">5736</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1833"><span style=3D"colo=
r:#5A3696">1833</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">error when starting =
QEMU from Eclipse<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">6<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5740"><span style=3D"color:#5A3696">5740</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1861"><span style=3D"colo=
r:#5A3696">1861</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Use archiver.bbclass=
 to filter the source - fails<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">6<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5754"><span style=3D"color:#5A3696">5754</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1857"><span style=3D"colo=
r:#5A3696">1857</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D185=
8"><span style=3D"color:#5A3696">1858</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[p1022ds] opensp-nat=
ive failed to build with 1.6 M2 rc2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5757"><span style=3D"color:#5A3696">5757</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1835"><span style=3D"colo=
r:#5A3696">1835</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D183=
4"><span style=3D"color:#5A3696">1834</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[KEPLER] Error when =
creating a bitbake commander project with a new git clone<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5759"><span style=3D"color:#5A3696">5759</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">WaitForUpstream<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1854"><span style=3D"colo=
r:#5A3696">1854</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Build Appliance] db=
 do_compile failed<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1834"><span style=3D"colo=
r:#5A3696">1834</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D183=
3"><span style=3D"color:#5A3696">1833</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">headless build takes=
 took long<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5763"><span style=3D"color:#5A3696">5763</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEEDINFO<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1850"><span style=3D"colo=
r:#5A3696">1850</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Not available outcom=
e when task is not executed.<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5764"><span style=3D"color:#5A3696">5764</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1872"><span style=3D"colo=
r:#5A3696">1872</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">QA Issue: libva: con=
figure was passed unrecognised options<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5766"><span style=3D"color:#5A3696">5766</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1836"><span style=3D"colo=
r:#5A3696">1836</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">can't launch Hob fro=
m Eclipse<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 31</span><=
/b><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><b>Build performance<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are the build performance charts (see *.xls att=
achment for details) for the
<b>1.6_M2.rc2</b> build compared against the last milestones (including 1.5=
); please note that the git-describe is &#8220;<b><i>1.6_M1.final-796-g1a92=
26f</i></b>&#8221;. As we can see, overall there are no degradations in the=
 build performance. In the first chart, building
 core-image-sato time improved a little, a trend which started on the begin=
ning on 1.6. On the other part, building rootfs and the virtual kernel don&=
#8217;t maintain the same descendent trend (lower is better) being more var=
ied (see charts below) but staying around
 the same values. This is due to the fact that the values obtained by havin=
g multiple runs on the same machine and same commit gives us different buil=
d times which are not always in the same range. This can be verified by ins=
pecting the Performance_test wiki:
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test">https://wik=
i.yoctoproject.org/wiki/Performance_Test</a> which was also used to create =
the charts.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"1316" height=3D"787" id=
=3D"Picture_x0020_1" src=3D"cid:image004.png@01CF1DE1.E2630120"><o:p></o:p>=
</p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E9619FD1CA6IRSMSX104gercor_--

--_006_1FFB62CE8AEB0D4298B51122D8903E9619FD1CA6IRSMSX104gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=10154;
	creation-date="Thu, 30 Jan 2014 15:37:03 GMT";
	modification-date="Thu, 30 Jan 2014 15:37:03 GMT"
Content-ID: <image002.png@01CF1DE1.E2630120>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAbAAAAB4CAIAAAAc4DAQAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO3deXgUVb438G8tvaSTzr6vZCEBEiBA2MKmgGyyREARGXRGh6sXGBVGfBxn9I7j9V7BmfHO
OzqPMCLKgCKjIJugIINBWZKwJsMuIXs6W6f3rarO+0fFpklCCBjoTnI+f/hUV6qqf92Sb07VqXOK
IYSAoiiKAlhvF0BRFOUraCBSFEW1oIFIURTVggYiRVFUCxqIFEVRLWggUhRFtaCBSFEU1YIGIkVR
VAsaiBRFUS1oIFIURbWggUhRFNWiKwNR+lHbHxFC2g6aliTJaDS23dhoNHoehBAieXAfp9XLVm93
x5+CDu6mqF6L78JjLV26NCQkRF6OiYn55S9/qdFo5JerV682mUxvvPGG/FIUxU2bNhUXF8fGxjY0
NMydOzcnJwfAsWPHtm/fHhISYrPZUlNTf/azn7Es++GHH5aUlCiVSnlfjUbzyiuvFBcXr1u3LiAg
AICfn9/o0aMfeOABeQO9Xr9///5HHnnEbDbv3bu3sbFxzJgxWVlZDMPIG9hstnXr1j333HMAHA5H
fn7+lStXcnNzBw8eDGDbtm1z5851bywzGAz5+fm1tbUTJ05MTU0FQAgpKioqLCwcN27cwIEDAVgs
lhMnTqSlpcXGxgKQJGn79u3z5s3rwm+Yoqi7qisDEcDrr7/O87wkSW+++eb27dsXLVoEQKfTGY1G
jUbzww8/yGlSUFBgNptfe+01f39/g8Hw2muvyYH12WefrVixIi4uTpKktWvXHjt2LDc3F8DcuXPH
jBnT6r3S09N/9atfAaiurl6/fj3P8/fffz+A3bt3y+G4a9cujUYzf/78tWvXNjU1TZgwQd5x8+bN
ly5dkpf/9a9/1dXVzZ07d//+/aWlpXl5eVlZWadPnx4yZIjne23bti0iImLOnDkff/zxmDFjhg8f
vm/fvgsXLsyePXvnzp3ywbdu3ZqWlrZnz56srKzRo0fn5+dnZGR07ddLUdRddVeuIbIsO2nSJLPZ
LL8sKCgYMWLEsGHDCgoK5DU2m81ut/v7+wMICgp65plnJElyOBxOp1NuCbIs+/DDDyclJXXm7WJj
Y/Py8o4fPw7Abrc3NTVFR0cDKCwszM3NDQ8PHzduXF1dnbzx999/HxISwrItH/y7775bvHhxVFTU
7Nmzr1y5AiAjI6O4uNjz+CaTqaamZubMmZGRkTNmzLh48SKAI0eO5OXlpaam5uXlnT9/XhCEpqam
cePGTZkyRafTORyOy5cvZ2Vl/dSvkqKoe6iLW4glJSUcx5WXl+/fv//JJ5+UVxYUFCxbtozjuDVr
1ixYsIBl2ZycnBMnTrz66qsDBw7s379/ZmamfIp63333vfnmmwMGDOjXr9/gwYPDw8PlI5w4caK2
tlZejoiIGD9+fKv3TUlJqampIYScP39eTkMAixYtWrduXVJS0r///e/nn38eQF1d3dGjR1esWHHo
0KGWz8/zZ86cyc7Otlgs165dEwSB53mn01leXp6YmChvo1KpdDqdTqeLiooymUw//PADAL1eHxMT
AyAmJubSpUscx6Wmpn7wwQdVVVXLly/fv3+/+xTebffu3bt37+7Cb7vHGD58+FNPPeXtKijqLgQi
y7JKpXLZsmV9+/YFUFpaKghCc3MzAI7jzp07l5WVFRgYuGrVqvLy8gsXLuzateuzzz578cUXNRrN
3LlzJ02adP78+ZKSks8+++wXv/jFoEGDAISFhblbi1qttu37+vn5yZ0h9fX1cXFx8spTp05pNJqk
pKSKioqKiorw8PCNGzcuXryY4zj3jnl5efv37z958qTFYlGpVPLK8PDwyspKdyAqlcrZs2f/4x//
0Gq1oigSQlwuFwB5e7VaLfft5OXlyVcGrFZrU1NTnz59zp49a7fbhw8fLsf9zJkzZ86c2bVfeA9w
4sSJkydPersKigK6PBAfffRRnr/hmMePH4+IiJD/xUdFRRUUFGRlZR05cqR///6JiYmJiYlTpkx5
7733jhw5kpGRodfrBw0aNGrUqFGjRhUVFX355ZdyIPbp00fudbmZixcvRkZGMgzjdDrlnpbq6uq6
urqXX34ZQExMzKZNm7RabV1d3ZYtWwCIoviXv/zl5z//eXZ29qBBg2pra2NiYv70pz/JxWs0GlEU
PY8/adKkMWPGmEwmURT379+vUCh4nm9sbAwPD7darUFBQfI5eGBgIIB9+/ZNnz799OnTJSUlqamp
77777vLly7v0a+5ROI5r9W1TlLd0cSC2IknSiRMnVq1aFRkZCaChoeH11193Op0Gg+Grr76aN2+e
QqEAYDKZkpOT1Wr1559/npCQIHdVG43GPn36dOZdKioqtm3bJp+ihoeH63Q6AEFBQQ0NDQaDISgo
yOFwJCcnp6amvvTSS/Iur7766uLFi7Va7SeffNKvX78hQ4YUFBS4G6E6nW7YsGGeb/HOO+/MmTMn
ISHhiy++SElJATBkyJArV66Eh4efPXvW3SYFIF+sjIiI2Ldv3+TJk2NiYuSLm72NGeYa1NShTgdd
BSrKUFaBijrUAWhGMwExwURABAhRbFSilPjf+G95RxYs++Ol7UAERiAiDGGRiIxCVBziIhARgpAg
BCUgIRjBXvt4VA91dwPx3LlzoaGhchoCCA8Pj4mJOXPmzPjx49evX79q1aqUlBSDwZCUlCT3Po8e
PfqVV15JSkoSRVGhUCxevFje8bPPPtuxY4f7sL/5zW8AXLx48cUXXySEREVFTZgwYeTIkQCGDBmy
detWAP7+/nl5eR9++CGAmpqalStX8jwfGhoqH4FhGHl50KBB69evP3bsmCRJjz32mPxTnU7Xqj8n
MzPzr3/9a3x8fHBw8LRp0wBMmzbt3XffPXXqVG1t7cqVK91b7t27d+7cuQByc3O3bdvmdDpbdVj3
MDWouYZrpSgtQUkJSq7iajOaBQgERM47K6wOODo4ginG1DyquQpVnXk7JZQqqBRQ8OAZMEoowxDW
B336oV8mMvugzwAMCEVo13w2qvdhvHgfstFoNJlMsbGxnjf9uVyu2traiIgItVp9Z4fduXPn5MmT
5VsgCSE6nc7dzdIuq9Xa0NDgvmKo1+u3b9/u7hHyrNZsNsv3GLpVV1eHhYW5Lz4CkPte5GVJkqxW
q3wK3zPYYS9ByUmcPIRDp3FaDz0DxgWXEUYnnN6tjQUbgAAVVBy4SEQOxdCxGJuN7AEY4Ac/79ZG
dRfeDMS7pKmp6fTp0xMnTryz3bdt2zZ8+PCEhISuraqbkiD9G//eh30HcfAczjngICB66F1webu0
W+PAhSCEB6+AYhAGPYgHx2N8f/Rn6YhV6iZ6YCACqKysjI+Pv7N9PW+46Z1ccBWhaD/278TOUpQS
EAMMEtoZkdm9sGC10CqgiEXseIzPQ14ucmnjkfLUMwORugOVqNyO7Ruw4Rqu8eD10AsQvF3UXRSM
YAZMP/RbjMWzMCsed/gXlOpJaCD2diUo2YzNW7DFCKMJpm5xLty1FFBooNFC+xAeWoiFIzGSnlP3
WjQQe6kCFHyAD3ZghwsuAww9uzHYSSzYUISyYBdh0S/xywEY4O2KqHuNBmLv0ozmD/DB23jbBJMR
RgL6f78dLNhABIYg5D/xn0/giUhEersi6h6hgdgrEJDDOPxH/PFbfCvfG+jtiroHDTRKKEdh1Ot4
PQcdjZWiegYaiD2cC66N2Phf+C8LLM1o9nY53RIDRh4b8wf8YTZm0yuMPRgNxB7LAMNbeOtdvCtC
NMHk7XJ6gkAEKqB4Gk//Gr+m42F6JBqIPZAZ5nfx7mqsdsFlhtnb5fQ0GmhYsC/j5efxPL2NsYeh
gdijCBDWYu1v8VsBggUWb5fTk/nDXw31Gqx5Ak9w4G69A9Ud0EDsOf6Jfz6P500w0RPke0YLrRrq
t/DW43icAXPrHSjfRgOxJ7iES0ux9BiO0VahVwQgYDAGb8bmJHTqoReUz6L9Zd0bAXkH7wzG4G/x
LU1DbzHDXIjCARjwHt6jt3Z2a7SF2I1VoephPHwGZ+h9hT4iAAF90XcLtqQj3du1UHeCBmJ39RW+
ehSPWmH1+kSElCcllBy4T/HpLMzydi3UbaOnzN2PAGE5luchrxnNNA19jRNOG2zzMO9NvOntWqjb
RluI3YwOuhmYcR7nbbB5uxaqI2qoH8ADn+ATf/h7uxaqs2ggdiflKB+P8bWo7fgpJZSPUEPdD/2+
xJcxiPF2LVSn0EDsNi7j8jiMa0JTL5yysPtSQRWO8O/xPb0jp1uggdg9VKJyJEbWo56mYbejhFLO
xD7o4+1aqFuggdgN6KAbhVFVqKJp2E0poYxDXCEKwxDm7VqojtBeZl9nh306ptM07NaccFahaiqm
2mH3di1UR2gg+rr/wH+UoISmYXfnhPMszi7FUm8XQnWEnjL7tE/x6UIspKPBegwGzCZsegyPebsQ
qn00EH1XGcoykUlHKPckDJhABF7CJfqcFt9ET5l913IspwNRehgCYoV1GZZ5uxCqfbSF6KO+xtdT
MdXbVVB3y2EcHoux3q6Cao0Goo8agREncVKE6O1CqK7HgRuKoQUo8HYhVGv0lNkXfY2vC1FI07Cn
EiEWovA7fOftQqjWaCD6or/hb/QxHT0bD/5tvO3tKqjW6Cmzz2lEYzSiBQjeLoS6u5RQ6qALRrC3
C6Guoy1En/MVvqJp2Bs44dyN3d6ugroBDUSfsxd7efDeroK663jwh3DI21VQN6CB6HOO4ihtIfYG
AoR85Hu7CuoG9Bqib7HB5g9/Olavl+DBW2FVQOHtQqgWtIXoW6pRTdOw9xAgVKDC21VQ19FA9C31
qPd2CdQ91Yxmb5dAXUcv3vsWESJKgWRv13FzDGF4wrQsAwqJcf+I91jmiOcuNxyBXN+GYX48Dgsw
Cp7wDG6m57SbGbblc2NBabKYXA4M9W5BlBsNRN/CW5vVdaxfrIJjWAmSKAosrqePZ1owACcHEAPy
YzAxgMgQpcjKW4os4aWW/OIlcIRRiSwAXmJYAo3AMYCCMJwElcQqJIaXGKUEnjB+AquQWJXIAAh2
chyBv4sF4O9ilT+mnlJi5JUAGDDBjut3kgcIrDsoVSKrEVo2YwmCnK1vOJcYhlWwmJaG6ICOvpqb
R2U35XJJx6vqhicP93Yh1HU0EH1Ltpi5a2dK0gUVp2IAsITxTJBAJ8uRHhUMhGeYQBWmp8O/13Us
CILEcQA03i6Euo4Gom9RBSQqwEboFcGaXjB0j2NI3zB2TCLYHpXyneRwSCzLAlpvF0JdRwPRxzCs
xKqsLjG4x49lZhkyPI4dFOXtOrzGaHS5XAr6O+hTaC+zzxFVYTpjT57nRmIZqHjMymB6cRoCaNLb
RdHf21VQN6CB6HOYsGSTXehBnao3kDiG0aowtz+ienUWEAKjwUlIjLcLoW5AA9HnMGH9HE7SbOuB
o/cIxyI5hJnfH1qlt2vxMr3eYbW6gARvF0LdgAaiz3ECZXpnmb5HPXeUAOBY5MazE5PB0X91qKyy
VFZanWJPvjbSHdELuj6n1lxbbxKaLYIgEp7rCd2vhAHDsXgglUkI9HYtPsHhEJsa7TqdVRPV4O1a
qBvQv9U+R2/XCyKpaHZdbrB7u5YuQFgGwX54JBM0DX90tdRYXmEWRdJka/J2LdQNaCD6HJPDBKC6
yVVnEFxi9+5bIRxL4rRMXj8E9PaLhm5Op1ins1VXWQBYXPSh276FnjL7HJfoUgIuiZQ2OgPUtmGJ
3XYkA8tgRCw7sFffW9PW2eKmi5eMLhcB/fXzPbSF6HMUbMuvSa1BqDcJ9aZu+Kx6hoGCw7Q0hqbh
jRoa7I0NjjqdTX4Zx9HLCL6F/onyOQMQc/7H5Ut1To2SCfLjlXz3+dPFMvBTYEZfhKi9XYpvcTjE
c+eaSkr07jUaTYgX66Ha6j6/Zr1GZGyae9nuIpfrXCfKrd1mXnOORXwgHhlA07AVSSKnTtUXFzfb
7ddvtdFqI71YEtUWDUSfE5c+xPNls02qbhbP1XaHHmeWQWYEpqZB0dMHYt++c+f0ZWUWg+GGCyDp
6eO8VQ/VLnrK7HNSs8cxDOs5IWpFs6jgnTyLjChfbXYxAMvigRQkBnm7FF904YL+4kXD1atmz5UM
w8bFZXqrJKpdPhGIkiR5vmRZ1vNHni8JIQzDtF0v/8jzgVkMw7i39HzZape2K72PZbWhUWZ9ree6
Mr2o4l1+CjYx1PfuX2FZqDjM6IswP2+X4ovKysxXr5ouXza1Wq/VhnulHqoD3g9ESZKWLl0aEnL9
6vLDDz88dOhQAN9+++0nn3yyYsWKjIwM+Uevvfbak08+mZiYuHTp0nfeeYfnr9e/Zs2ahoYG95qE
hISlS5cePHhwx44dGo0GQEBAwJQpU4YPb5mguLS09NKlS1OnTq2qqvr666/NZnN2dva4cddPYbZs
2TJr1ix/f39BEHbt2vXQQw+1qrysrGz//v0OhyMnJ2fkyJEAKioqrl69OnLkSLVaDeCHH35obm4e
NmzY7X4nyUMmFB/81HMNIbjSIErE4RJIaqTqdg94F3EMYgIwOQVKeprcjkuXDJcuNV+40DoNAQwY
MOne10N1zPuBKHvjjTdatfgAHD9+fODAgYWFhe5A7NiSJUvS09NbrRw9evSjjz4K4NKlSx999JFa
rR44cCCAPXv2PPXUU4SQtWvXzp49OyEhYfXq1aGhoZmZmRUVFcePHz906NCMGTMA8DyvVquNRmNg
4PWbJFwu1/vvvz9v3ryIiIg1a9ZERkaGhYV9/vnnEyZMWL169QsvvODv73/gwIEnn3zyDr6NSY+/
VHJwa9v1ZXpiB/NlU+LoKHNOiA8McuAYZIQjN6F3zvB6S8XFjRcvGktLze31iTFjxz5170uiOua7
nSoNDQ16vX7hwoWnTp0ShC6Y+iU9PX3SpEkFBQUAamtrtVqtn59fQ0NDTk5OTk5OVFRUTk5OfX09
AKvVGhoa6u9/fX6q3NzcQ4cOeR5Np9ONHTs2Ozs7Li5u4MCBdXV158+fz87OHjJkSP/+/Y1G46lT
p7KyshSKO5kZ3z84IiS29YOmJIarVqR+4xhhs9tdhhpRanfXe4hjMS4JY3vpfNcdkyRy6lTDhQvG
a9faH4sSFpak0QTf46qoW/KVFuL27dvlBa1WO2XKFAAFBQXDhw8PDQ2Njo4uKSnJzs6+5UHy8/OL
i4vl5eTkZPm821NycvJ3330H4OzZswkJCQAiIiJmz55dXV39r3/9q7Kycvr06QAyMjIyMjK++eYb
945BQUGnT59+8MEHOa7lxDA+Pj4+Pr68vPzQoUN6vT4zM5NhmA0bNly5coUQEhUVtWPHjqefftrz
3Xfv3r179+5OfyUDEDmg1aoAqTnNcUrLWMr1jCQKwxL91Apv/EljGSh5TEtFZK+e0/BmrFbhxImG
CxcMRuNN/5DPnv3qvSyJ6iRfCcTExES5f0O++gagoKBgwoQJFy5ciIqKKiws7EwgRkVFxcS0zLgZ
FhbWdgONRiN3vNTX1+fk5LjXsywbEBCgVHbUX6FWq/V6fXj4DRfCWZYNDAzU6/WEkICAgOXLlzc2
NoaFhR0+fDg3N9dqtRYWFqampsrhO3PmzJkzZ97yU7itWz6+ubaMYxmOZVmW4ViGZVmOZcAwVhdT
ZoBUZkuLUMYE3dvHM3EsQtSYlgZNr3ssVGfodNZz55rPnzd63m/YSmhoQnz8wHtZFdVJvhKIw4YN
87yGWF5ebrVaa2pqampqOI4rKSmx2+3urLyZjIyMttcQPV28eDE6OhqAw+GQ366pqUmSpOjo6Dlz
5hw5cmTr1q2tmnVuGo1G9Ji9rqGhgWVZuZ34zTffbN++/fHHHwcQFhbmdDovXLiwZMmSjRs3pqSk
HDhwIDMzc8SIEZ3+MlrMfPbtzS/Pu9lPBYkpMzJWQdAZxaw49T0aycIxSAvFOHqa3A6XSzpzprGs
zFJZaZOkm95JzzDMwoX/dy8LozrPR68hHj9+fMyYMY899thjjz22aNGixMTEU6dO/ZQDEkJ++OGH
vXv3Tp48GUBERERDQwOAurq6zZs3yxvU1dV5dpu0UldX59nqrKio+Oc//wlAkqT6+vqgoOv33x04
cGDSpEmEEPk64+TJkysrK++g5tj0Yem5MzrchGmyc9cMTOE1W4Pl7s+wzTLITcSEJJqGbel0tiNH
dGfPGiorbR0PK8rMnBoSQifK9lG+0kL0RAgpKip67rnn3GtycnIKCwtHjx7tudnLL78sL3Ac97//
+78A1q5d677G51559OjRkydPEkKSkpIWLFiQmpoKYNSoUUeOHAHQr1+/w4cPv/XWWw6HQxCEZ599
tt2SHA6HRqPxvMtnyJAh33///Z///Gej0ahQKNw7ms3muro6uXt6wIAB77//fk1NzbJly+7sq5j1
7P/97Uy+4LB2sI1TYqutvKVKCPMTMmNUSv4upBXLgmdu/Sz5XsliEUpKmqqqbDU19g4ahjK1OnDW
rFfuTWHUHWBItxkl28W2bt368MMPyxcuzWazzWaLiIi42cZFRUUWi2XChAmt1huNRkEQQkND3Wss
FgsAdw+1xWJRq9XumL4D9WXnPn5pNsMQ9zVE9wLLMlzLAsuxDM+SEKUzSsulhivYLrzhnGMQqMKM
3vgs+Y6JIrl82VBVZS0ttTockjw0QJIIIS3DBDwXJIkAzJIln4SFJXm7cOqmuN///vfersE7FApF
dXV1VFQUAKVS6XmTTVs7d+6cNWuWZwtRplKp/PxuGJ6hVCo9O2eUSmXb+ytvi39whMo/oPzsYZZh
GIZhGca90OolGNZJFCYnU29yQkKguitSkWPRJxjT06Gi911fJ4rS5cuG8+cNJSXG2lqH6DGP780a
GITggQdWpqbm3qMSqTvSe1uIACorK+Pj42+5mcvlamxslHtjvOX7T9ac3rOu4xai3BMtr1FAULOO
GC2XFKq4w1hkAIbBiDj07qcntyJJpKzMXFlpqax0GI0CuQ4dtxBzch6dOLH9CzKU7+jVgdi97Pt/
vyot+qozgci6/0tcfrBHBnAJIfztPeqOYcCzmJqKWO3d+jzdjdMpXr5sbGiwV1U5LRbxxry7RSAO
HDh72rSXvP0JqFujgdidfPnnpyvPHup8ILYsEFEhWf140ieU1XbmzJdjoVViel/69GSZzSZcuWJq
bHTU1DhsNkm+INj5QExOHj1v3h+9/SGoTqGB2M3kf/jK5fzPfrxPu1OBKP+IBYHLomKEyAA2Ssve
9PoixyIhEBOT0Y3m6L47RJFUVJhramxNTS69XhCEG3pIOhOIAHJyHhs/fqm3PwrVWb542w3VgfE/
f10TEFyyb/3t7siwHOsXRFjUOFy1ZrOKk+ID2UA1B89gZBkMicbQmC4suDvS6+3XrlmMRldjo2S1
inLG3T5m1Kif5+bSGRy6E9pC7Jaq/33k4LvLILk630J0j/+TFxgGgt1KnFYVR6K0CNHw4FlMTunN
T082Gl1lZSaDQWhuFs1mSRTbbwN2poXIcYq8vLcSElqPpv/p3JOHtjtPaFtWq1WlUrV741er0V+t
DiJPOepu6sq68TSjnUMDsbsy1Zd99dZil7n5zgLR/RIgDquZz9CSVG1opCo0TM1x3fVf8+0qL2eu
XZPS0mw6nd1iEU0m0Wy+fs5749XA2whEf/+IRx9dFxDQzmj6n6ipqel3v/udPCyKZdmhQ4fOmzcP
wOrVqx966KFW41aLi4uPHTtWX1/f0NCQmpr6xBNPBAQEALBYLPn5+SUlJUajMTQ0NC8vLzk5ubq6
et26dfJNeISQDRs2cBz3+OOPv/POO2VlZe5JmyIiIlauXHn06NEtW7bI04z6+/vfd999Y8eOlTeo
qakpKCiYM2cOgCNHjhw7diw9Pf3BBx/U6/Vr1671LG/FihV79uyR63e7ePHitm3b3C8DAwOXLVtW
W1t78eLFnJwc+d64qqqqsrKy3Ny7cgMTPWXurrQRSfPX5J/8/K0fDm3+KcfhWC4gMJgLjWRCQ81m
S32dGYzg78eFhisCtHz3/VPfAUKIweCsqbHrdNIXXwSPHGlVqURJAiE3vYuwkxiGGThw9sSJv+6i
StsRFBQkD8Gy2+1//OMfz58/379//7abnThxYs+ePc8++2xwcLDD4Th48OCaNWt+//vfsyy7YcOG
9PT0VatWASgpKfn0009feul6Dzgh5MMPP5TTUP6/v3jx4sGDB7c6fnZ29i9+8QsApaWlGzZsUCqV
8mj9Xbt2LViwAMDWrVs5jvvZz3723nvvqdXq+++/3z03qDy5lFqtDgkJqa+v9xwQ0adPH/dmp06d
0uv1drv9k08+GT9+/Ntvv7106dLQ0NB9+/YtXLiwy77QG9FA7N6GzlsVnzXuyPpVxNn+vHudxzCM
f4A2MCiIZVlRFPRN5ppqCxhRpWSCgnltIN+tW46CQAwGZ12d3WIRrFbJZoPLxYgiUlPNp08HDx/e
+NPfQq3Wzpq1JiqqnXi6G9RqdUREhMFgaPenO3funDNnTnBwMACVSjV9+vQLFy6Ul5dzHFdZWbl8
+XJ5s6ysLL1ebza3POyFELJx40aWZd1peEvJycnTp08vKCgYMWJEc3MzIURuwJaVla1cuZLjuJUr
V1osFo7j5EEQhJDNmzcvWrQIwOjRo/fs2TN//nz30VQqlbyZ3W4/efLkypUrL1++3K9fv2HDhtXU
1Oj1+vr6+sTERLlxejfQQOz2IjNG5a05XPzFn0oPb/F8NNVPoVQq1eFhHBfBcawgCFartaLcJBEX
IPA8tFo2IECh8MpUjJ3mckkmk1OvFywWwW6X7HZit0MUGUliCGHlM1wA8fH2qir1gQNdc9d9UdFf
uuQ4rXhOHGez2eRZRXQ6HSGk3QdUyEMJWrUc09LSLl++HBgY2KdPH8/18mMzjEYjIWTTpk2FhYWv
vfaaZxoePXr0ypUr8nJ8fLz8tAxPKSkpO3bsAFBcXCyPdDCZTAzDFBUVHX+yi7EAAAdTSURBVD9+
fNSoUe7ndgDIz8/v27evnHp+fn6XLl1qdyKr7du3T506Va1W9+vXLz8//4MPPrBYLDNnzly7du1T
T93FfioaiD3EwLxfJw6fdeKjFxzNtbfe+nYolQo/v5CwsBA5RJxOl9lsrqmxulwOQASIUgmNhvHz
49VqjvXGRDiEEIdDNJkEo1Gw2USXizidxOUiLhcjSZwksYQw7guCbf9mjBihb/eCYCevIYaHp0+d
+get9qYD4bsWx3HJyckAEhISDhw4UFlZKb/0xDCMRqNpNahUFEVBEERRbLXeTafTZWdnz58/f+PG
jStWrHCvj4iISEpqGX/t+ewjN89pRlNSUuRDXb16deDAgU8++eT69etramrkq4oAvvvuu1//+vol
hcDAwLq6usTERM8D2u320tJS+bxYoVAsW7ZMnma0qKho8ODBgiAcOXIkISGh7Qf/6Wgg9hxBcekT
X95Zd+H789vfdJka7tK7KBR8cHBQUFDQj5FBXC7BbrfX19sdDjshAkAYhrAs4ThGrWbVakahYHme
4XmWv9N7GwVBcrkkQZCcTmKzSXa74HJBFIkgQBSJy0VEkZEkjhDW3fpzh1dXtZrb8vMLGTt2WUrK
fXfp+O1SKpXuuY15nv/4449/+9vfttqG5/mMjIyqqqq4uDj3yuLi4iVLllit1oMHD3pu/Pe//33C
hAkBAQERERHyk9TOnDlz4MABeaI8AGlpaW2vIXq6ePGiPDGz0+mU+77j4uKio6OnTp0KYMaMGdu2
bZMDsbS0NDY21rM9qNFoWj10E8CJEydatXzDwsJEUSwqKnr66ac//fTT6Ojoo0ePlpeXt51v5Sei
gdjTRPYbE/mbXVe/+XvF958SwXYP3pHneX9/f41G0+rWE0kSXS7BaHSJokCIKAiiJDl+TCiGEJFh
Ws5b3bFFCBiGACwhDCGSJDEAkSQQwhDCEMICDMATogBaN+IA+SD34q4JP7+Q0aOfSU2deA/e62Yk
SSovL7/Z89eGDh26adOmZ555Rr6id/z4cVEUo6OjCSE8zx86dOi+++4DUFJSUltbm56eXl1d7b41
54knnvif//mfAQMGxMbG3rKMa9eu7dy585FHHgEQHh4uP5XIz8+PZVmdThcVFVVbWys/1g3AsWPH
Ro0a5bl7bW1t28ntjx8/3vbpbPn5+WPHjmUYpqKiYsGCBY2Njfv27btlebeLBmLPlDJpScqkJVWF
X1Qc+kCyNXulBoZhFQoFzys822udG+PRsoZlCSFgWdJqLwDkJ/YH3yk/v9Ds7Mf79+944t67yGAw
vPjiiwAYhsnKypo9e7a83nMy0Oeee27IkCG1tbW/+93v+vTpI0lSaGjokiVL5L2eeuqpvXv3/uEP
f2BZluf5uXPntnqL4ODg+fPnb9iwQe59/uijjzzneXrjjTcAnDx58vz585IkJSQkzJo1KysrC8CI
ESPcITVnzpwtW7ZIkmQwGF544QUAoiiePn1a7oOWEUJEUdRqbxgv39jYaLPZ5O4gN4fDceXKlfvv
vx/A0KFD33//fZ1Od2ePtOwYvQ+x56s7s68q/0PBpGv3PsSWhcxINi2M4xiOY1mW5TiWZRmOu74A
4CZX2W64uNYm2lpn320F4p2+0S2HGF9/ox+PfLM3vb4yICB2xIinExJadyn4MkEQdDpdZGRk26c/
OhwOi8XiOZVnl/j888/nzJkjByghpKGhoYNpRs+dO1deXj5t2rRbHtZmswmC4I5Oq9WqVCrbTsf3
09FA7C2suisVB/5qrz7HMqCB2PlAZBhFYuKYIUN+HhBwj7pNurWKiorq6uq2PdHtev/99xcuXNjx
VKT3GD1l7i00UWkZi/4CSWo8u1t/Zoegr/Z2RT6O8fML6dv3wczMR37iFL+9SkJCQidvYJQkafr0
6T6VhqAtxF7LaahqOv6xrbyIdVoY2kL02NLfPzIh4b5+/fKUSvoAmV6HthB7KWVQXPSUVQAEQ43h
5FYhqEnCveiS9ll+fuGxsTkZGfM0Gnpq3HvRFiLVQpLsdvv3TmcJIY0cR3pDCxHgNZqY+PixaWkz
eP5ujQajuhHaQqRasKxao5mk0UwCIAhXBeEsUA4Y782dffcMw7AaTWRYWFZCwqSQkDRvl0P5FhqI
VDt4PoXnU358VQOcI6SCYZoIsXW7fGQYhucDNJrY0NAB0dGjtdrEW+9D9VY0EKlbigFi5J5DjgNQ
KYqXJamGYRoIMRHi8rWIZFleoQhUq6ODgtJCQgaFhLQ/loOi2qKBSN2ueI6Ll8dEKBSQh5CJYpUo
1klSoyAYATPgAsS7XwnLcUqGUSkUQWp1pL9/QkBAWlBQKsvSZ2NRd4h2qlB3iyQ1ulw6UawTRaMo
WiTJIoo2UbRLkkPu5yDESYg8VBmAJElEkiCPyiOEBTiGYQGeZRUM489xAQpFEM8Hq1QhSmWsRtPb
H/xC3Q00ECmKolrQW/ApiqJa0ECkKIpqQQORoiiqBQ1EiqKoFjQQKYqiWvx/WuvYRB/wCh4AAAAA
SUVORK5CYII=

--_006_1FFB62CE8AEB0D4298B51122D8903E9619FD1CA6IRSMSX104gercor_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=462;
	creation-date="Thu, 30 Jan 2014 15:37:03 GMT";
	modification-date="Thu, 30 Jan 2014 15:37:03 GMT"
Content-ID: <image003.gif@01CF1DE1.E2630120>
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

--_006_1FFB62CE8AEB0D4298B51122D8903E9619FD1CA6IRSMSX104gercor_
Content-Type: image/png; name="image004.png"
Content-Description: image004.png
Content-Disposition: inline; filename="image004.png"; size=101053;
	creation-date="Thu, 30 Jan 2014 15:37:03 GMT";
	modification-date="Thu, 30 Jan 2014 15:37:03 GMT"
Content-ID: <image004.png@01CF1DE1.E2630120>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAABSQAAAMTCAIAAAA3oo4FAAAAAXNSR0IArs4c6QAA/8pJREFUeF7s
nQm8VVXZ/2OehysoMiOgoqg5YRlQLzRpFvWWzQNUYINUUL0WJZZi0gwZTUIFlVZ/zYrMtAFSISuc
9SoqoMyCzDOX6f+997HVdp9zzz337LX2mX7nw+d+Dvus/ay1vmvt/axnrWc9q8WxY8deoo8IiIAI
iIAIiIAIiIAIiIAIiIAIiIA/Ai39iZIkERABERABERABERABERABERABERCBegIyttUPREAEREAE
REAEREAEREAEREAERMAzARnbnoFKnAiIgAiIgAiIgAiIgAiIgAiIgAi0iO7Zvv766/fu3SsoIiAC
IiACIiACmQR69Ohx2WWXeSdzww03bN261btYCRQBERABERABEUiBQI7hwYuM7ZkzZ06bNi2FAikL
ERABERABESg7AoG0ZCCxZYdXBRYBERABERCBciSQQ4/LjbwcG1RlFgEREAEREAEREAEREAEREAER
KGkCMrZLunlUOBEQAREQAREQAREQAREQAREQgXIkIGO7HFtNZRYBERABERABERABERABERABEShp
AjK2S7p5VDgREAEREAEREAEREAEREAEREIFyJCBjuxxbTWUWAREQAREQAREQAREQAREQAREoaQIy
tku6eVQ4ERABERABERABERABERABERCBciQgY7scW01lFgEREAEREAEREAEREAEREAERKGkCMrZL
unlUOBEQAREQAREQAREQAREQAREQgXIkIGO7HFtNZRYBERABERABERABERABERABEShpAjK2S7p5
VDgREAEREAEREAEREAEREAEREIFyJCBjuxxbTWUWAREQAREQAREQAREQAREQAREoaQIytku6eUq8
cM8++2z7hg9fmlvUf/zjHy1atOjevXtzb1T6UiZw+PDhAQMG0LIPPPBAKZczz7LRP6kLfTWWft++
ffbT448/nqcoJRMBERCBUiMgJV5qLaLy5Cbwla98hTEnyvfLX/6yWIlAuRCQsV0uLeW/nJs2bbJ3
lvu87GUv+8tf/uJy+vjHP85P733vexvL+8iRIwcbPnxpbvm4i1t27tzZ3BtLIT0mls0yVIZJ6RHp
n/70p7Vr15555pnnnnuuR7HFEmX90/pq9NOxY8fJkydz5aabbipW2ZSvCIhAlRNoUon/4Ac/QIkP
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
ZW+T6JlafPbs2RMnTnQ8G0vJhDqaPmqNl20TqOAiIAIiIAIi4J9ApjGMekXtZjWSly5dOnToUOdW
ZildmdC5rI2jc5njtjRuitx/uSVRBERABERABCqFQAtzBrPPzJkzp02bFq5q+IcvWbIkU74Z3qh2
RgAoe5cgWja7aCmx23GBQxTqHw+3xubdw1VEkkVABERABKqQQCAtGUgsDeTUbkxdZl5vLCVCUM2m
c6MtjjrG9o5Oo2f2hxtvvHHNmjVV2E9UZREQARGoHgKoj9GjR1dPfbPWNIceL76x3dgIwFngrkou
JT9F59SnTJmSw96Wsq/y3q/qi4AI+CIghRrIKg4k1oztBQsWYBXbZi5nG2dedwliyhfNO3369Jil
bTPjmRPisZ4Wrl6+urTkiIAIiIAIiEByArn0ne2Ots91110X/a/37yNHjozJxCENUzl6kTQWzYXr
ixYtcj9lpuQnEsRuzyxz6Ep5pySBIiACIiACpUkgkEIJJNa0pI0hTFc6TRq7zk9oXktpmtql5L9u
FMJF99+ogm6sscLVqzS7h0olAiIgAiJQnQRy6LuU9mzbgSJsCbMzRdxObBao2aQdPWtkxowZtm0M
7c4cfI6UySchJEEEREAEREAEKpgAatTGPeb/5XZix67zE6vfltIWsV1K/utGTlx0/83tQF7BSFU1
ERABERABEcifQErGNmreaWs0NP+1KGjRyQ/T3LERQI6UllgbtvNvbKUUAREQAREQAREQAREQAREQ
ARFIh0BKxnY6lVEuIiACIiACIiACIiACIiACIiACIlAKBGRsl0IrqAwiIAIiIAIiIAIiIAIiIAIi
IAIVRUDGdkU1pyojAiIgAiIgAiIgAiIgAiIgAiJQCgRkbJdCK6gMIiACIiACIiACIiACIiACIiAC
FUVAxnZFNacqIwIiIAIiIAIiIAIiIAIiIAIiUAoEZGyXQiuoDCIgAiIgAiIgAiIgAiIgAiIgAhVF
QMZ2RTWnKiMCIiACIiACIiACIiACIiACIlAKBGRsl0IrqAwiIAIiIAIiIAIiIAIiIAIiIAIVRUDG
dkU1pyojAiIgAiIgAiIgAiIgAiIgAiJQCgRkbJdCK6gMIiACIiACIiACIiACIiACIiACFUVAxnZF
NacqIwIiIAIiIAIiIAIiIAIiIAIiUAoEZGyXQiuoDCIgAiIgAiIgAiIgAiIgAmVG4Ghd3aPXXsO/
Iwf2l1nRVdxUCMjYTgWzMhEBERABERABERABERABEagsAivm3rDln/fy7/FvfqOyaqba+CEgY9sP
R0kRAREQAREQAREQAREQARGoHgLPL12y/k9/bNGqVetOnbC3n/nFz6qn7qppngRkbOcJSslEQARE
QAREQAREQAREQAREoJ7AgU2bll8/my9DPjTxjGlfxOR+9le/3Hz3XaIjAlECMrbVH0RABERABERA
BERABERABEQgXwLHjhyp/cZXD+/d2+OCl/V/81tqzj7n5I9+jJuXX/+d3U8/na8UpasCAjK2q6CR
VUUREAEREAEREAEREAEREAFPBPAY37V8ebuePU+b8mkT2ffiS/hHmLRHrvlS3fbtnvKRmLInIGO7
7JtQFRABERABERABERABERABEUiHwPaHHlx98//Db/z0z/xfm65dXaYsbrPEjaWNva3g5Om0Renn
ImO79NtIJRQBERABERABERABERABESg+AWzpx79VH3h84Dvf1f3Ms6IFwvwefsXnO/Tugyc5/uTF
L6tKUAIEZGyXQCOoCCIgAiIgAiIQgMDKlStbNHxGjRoVFZ95fd68eZaST2ZBuN1JmDp1qiVbvHhx
gCJLpAiIgAiUNIEnZn8be7vb6cMHvfPdmQVlofusL325VfsOREojXlpJ10SFS4WAjO1UMJdhJnsP
HP7Dv9Z+Zu6yD81aesWP75v1u8d/ddczix/euHzdzu176sqwQipyUgL76448vWHXXx/c8OM/P331
jQ9N+s4/PvGDf9FJ6CpJRadyf93ho3fev54u/ZHv3vu1Wx69fdm6Vc/tTiVnZSICRSMwfvz4FStW
HDt2bMSIEZjTrhxZry9atIiUfGLF5cYJEybYRRNiycaMGVO0iiljERABESgGAbzHt91/HxY1K9is
Y2ctQsd+/c+Y9gV+ZV8354EVo5jKs4QIyNguocYokaI8+uz2b95a+75v3P3D25/EtN60Y3/tmh2Y
WD9ftJLr2Cr8dOlXFn/8e/+89pcP33DHU5hb/35qy7otezFmSqQKKkZyAjHTmjkXGn3Kj/7NtMut
S1fT4hu27cNYpZOM/9Y937tt+erNe5JnGkgC00Pz/7qCcl6/8Am6NH317kc3UWYmC94x8+9X/fzB
m+95lm6vDhyIv8QWl8CQIUMowLhx42prazGVWZe28kSvZ5bQpWQNnBudXT1//vzJkycXt0bKXQRE
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
iYAIlAiBQMqPM4pkaZdIE6sYIiACIiACIiACIlDuBCrQ2KZJAg3Ey72xVX4REIHcBPTqUA8RAREQ
AREQAREQARHwRaAyjW1fdCRHBERABERABERABERABERABERABAogIGO7AGi6RQREQAREQAREQARE
QAREQAREQARyEZCxrf4hAiIgAiIgAiIgAiIgAiIgAiIgAp4JyNj2DFTiREAEREAEREAEREAEREAE
REAEREDGtvqACIiACIiACIiACIiACIiACIiACHgmIGPbM1CJEwEREAEREAEREAEREAEREAEREIEW
x44dcxRmzpw5bdo0QREBERABERABEcgkEEhL3nDDDVu3bhVwERABERABERCBciTQo0ePyy67LGvJ
ZWyXY4OqzCIgAiIgAkUgEMjYLkJNlKUIiIAIiIAIiEB4Ai8ytq+//vq9e/eGz1Q5iIAIiIAIiED5
EcgxdV1+lVGJRUAEREAEREAEAhN4kbEdOC+JFwEREAEREAEREAEREAEREAEREIGqIKAAaVXRzKqk
CIiACIiACIiACIiACIiACIhAmgRkbKdJW3mJgAiIgAiIgAiIgAiIgAiIgAhUBQEZ21XRzKqkCIiA
CIiACIiACIiACIiACIhAmgRkbKdJW3mJgAiIgAiIgAiIgAiIgAiIgAhUBQEZ21XRzKqkCIiACIiA
CIiACIiACIiACIhAmgRkbKdJW3mJgAiIgAiIgAiIgAiIgAiIgAhUBQEZ21XRzKqkCIiACIiACIiA
CIiACIiACIhAmgRkbKdJW3mJgAiIgAiIgAiIgAiIgAiIgAhUBQEZ21XRzKqkCIiACIiACIiACIiA
CIiACIhAmgRkbKdJW3mJgAiIgAiIgAiIgAiIgAiIgAhUBQEZ21XRzKqkCIiACIiACIiACIiACIiA
CIhAmgRkbKdJW3mJgAiIgAiIgAiIgAiIgAiIgAhUBQEZ21XRzKqkCIiACIiACIiACIiACIiACIhA
mgRkbKdJW3mJgAiIgAiIgAiIgAiIgAiIgAhUBQEZ21XRzKqkCIiACIiACIiACIiACIiACIhAmgRk
bKdJW3mJgAiIgAiIgAiIgAiIgAiIgAhUBQEZ21XRzKqkCIiACIiACIiACIiACIiACIhAmgRkbKdJ
W3mJgAiIgAiIgAiIgAiIgAiIgAhUBQEZ21XRzKqkCIiACIiACIiACIiACIiACIhAmgRkbKdJW3mJ
gAiIgAiIgAiIgAiIgAiIgAhUBQEZ21XRzKqkCIiACIiACIiACIiACIiACIhAmgRkbKdJW3mJgAiI
gAiIgAiIgAiIgAiIgAhUBQEZ21XRzKqkCIiACIiACIiACIiACIiACIhAmgRkbKdJW3mJgAiIgAiI
gAiIgAiIgAiIgAhUBQEZ21XRzKqkCIiACIiACIiACIiACIiACIhAmgRkbKdJW3mJgAiIgAiIgAiI
gAiIgAiIgAhUBQEZ21XRzKqkCIiACIiACIiACIiACIiACIhAmgRkbKdJW3mJgAiIgAiIgAiIgAiI
gAiIgAhUBYEWx44dq4qKqpIiIAIiIAIiUHoEbrjhhq1bt5ZeuVQiERABERABERCBZhPo0aPHZZdd
5m77r7Etfd9slrpBBERABESgygjElGjy2s+cOXPatGnJ5UiCCIiACIiACIhA0QnE1Pp/jW3p+6K3
jQogAiIgAiJQ4gS860rvAkscoIonAiIgAiIgAhVMIKbWtWe7gttaVRMBERABERABERABERABERAB
ESgOARnbxeGuXEVABERABERABERABERABERABCqYgIztCm5cVU0EREAEREAEREAEREAEREAERKA4
BGRsF4e7chUBERABERABERABERABERABEahgAjK2K7hxVTUREAEREAEREAEREAEREAEREIHiEJCx
XRzuylUEREAEREAEREAEREAEREAERKCCCcjYruDGVdVEQAREQAREQAREQAREQAREQASKQ0DGdnG4
K1cREAEREAEREAEREAEREAEREIEKJiBju4IbV1UTAREQAREQAREQAREQAREQAREoDgEZ28XhrlxF
QAREQAREQAREQAREQAREQAQqmICM7QpuXFVNBERABERABERABEqRQIsWLebNm9dYyfh16tSpOcqd
+/YcNyJ21KhRgYg0WWy/+TYGYeXKlfy0ePFiv9k1S1oplKFZBVZiEQhEQMZ2ILAS642Ava9zqGRv
OYUXFNXxaMGi68KgNa6khgsKSsJFQAREQAREQAREQAQqkoCM7Yps1nKtFJPN2J/2Ke6MbLkSVLlF
QAREQAREoPwJHDt2bNasWVaPMlojjRY7ayOwcsAIp/zbRzUQARHIl4CM7XxJKV1oAqZ+UFT2GTt2
rOU4ZMgQ/jtx4kQvBSgdnT1mzBjqxV8v9SpBIX4brgQrqCKJgAiIgAiIgAiIgAiIQA4CMrbVPUqC
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
+6PTEC5gW+B6S7wIiEDzCER3iPA+tA0s9sU+boc21riLX5gjZTRZ84qi1CIgAiIgAiJQfQRkbFdf
m1d6jV28bucyzVIta91Yp9El2aw+5GaouxVd0lhE7lJj5uronN6pLHHFKbzze7cl/WiccFvCyjMe
OENqbifEWmbdY5LBZY76+oiACIiACIiACIiACIiACDgCMrbVGSqQAKuymH/OEHVe1tHtiFl9yElg
x33Z0dMWPzxP6zRNjmbuRqcPbJog5hXPmpUd9+UO2bZ1rTw/xDEmZdYDyZBMXiYWlwELzKaPCIiA
CIiACIiACIiACIiAI6Cjv9QZqpRA9BCsKkWgaouACDSfgPeTurwLbH6dgtxRqfUKAktCRUAEREAE
KoVATP1pZbtSGlb1aA4BcxRvMu5uc0QqrQiIgAiIgAiIgAiIgAiIgAj8l4CMbfWGaiTAFu7MOOQl
AoKJAOf4nfmlRAqpYoiACIiACIiACIiACIiACOQmIGNbPaQaCbDl2MXgLbX6s0XcBQrO/FJqpVV5
REAEREAEREAEREAEREAEshKQsa2OIQIiIAIiIAIiIAIiIAIiIAIiIAKeCcjY9gxU4kRABERABERA
BERABERABERABERAxrb6gAiIgAiIgAiIgAiIgAiIgAiIgAh4JiBj2zNQiRMBERABERABERABERAB
ERABERABGdvqAyIgAiIgAiIgAiIgAiIgAiIgAiLgmYCMbc9AJU4EREAEREAEREAEREAEREAEREAE
ZGyrD4iACIiACIiACIiACIiACIiACIiAZwIytj0DlTgREAEREAEREAEREAEREAEREAERkLGtPiAC
IiACIiACIiACIiACIiACIiACngnI2PYMVOJEQAREQAREQAREQAREQAREQAREIA1je+rUqS0aPnyB
+MqVK+2/o0aNUgOIgAiIgAiIgAiIgAiIgAiIgAiIQOURSMPYnjVr1rGGz+zZs7G0x48fv2LFCv47
YsSIefPmVR5T1UgEREAEREAEREAEREAEREAERKDKCaRhbEcRDxkyhP/a33HjxtXW1lZ5A6j6IiAC
IiACIiACIiACIiACIiAClUcgDWPb+Y0vWrSI75UHUTUSAREQAREQAREQAREQAREQAREQgSiBFrhz
2/9nzpw5bdq0oHTYs81q9vTp05csWUJGixcvXrhwIU7mOTK98cYb16xZE7RUEi4CIiACOQgQXWL0
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
u+46vkybNs1tg2wHyVI2fPjwtma2cbZJn8GJSVsw4i1znNh1/uXC1zOc2eaKpK12cNxMex5w5e0S
4XzINOp5F5g3FOkvFK5erz3/zh2/fqzz0FVf+OaHh/U7OCZ1kRoiIAIiIAIikCGBEne277jt1tce
bhz1/ppJX/1chkQoFvS0awcPPeyqq2t69878dJUUAREQgeIiEFwBXlyaF1zbcD6knO0MG+4fdzz3
1D9e7/GeN8/9xsU1VV0zPEvFREAEREAERCAmBGKxz3buWKxZug3hewzrm/kl8LSvvP7Bo5++hTlt
edqZc1NJERABERABEfBLYOnbKxDYe49aedp+wUqaCIiACIhAQQgUZuuv3FV186pEIqUx+2S6Oee7
nvazs3rv2tRp2AjNaeeuaSRZBEQgPgTIguZizuOjlTQRgVVLNgNhxOis85sKnQiIgAiIgAjEkEBJ
Ods7dm6p39SlY2XziJF7ZsLaedqk9e66z/7vu/ZaRY9nwk1lREAEREAERMA7AbKjNdS1kB1t6B7v
ZivwfgkJFAEREAEREIF8EigpZ3v+/Ndh17l3Y0VF+zts42n/9NrZRz87yzztQ3/8I+UMy+edp2uJ
gAiIgAiIQJDAyiWJBKU1fTcP6JlpeJoAioAIiIAIiECcCZSUs/32/KWw7juktl3ieNo/u/ZvRz33
R3na7bJSAREQAREQARHIA4F3Fib23ezUb2efbsPzcDldQgREQAREQARyTaCknO3VSzbBa48RfdJT
M097/HO31TTX93z/Bw+/+mrNaef6PpN8ERABERABEUhPYPnilRToPySxb6U+IiACIiACIlACBErK
2d68qpEm2WvMnmkaBk/7F9fc4TztQ773PduhWh8REAEREAEREIECElj9TmI/kT1HDymgDrq0CIiA
CIiACHgkUDrOdkNj/c6NnUAzZsy+bQHC0/71T/40/l9/tjltedoe7ySJEgEREAEREIHQBLZs3FG/
s0NFbf2IofuEFqITRUAEREAERCBWBErH2V7w1ryWpopOvXfV1Fa1itg87SNe+ktFS/OAj5wiTztW
N6KUEQEREAERKGcCy95eQ/Vr+m4c2EvZ0cr5RlDdRUAERKCkCJSOs/32W2/TMr0H1bTlad/w45nO
0x779a8rerykbmRVRgREQAREoJgJLJyfMOI9BnaoqepazPWQ7iIgAiIgAiLwXwKl42yvWrqJag0Y
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
s50FLBUVAREQAREQAREQAREQAREQAREQgUwIyNnOhJLKiIAIiIAIiIAIiIAIiIAIiIAIiEAWBORs
ZwFLRUVABERABERABGJLYOvWrbHVrUgVK3Okuag+Mjds2FCk90M81W5sbPzHP/7hVzdkfuxjH1uw
YIFfsZJWhgTkbL/b6Ll4n5b8/VQm0Orq6njn+mpNWdkQJGmChx9+OMSJrZ4yZ86cCy+80Jc0yREB
EYgJgXfeeeeQQw5Zu3ZtTPRJowbvtMcff5zfHlXlJfnhD3/Y46sS3XKBFD/ziSee8FhxE3XTTTed
ddZZHo01MoH5ne98x6+q8+fPP+WUU7Zv3+5X7KJFi2677bbXXnvNr1ikcZc++OCDvsA+/fTT3p9Q
dPv2t789depUhHus/v/+7/8edthh7FLs9zn1qKFEFQsBOduJlsqFOfF1B3g0yVi4c3d/vAyp+oWG
SfP4OvNodNHq1FNPffPNN700qF8ri4HBBP7973/3iM6LWfXbl7ImOPPMM5cvX+6lFa666qpvfetb
HqF50UpCREAEIhIYMWLE7NmzjzjiCI+9+aVLl+LBXnfddb6cDer49ttvn3jiibfccsv48eN9icWG
3nHHHVdccQWvyueeey4iSXd6LpCi6umnn+53UACFV6xYMXz48K9+9asekdKXuP76633BNDnf/e53
//rXvw4bNgw9fc1Y0LWYNm1a3759zz777Msvv9yjwljzCRMmDBo0yJfMm2++2e8Tap42Mv/4xz8i
3JeeyHnf+9732GOP0Wf+/e9/71GsRJUhATnbiUb3a054O2ObX3/99ej3k0eTzPvotNNO++QnP9mv
X78zzjgjum5+oTHTePLJJ/vyf3wZXXPzvv/9748dOzY6Me9W9nvf+x4dwSVLlhxwwAHY2uga+jKr
HvtSrgmmT5/+l7/8JXodkXDBBRd89rOf5XFYvXq1F4ESIgIiEBMC+++/v0d/m1filClTfve73736
6qt33323rzpeeeWVt95668yZM+nN8+r24nEh7YYbbkDgrFmz7rzzTl+qIscvUgS+8MILc+fOxej7
9bcJauDzgQ98AH975cqVGMeIEH7yk58wWVpVVYVvDIQvf/nLXtz4devW9enT58UXX9x3331HjRrF
EElEPTmdbuc111xDz/Of//wnXQL8+egyTcKzzz7L8M1BBx0EB18y8Yp9+dvcQvTQkPaZz3yG38xF
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
I0D3+yc/+clJJ5104403RtRND35EgDq9bAnkw9km2RLhJazlMH+bLQGIGx86dCjHy5a7Ki4CXghE
t6N6PL00hISIQBkSwN8+5phjLrjggquuuqoMq68qi0D8CbDE42c/+9m///1vjwuq9eDHv92lYawI
5MPZdhXmUSdv4QknnMBy0DFjxsQKhJQRgWIk4NGO6vEsxhtAOotAAQm8/fbb5EZ68MEHtVyzgK2g
S4tAGgLEu7GE06OnzbX04OuWE4GsCOTV2Uaza6655tFHH2U6ListVVgERKBVAn7tqB5P3WYiIAKZ
Exg+fPi9994rTztzYiopAvknEC73eBo99eDnvxF1xaImkG9n+/LLL5enXdR3jJSPGwGPdlSPZ9wa
V/qIQJwJ4GbL045zA0k3EcgFAT34uaAqmSVMIN/OtkfHoIRbRVUTgYIQ0ONZEOy6qAiIgAiIgAiI
gAiIQEkSyLezXZIQVSkREAEREAEREAEREAEREAEREAERCBKQs637QQREQAREQAREQAREQAREQARE
QAQ8E5Cz7RmoxImACIiACIiACIiACIiACIiACIiAnG3dAyIgAiIgAiIgAiIgAiIgAiIgAiLgmYCc
bc9AJU4EREAEREAEREAEREAEREAEREAE5GzrHhABERABERABERABERABERABERABzwTkbHsGKnEi
IAIiIAIiIAIiIAIiIAIiIAIi0LGlpcUoTJ8+/aKLLhIRERABERABERCBtgh4t5U33njj+vXrBVwE
REAEREAERKAECPTt2/fss892Ffmvsy17XwKtqyqIgAiIgAjklECSEc3ptSRcBERABERABESgqAn8
19ku6mpIeREQAREQAREQAREQAREQAREQARGIDwGt2Y5PW0gTERABERABERABERABERABERCBEiEg
Z7tEGlLVEAEREAEREAEREAEREAEREAERiA+B/w+Dd46HPCi5kgAAAABJRU5ErkJggg==

--_006_1FFB62CE8AEB0D4298B51122D8903E9619FD1CA6IRSMSX104gercor_--
