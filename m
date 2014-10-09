Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31E3EE00860; Thu,  9 Oct 2014 05:43:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NORMAL_HTTP_TO_IP,
	RCVD_IN_DNSWL_HI,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A95F6E00848
	for <yocto@yoctoproject.org>; Thu,  9 Oct 2014 05:43:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 09 Oct 2014 05:33:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,684,1406617200"; d="scan'208";a="602796019"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga001.fm.intel.com with ESMTP; 09 Oct 2014 05:43:25 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Thu, 9 Oct 2014 13:43:25 +0100
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.199]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.42]) with mapi id
	14.03.0195.001; Thu, 9 Oct 2014 13:43:24 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.7_M4.rc3 Full Pass report
Thread-Index: AQHP4732enfYq/59Y0yw7eQv/t79M5wn1pMA
Date: Thu, 9 Oct 2014 12:43:24 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9622401F30@IRSMSX110.ger.corp.intel.com>
References: <D05C4666.BBCC%alexandru.c.georgescu@intel.com>
In-Reply-To: <D05C4666.BBCC%alexandru.c.georgescu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.4.140807
x-originating-ip: [10.19.9.46]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Yocto 1.7_M4.rc3 Full Pass report
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
X-List-Received-Date: Thu, 09 Oct 2014 12:43:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <1C6CA42442403045AB1BB690C757C214@intel.com>
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the Full Pass test report for Yocto 1.7_M4.rc3 build.

Status summary:

  *   #6810<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6810> - Mou=
se does not work in X window for all QEMU images.
  *   #6815<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6815> =96 O=
n Ubuntu Host, X doesn=92t show up for QEMUPPC
  *   #6793<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6793> - Con=
figure fail using adt-installer on sudoku-savant because of wrong SDKTARGET=
SYSROOT
  *   #6613<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6613> - C++=
 compiler does not work for ppce500v2 cross toolchain was reopened. #6766 w=
as fixed but still remains for ppce500v2
  *   All buildsets were built successfully on Distro testing, with #6811<h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6811> and #<https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D6811>6812<https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D6812> sanity tests failed (new dmesg errors foun=
d)
  *   On Build performance side<https://wiki.yoctoproject.org/charts/perf_m=
ilestone/performance_test.html>, building kernel takes by 20 seconds longer=
 on average for both hosts, very possible a result of the kernel upgrade to=
 3.17. The rootfs build time remained the same around 4:18 and 4:14 for Fed=
ora and Ubuntu hosts. Building a sato image (with rmwork enabled) improved =
by 40 seconds on Fedora machine (1:10:57) and decreased by 15 seconds on Ub=
untu machine (1:09:01) on average.

Issue summary can be found below and as reference, the full pass report is =
available here: https://wiki.yoctoproject.org/wiki/WW40_-_2014-10-02_-_Full=
_Pass_-_1.7_M4.rc3.

Testing data

 Test type:  Full Pass Release Test
 Branch: master
 Build name: 1.7_M4.rc3
 poky commit: 5367855fe56db0c09b8fa7bb423b9de18d11eecc
 Eclipse Plugin commit Kepler: 4a167fd662262ebdaa3cf0d332ac0debb52d7904
 Autobuilder images repository:  http://autobuilder.yoctoproject.org/pub/re=
leases/yocto-1.7.rc3/
 Distributions tested: Ubuntu 14.04 64bit, Fedora 20 64bit, Opensuse 13.1 6=
4bit, CentOS 6.5 64 bit


Summary Report
Testing Summary Report

Test Run        Test Plan       Environment     Passed  Other issues    Fai=
led  Failing bugs    Blocked Blocking bugs   Complete
2976<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2976> 2975<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2975> ADT: maste=
r branch      Fedora 20 x86_64        72.0%   6793<https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D6793>    6.8%    6613<https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D6613>    21.2%   6793<https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D6793>    100.0%
2979<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2979>     B=
SP/QEMU: master branch Beaglebone Black        100.0%  none    0.0%    none=
    0.0%    none    100.0%
2978<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2978>     B=
SP/QEMU: master branch EdgeRouter      97.6%   none    2.4%    6820<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D6820>    0.0%    none    100.0=
%
2971<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2971>     B=
SP/QEMU: master branch generic-x86 on Atom N2600       100.0%  none    0.0%=
    none    0.0%    none    100.0%
2967<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2967>     B=
SP/QEMU: master branch generic-x86 on AtomPC   97.4%   none    2.6%    6814=
<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6814>    0.0%    none =
   100.0%
2970<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2970>     B=
SP/QEMU: master branch genericx86-64 on NUC    97.7%   none    2.3%    6583=
<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6583>    0.0%    none =
   100.0%
2939<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2939> 2962<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2962> BSP/QEMU: =
master branch qemu-x86        96.7%   none    3.3%    6810<https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D6810> 6812<https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D6812>       0.0%    none    100.0%
2941<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2941> 2964<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2964> BSP/QEMU: =
master branch qemuarm 98.4%   none    1.6%    6810<https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D6810>    0.0%    none    100.0%
2942<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2942> 2961<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2961> BSP/QEMU: =
master branch qemumips        96.7%   none    3.3%    6810<https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D6810> 6811<https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D6811>       0.0%    none    100.0%
2943<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2943> 2965<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2965>2974<https:=
//bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2974>      BSP/QEMU: m=
aster branch qemuppc 77.9%   none    2.6%    6810<https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D6810> 6815<https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D6815>       19.5%   6815<https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D6815>    100.0%
2940<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2940> 2963<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2963> BSP/QEMU: =
master branch qemux86-64      96.7%   none    3.3%    6810<https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D6810> 6811<https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D6811>       0.0%    none    100.0%
2977<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2977>     E=
clipse Plugin: master branch   Fedora 20 x86_64        87.9%   none    0.0%=
    none    12.1%   6766<https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D6766>    100.0%
2946<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2946> 2947<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2947> Meta-yocto=
: master branch       Ubuntu 14.04 x86_64     100.0%  6162<https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D6162>    0.0%    none    0.0%    none  =
  100.0%
2944<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2944> 2952<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2952> Hob: maste=
r branch      Ubuntu 14.04 x86_64     97.8%   none    0.0%    none    2.2% =
   none    100.0%
2972<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2972>     T=
oaster: master branch  Fedora 20 x86_64        96.7%   none    3.3%    6684=
<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6684>    0.0%    none =
   100.0%
2960<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2960>     T=
oaster: master branch  Ubuntu 14.04 LTS x86_64 81.0%   none    19.0%   5187=
<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187> 6681<https://bug=
zilla.yoctoproject.org/show_bug.cgi?id=3D6681> 6800<https://bugzilla.yoctop=
roject.org/show_bug.cgi?id=3D6800> 6799<https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D6799> 6802<https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D6802>5844<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844> 68=
01<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6801> 6688<https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D6688>  0.0%    none    100.0%
2953<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2953> 2954<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2954> OE-Core: m=
aster branch  Ubuntu 14.04 x86_64     93.1%   none    6.9%    6804<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6804>    0.0%    none    100.0%
2948<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2948> 2949<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2949> BitBake: m=
aster branch  Ubuntu 14.04 x86_64     91.9%   6752<https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D6752>    5.4%    6752<https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D6752>    2.7%    none    100.0%
2968<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2968>     R=
untime: master branch  Multiple Environments   100.0%  none    0.0%    none=
    0.0%    none    100.0%
2973<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2973>     B=
uild Appliance: master branch  VMWare Player on Fedora 20 64bit        100.=
0%  none    0.0%    none    0.0%    none    100.0%
Total: 20


Test Case Status Report

Status  Count
BLOCKED 46
FAILED  33
PASSED  826
PAUSED  3
Total: 908
        [http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:=
&chd=3Dt:46,33,826,3&chco=3DFFFF66|FF9933|00FF00|3366FF&chl=3DBLOCKED(46)+5=
%|FAILED(33)+4%|PASSED(826)+91%|PAUSED(3)+0%]

Bug Status Report

[Bug Status]

ID[?]<https://wiki.yoctoproject.org/wiki/WW40_-_2014-10-02_-_Full_Pass_-_1.=
7_M4.rc3#>   Priority[?]<https://wiki.yoctoproject.org/wiki/WW40_-_2014-10-=
02_-_Full_Pass_-_1.7_M4.rc3#>     Status[?]<https://wiki.yoctoproject.org/w=
iki/WW40_-_2014-10-02_-_Full_Pass_-_1.7_M4.rc3#>       Resolution[?]<https:=
//wiki.yoctoproject.org/wiki/WW40_-_2014-10-02_-_Full_Pass_-_1.7_M4.rc3#>  =
 Test Runs[?]<https://wiki.yoctoproject.org/wiki/WW40_-_2014-10-02_-_Full_P=
ass_-_1.7_M4.rc3#>    Description[?]<https://wiki.yoctoproject.org/wiki/WW4=
0_-_2014-10-02_-_Full_Pass_-_1.7_M4.rc3#>  Version[?]<https://wiki.yoctopro=
ject.org/wiki/WW40_-_2014-10-02_-_Full_Pass_-_1.7_M4.rc3#>      Target Mile=
stone[?]<https://wiki.yoctoproject.org/wiki/WW40_-_2014-10-02_-_Full_Pass_-=
_1.7_M4.rc3#>     Age (days)[?]<https://wiki.yoctoproject.org/wiki/WW40_-_2=
014-10-02_-_Full_Pass_-_1.7_M4.rc3#>
5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>    Medium  A=
CCEPTED                2960<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2960>     same cooker log file name used for several builds    =
   unspecified     1.8     384
5844<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844>    Medium  A=
CCEPTED                2960<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2960>     Wrong script_type when task is not executed.    unspe=
cified     1.7 M4  226
6162<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6162>    Medium+ R=
EOPENED                2947<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2947>     linux-yocto failed to do_patch after add a patch by y=
octo-kernel tool   1.6     1.7     170
6583<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6583>    Medium  I=
N PROGRESS REVIEW              2970<https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2970>     [Test Case 972] Xorg log: Failed to load modu=
le "present"       1.7     1.7 M4  66
6613<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6613>    Medium  R=
EOPENED                2976<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2976>     C++ compiler does not work for ppce500v2 cross toolch=
ain        1.7     1.7     57
6681<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6681>    Medium  N=
EW             2960<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_i=
d=3D2960>     Check if the number of errors from Build table matches the nu=
mber of level entries with value 2 from LogMessage table.  1.7     1.7 M4  =
28
6684<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6684>    Medium  N=
EW             2972<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_i=
d=3D2972>     The content of the license column shouldn't be 4.0k.    1.7  =
   1.7 M4  27
6688<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6688>    Medium  N=
EW             2960<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_i=
d=3D2960>     Build image using managed mode - Toaster web interface tries =
to load from address http://0.0.0.0:8000   1.7     1.8     27
6752<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6752>    Medium  N=
EW             2948<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_i=
d=3D2948>     bitbake-prserv-tool has issues when it comes to exporting the=
 PR database       1.7     1.7 M4  9
6766<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6766>    High    R=
ESOLVED        FIXED   2977<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2977>     adt installed toolchain compilation error under ALL A=
RCHs with build yocto_1.7.rc1      1.7     1.7 M4  6 (Recent)
6793<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6793>    Medium+ R=
ESOLVED        FIXED   2976<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2976>     configure fail using adt-installer on sudoku-savant b=
ecause of wrong SDKTARGETSYSROOT   1.7     1.7 M4  NEW
6799<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6799>    Undecided=
       NEW             2960<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2960>     cpu_usage value 0 for tasks with outcome=3D0      1.7=
     ---     NEW
6800<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6800>    Undecided=
       NEW             2960<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2960>     elapsed_time value null for tasks with outcome=3D0   =
     1.7     ---     NEW
6801<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6801>    Undecided=
       RESOLVED        NOTABUG 2960<https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2960>     Toaster UI - create project doesn't work     =
   1.7     ---     NEW
6802<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6802>    Undecided=
       NEW             2960<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2960>     Lots of empty fields in the database.   1.7     ---  =
   NEW
6804<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6804>    Undecided=
       NEW             2954<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2954>     do_rootfs fails for btrfs image build   1.7     ---  =
   NEW
6810<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6810>    High    I=
N PROGRESS IMPLEMENTATION              2942<https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2942> 2940<https://bugzilla.yoctoproject.org/tr=
_show_run.cgi?run_id=3D2940> 2943<https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D2943> 2941<https://bugzilla.yoctoproject.org/tr_show_run.=
cgi?run_id=3D2941>2939<https://bugzilla.yoctoproject.org/tr_show_run.cgi?ru=
n_id=3D2939>      Mouse does not work in X window 1.7     1.7 M4  NEW
6811<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6811>    Undecided=
       NEW             2961<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2961> 2963<https://bugzilla.yoctoproject.org/tr_show_run.cgi?ru=
n_id=3D2963> usbhid: probe of 1-1:1.0 failed with error -32  1.7     ---   =
  NEW
6812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6812>    Undecided=
       NEW             2962<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2962>     uvesafb errors in dmesg for qemux86     1.7     ---  =
   NEW
6814<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6814>    Undecided=
       NEW             2967<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2967>     rpm log file size stays the same no matter what 1.7  =
   ---     NEW
6815<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6815>    Undecided=
       NEW             2974<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2974>     Yocto image qemuppc do not boot and OS not load 1.7  =
   ---     NEW
6820<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6820>    Undecided=
       NEW             2978<https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2978>     dmesg err in BeagleBone Black   unspecified     ---  =
   NEW
Total: 22




Distro Testing

Distro Testing is intended to catch bugs that are distribution specific usi=
ng the yocto-autobuilder. The tests are all run on identical hardware and w=
ith all OS-es updated. The distributions used will be Fedora, Ubuntu, CentO=
S, OpenSuse with their latest update. More details on the coverage for the =
Distro testing is available here at Distribution_Support#Distro_Testing<htt=
ps://wiki.yoctoproject.org/wiki/Distribution_Support#Distro_Testing> wiki.

Summary

At this point all buildsets are fine, exepting the dmesg errors in qemu fou=
nd by the sanity tests: [6811<https://bugzilla.yoctoproject.org/show_bug.cg=
i?id=3D6811>] and [6812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D6811>]

Distro Results
BRANCH  master
COMMIT  Poky: 5367855fe56db0c09b8fa7bb423b9de18d11eecc
RELEASE 1.7_M4.rc3
Ubuntu 14.04 LTS
=95 nighlty-world PASS
=95 buildtools    PASS
=95 nightly-arm   PASS
=95 nightly-multilib      PASS - [6811<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D6811>]
=95 nightly-qa-systemd    PASS - [6811<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D6811>]
=95 nightly-x86   PASS - [6811<https://bugzilla.yoctoproject.org/show_bug.c=
gi?id=3D6811>]
=95 nightly-x86-64        PASS - [6811<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D6811>]
=95 nightly-x86-64-lsb    PASS


Fedora 20
=95 nighlty-world PASS
=95 buildtools    PASS
=95 nightly-arm   PASS
=95 nightly-multilib      PASS - [6811<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D6811>]
=95 nightly-qa-systemd    PASS - [6811<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D6811>]
=95 nightly-x86   PASS - [6811<https://bugzilla.yoctoproject.org/show_bug.c=
gi?id=3D6811>]
=95 nightly-x86-64        PASS - [6811<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D6811>]
=95 nightly-x86-64-lsb    PASS


CentOS 6.5
=95 nighlty-world PASS
=95 buildtools    PASS
=95 nightly-arm   PASS
=95 nightly-multilib      PASS - [6811<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D6811>]
=95 nightly-qa-systemd    PASS - [6811<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D6811>]
=95 nightly-x86   PASS - [6811<https://bugzilla.yoctoproject.org/show_bug.c=
gi?id=3D6811>]
=95 nightly-x86-64        PASS - [6811<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D6811>]
=95 nightly-x86-64-lsb    PASS


OpenSuse 13.1
=95 nighlty-world PASS
=95 buildtools    PASS
=95 nightly-arm   PASS
=95 nightly-multilib      PASS - [6811<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D6811>]
=95 nightly-qa-systemd    PASS - [6811<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D6811>]
=95 nightly-x86   PASS - [6811<https://bugzilla.yoctoproject.org/show_bug.c=
gi?id=3D6811>]
=95 nightly-x86-64        PASS - [6811<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D6811>] - [6812<https://bugzilla.yoctoproject.org/show_bug.c=
gi?id=3D6811>]
=95 nightly-x86-64-lsb    PASS


Build Performance Test

Detailed description on how performance test are run can be found on Perfor=
mance Test<https://wiki.yoctoproject.org/wiki/Performance_Test> wiki. The b=
elow charts are displaying the build performance trend for 1.7 by milestone=
 starting 1.6 on Master. The charts by Milestone can be accessed at this li=
nk<https://wiki.yoctoproject.org/charts/perf_milestone/performance_test.htm=
l> where you can view more detailed information or by clicking on the image=
s which will open a new window with the interactive chart.

As a status, building kernel takes by 20 seconds longer on average for both=
 hosts, very possible a result of the kernel upgrade to 3.17. The rootfs bu=
ild time remained the same around 4:18 and 4:14 for Fedora and Ubuntu hosts=
. Building a sato image (with rmwork enabled) improved by 40 seconds on Fed=
ora machine (1:10:57) and decreased by 15 seconds on Ubuntu machine (1:09:0=
1) on average.

As a QA point of view, for the latter there is no great change in the build=
 performance results to be a concern for the release candidate.

Performance Charts

For Bitbake core-image-sato with rm_work

[Ww40 - rmwork.png]<https://wiki.yoctoproject.org/charts/perf_milestone/bit=
bake-core-image-sato-rmwork.html>

Building the Virtual kernel

[Ww40 - kernel.png]<https://wiki.yoctoproject.org/charts/perf_milestone/bit=
bake-virtual-kernel.html>

Building the rootfs

[Ww40 - rootfs.png]<https://wiki.yoctoproject.org/charts/perf_milestone/bit=
bake-core-image-sato-rootfs.html>


Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania

