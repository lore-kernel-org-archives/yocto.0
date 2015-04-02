Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB1C1E00952; Thu,  2 Apr 2015 09:42:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84BBFE00949
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 09:42:52 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 02 Apr 2015 09:42:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,512,1422950400"; d="scan'208";a="476006203"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by FMSMGA003.fm.intel.com with ESMTP; 02 Apr 2015 09:42:52 -0700
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Thu, 2 Apr 2015 17:42:01 +0100
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.247]) by
	irsmsx155.ger.corp.intel.com ([169.254.14.178]) with mapi id
	14.03.0224.002; Thu, 2 Apr 2015 17:42:01 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.8_M4.rc1 Full Pass test report.
Thread-Index: AQHQbWPxCbhoG1PnNUeThG/uCRMrCA==
Date: Thu, 2 Apr 2015 16:42:01 +0000
Message-ID: <D1434C07.19040%alexandru.c.georgescu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.8.150116
x-originating-ip: [10.252.44.56]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Yocto 1.8_M4.rc1 Full Pass test report.
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
X-List-Received-Date: Thu, 02 Apr 2015 16:42:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-2022-jp"
Content-ID: <C1C7E6CA2D17314CABF9471C1C2EFDD3@intel.com>
Content-Transfer-Encoding: quoted-printable

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

Test Run        Test Plan       Environment     Passed  Other issues    Fai=
led  Failing bugs    Blocked Blocking bugs   Complete
3645<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3645> 3646<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3646> ADT: maste=
r branch      Fedora 21 i686  98.5%   none    1.5%    7536<https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D7536> 7545<https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D7545>       0.0%    none    100.0%
3647<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3647> 3648<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3648> ADT: maste=
r branch      Ubuntu 14.04 x86_64     98.5%   none    1.5%    7536<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7536> 7545<https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D7545>       0.0%    none    100.0%
3651<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3651> 3652<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3652> BSP/QEMU: =
master branch Beaglebone Black        98.7%   none    1.3%    7543<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7543>    0.0%    none    100.0%
3657<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3657> 3658<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3658> BSP/QEMU: =
master branch EdgeRouter      100.0%  none    0.0%    none    0.0%    none =
   100.0%
3632<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3632> 3633<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3633> BSP/QEMU: =
master branch generic-x86 on AtomPC   98.8%   none    1.2%    7532<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7532>    0.0%    none    100.0%
3630<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3630> 3631<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3631> BSP/QEMU: =
master branch genericx86-64 on Sugarbay       100.0%  none    0.0%    none =
   0.0%    none    100.0%
3659<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3659> 3660<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3660> BSP/QEMU: =
master branch MPC8315e-rdb    100.0%  none    0.0%    none    0.0%    none =
   100.0%
3653<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3653> 3655<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3655> BSP/QEMU: =
master branch P1022ds 100.0%  none    0.0%    none    0.0%    none    100.0=
%
3634<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3634> 3635<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3635> BSP/QEMU: =
master branch qemu-x86        100.0%  none    0.0%    none    0.0%    none =
   100.0%
3638<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3638> 3639<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3639> BSP/QEMU: =
master branch qemuarm 100.0%  none    0.0%    none    0.0%    none    100.0=
%
3640<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3640> 3641<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3641> BSP/QEMU: =
master branch qemumips        100.0%  none    0.0%    none    0.0%    none =
   100.0%
3642<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3642> 3643<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3643> BSP/QEMU: =
master branch qemuppc 100.0%  7236<https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D7236>    0.0%    none    0.0%    none    100.0%
3636<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3636> 3637<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3637> BSP/QEMU: =
master branch qemux86-64      100.0%  none    0.0%    none    0.0%    none =
   100.0%
3625<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3625>     E=
clipse Plugin: master branch   Fedora 21 x86_64        33.3%   7530<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D7530>    3.0%    5163<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163> 7530<https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D7530>       63.6%   7530<https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D7530>    100.0%
3649<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3649> 3650<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3650> Meta-yocto=
: master branch       Ubuntu 14.04 x86_64     100.0%  6156<https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D6156>    0.0%    none    0.0%    none  =
  100.0%
3622<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3622> 3623<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3623> Hob: maste=
r branch      Ubuntu 14.10 x86_64     95.6%   none    0.0%    none    4.4% =
   none    100.0%
3616<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3616> 3617<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3617> 3618<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3618>3619<https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3619>  Toaster: master bran=
ch  Ubuntu 14.10 x86_64     90.5%   7025<https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D7025>    7.8%    5187<https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D5187> 7537<https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D7537> 7026<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7026>71=
98<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198>      1.7%    n=
one    100.0%
3626<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3626> 3627<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3627> OE-Core: m=
aster branch  Ubuntu 14.10 x86_64     96.6%   none    3.4%    7522<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D7522>    0.0%    none    100.0%
3628<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3628> 3629<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3629> BitBake: m=
aster branch  Ubuntu 14.10 x86_64     97.4%   none    0.0%    none    2.6% =
   none    100.0%
3644<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3644>     R=
untime: master branch  Ubuntu 14.10 x86_64     100.0%  none    0.0%    none=
    0.0%    none    100.0%
3661<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3661>     B=
uild Appliance: master branch  qemu-kvm on Ubuntu 12.04 libvirt        100.=
0%  7426<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7426> 7544<htt=
ps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7544>       0.0%    none  =
  0.0%    none    100.0%
Total: 21


[Bug Status]


Test Case Status Report

Status  Count
BLOCKED 26
FAILED  17
PASSED  1268
Total: 1311
        [http://chart.apis.google.com/chart?cht=3Dbvg&chs=3D372x120&chbh=3D=
a&chds=3D0,1268&chxt=3Dy&chxr=3D0,0,1268,211&chd=3Dt:&chd=3Dt:26,17,1268&ch=
co=3DFFFF66|FF9933|00FF00&chdl=3DBLOCKED(26)+2%|FAILED(17)+1%|PASSED(1268)+=
97%]




Bugs Found during QA Test
New and notable issues Found during QA Test & Community
ID      Summary (7 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/bu=
glist.cgi?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D7426&field0-=
0-1=3Dbug_id&type0-0-1=3Dequals&value0-0-1=3D%207522&field0-0-2=3Dbug_id&ty=
pe0-0-2=3Dequals&value0-0-2=3D%207530&field0-0-3=3Dbug_id&type0-0-3=3Dequal=
s&value0-0-3=3D%207532&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D=
%207536&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%207543&field0-=
0-6=3Dbug_id&type0-0-6=3Dequals&value0-0-6=3D%207545&field0-1-0=3Dbug_statu=
s&type0-1-0=3Dnotequals&value0-1-0=3DCLOSED>  P       Assignee        QA   =
   Milestone       Status  Resolution      cf_regression_type      Created
ADT
7536<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7536>    The manif=
est file is empty for sdk ext  Medium  Randy Witt      Yi Zhao 1.9     NEW =
            New (Never tested)      2015-03-30
7545<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7545>    Failed to=
 install sdk ext       Medium  Randy Witt      Yi Zhao 1.9 M1  NEW         =
    New (Never tested)      2015-03-31
BSPs
7543<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7543>    [Beaglebo=
neBlack] some error message in Xorg.log        Low     Kevin Hao       Yi Z=
hao 1.9     NEW             New (Never tested)      2015-03-31
7532<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7532>    LogParser=
: Fast TSC calibration failed  Medium  Saul Wold       Lucian Musat    1.9 =
    NEW             New (Never tested)      2015-03-27
Eclipse Plugin
7530<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7530>    QEMU does=
 not start when run as external tool   Medium  Cristian Iorga  Mihail Stanc=
iu  1.8 M4  NEW             Regression (Used to work)       2015-03-27
Hob
7426<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7426>    [HOB]when=
 build qemu images, there's no "ext4" option in "advanced configuration"   =
    Undecided       Richard Purdie          ---     RESOLVED        FIXED  =
 ---     2015-03-09
OE-Core
7522<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7522>    missing f=
ile "sstate-build-populate_lic" during oe-selftest     Medium+ Richard Purd=
ie  Mihail Stanciu  1.8 M4  RESOLVED        FIXED   Regression (Used to wor=
k)       2015-03-26


Other Bugs found during QA Test (including regressions)
ID      Summary (11 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/b=
uglist.cgi?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D5163&field0=
-0-1=3Dbug_id&type0-0-1=3Dequals&value0-0-1=3D%205187&field0-0-2=3Dbug_id&t=
ype0-0-2=3Dequals&value0-0-2=3D%206156&field0-0-3=3Dbug_id&type0-0-3=3Dequa=
ls&value0-0-3=3D%207025&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=
=3D%207026&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%207198&fiel=
d0-0-6=3Dbug_id&type0-0-6=3Dequals&value0-0-6=3D%207236&field0-0-7=3Dbug_id=
&type0-0-7=3Dequals&value0-0-7=3D%207529&field0-0-8=3Dbug_id&type0-0-8=3Deq=
uals&value0-0-8=3D%207531&field0-0-9=3Dbug_id&type0-0-9=3Dequals&value0-0-9=
=3D%207537&field0-0-10=3Dbug_id&type0-0-10=3Dequals&value0-0-10=3D%207544&f=
ield0-1-0=3Dbug_status&type0-1-0=3Dnotequals&value0-1-0=3DCLOSED>      P   =
    Assignee        QA      Milestone       Status  Resolution      cf_regr=
ession_type      Created
---
5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>    no extern=
al tools displayed when first trying to run QEMU - test case 48 failed on U=
buntu 12.04 x86-64 host(build 1.5 M4 rc2)   Medium  David Reyna            =
 Future  ACCEPTED                ---     2013-09-11
Toaster
5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>    same cook=
er log file name used for several builds       Medium  Richard Purdie      =
    1.8     ACCEPTED                ---     2013-09-13
New (Never tested)
7025<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7025>    View all =
targets: graphical overlap in table    Medium  Belen Barros Pena       Miha=
il Stanciu  1.8 M4  NEW             New (Never tested)      2014-12-03
7026<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7026>    All layer=
s page: Sorting does not work  Medium  Michael Wood    Mihail Stanciu  1.8 =
M4  REOPENED                New (Never tested)      2014-12-03
Regression (Used to work)
7544<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7544>    [Build Ap=
pliance] Hob exception when build an image     Undecided       Cristian Ior=
ga  Yi Zhao ---     RESOLVED        WORKSFORME      Regression (Used to wor=
k)       2015-03-31
OE-Core
6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>    [crosstap=
] no trace message output on qemuarm   Medium  Tom Zanussi             1.8 =
    ACCEPTED                Regression (Used to work)       2014-04-14
7531<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7531>    Createme =
command not found during build Medium+ Ross Burton     Mihail Stanciu  1.8 =
M4  RESOLVED        FIXED   Regression (Used to work)       2015-03-27
7529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7529>    Package b=
uild errors - files being changed while read   Undecided       Richard Purd=
ie  Mihail Stanciu  ---     RESOLVED        FIXED   Regression (Used to wor=
k)       2015-03-27
System Startup
7236<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236>    The color=
 of splash screen for qemuppc is strange       Medium  Saul Wold       Yi Z=
hao 1.8     NEW             Regression (Used to work)       2015-01-23
Toaster
7198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198>    Hiding a =
sorted column does not revert to default sorting       Medium  Michael Wood=
    Mihail Stanciu  1.8 M4  IN PROGRESS REVIEW              Regression (Use=
d to work)       2015-01-20
7537<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7537>    Toaster f=
ails to build with custom layer added  Undecided       Alexandru Damian    =
    Mihail Stanciu  ---     VERIFIED        NOTABUG Regression (Used to wor=
k)       2015-03-30




Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania

