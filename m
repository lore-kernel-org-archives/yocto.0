Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40DB8E003F8
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 08:16:31 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Aug 2013 08:16:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,827,1367996400"; 
	d="gif'147?png'147,150?scan'147,150,208,217,147,150";a="342458235"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by azsmga001.ch.intel.com with ESMTP; 06 Aug 2013 08:16:24 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 6 Aug 2013 16:15:56 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.157]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.10]) with mapi id
	14.03.0123.003; Tue, 6 Aug 2013 16:15:56 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Full Pass Report for 1.5_M3.rc1 - 2013-07-31-1 build
Thread-Index: Ac6St3u8BNsmE5LlQTi5/lthIfbEug==
Date: Tue, 6 Aug 2013 15:15:56 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F24C4C@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Yocto Full Pass Report for 1.5_M3.rc1 - 2013-07-31-1 build
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
X-List-Received-Date: Tue, 06 Aug 2013 15:16:43 -0000
X-Groupsio-MsgNum: 15378
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_1FFB62CE8AEB0D4298B51122D8903E9619F24C4CIRSMSX104gercor_";
	type="multipart/alternative"

--_006_1FFB62CE8AEB0D4298B51122D8903E9619F24C4CIRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F24C4CIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F24C4CIRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the full pass for the Yocto 1.5_M3.rc1 build.

Issues:

-          Eclipse Juno and Kepler are failing on AB.

-          Kepler support is a new addition to the project and since the bu=
ild was failing on AB, it was built manually and then tested.

-          Two new bugs in BA - an internal dmesg error which was already f=
ixed - 4977<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4977>; and =
binutils-cross fail to compile  - 4978<https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D4978>.

-          Beagleboard - ltp test failed because cmd mkfs.ext4 does not exi=
st - 4982<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4982>

-          Smart sometimes gives an segmentation fault - 4985<https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D4985>.

The test report can be accessed on the wiki as well: https://wiki.yoctoproj=
ect.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1



Testing data

 Test type: Full Pass Release

 Branch: master

 Milestone: M3

 Build name: 2013-07-31-1

 poky commit: 9de0ad47462c13ac4a2d73e12e92be6c1b4e0415

 poky commit date:  Mon Jul 29 16:22:58 2013 +0000

 Eclipse Plugin commit: 76df60597ae7cce069a5f1fd45089ea04c7394cd

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20130731-1/



 Distributions tested: Ubuntu 12.04 x86_64, Ubuntu 13.04 x86_64, Fedora 18 =
i686, CentOS 6.4 x86_64

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

985<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D985> 986<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D986>

ADT: master branch

Fedora 18 i686

87.1%

none

1.7%

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783>4618<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618>

11.2%

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783>4618<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618>

100.0%

1010<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1010>1014<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1014>

ADT: master branch

Ubuntu 13.04 x86_64

87.1%

none

1.7%

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783>4618<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618>

11.2%

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783>4618<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618>

100.0%

1005<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1005>

BSP/QEMU: master branch

Atom PC

98.6%

none

1.4%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

0.0%

none

100.0%

1013<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1013>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

988<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D988> 989<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D989>

BSP/QEMU: master branch

P1022ds

100.0%

4910<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4910>

0.0%

none

0.0%

none

100.0%

982<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D982> 993<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D993>

BSP/QEMU: master branch

qemu-x86

96.2%

none

3.8%

4952<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4952>4832<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

0.0%

none

100.0%

984<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D984> 995<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D995>

BSP/QEMU: master branch

qemuarm

96.2%

none

3.8%

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>4832<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

0.0%

none

100.0%

1008<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1008>1009<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1009>1015<https:/=
/bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1015>

BSP/QEMU: master branch

qemumips

98.8%

none

1.2%

4832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

0.0%

none

100.0%

1007<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1007>1011<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1011>1016<https:/=
/bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1016>

BSP/QEMU: master branch

qemuppc

98.8%

none

1.2%

4832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

0.0%

none

100.0%

983<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D983> 994<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D994>

BSP/QEMU: master branch

qemux86-64

96.2%

none

3.8%

4953<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4953>4832<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

0.0%

none

100.0%

1012<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1012>

BSP/QEMU: master branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

977<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D977> 979<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D979>980<https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D980> 998<https://bugzilla.y=
octoproject.org/tr_show_run.cgi?run_id=3D998>999<https://bugzilla.yoctoproj=
ect.org/tr_show_run.cgi?run_id=3D999> 1000<https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1000>

Eclipse Plugin: master branch

Ubuntu 13.04 x86_64

96.4%

none

3.6%

4974<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4974>4972<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4972>

0.0%

none

100.0%

1003<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1003>1004<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1004>

Meta-yocto: master branch

Ubuntu 13.04 x86-64

95.2%

none

4.8%

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

0.0%

none

100.0%

975<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D975> 1001<ht=
tps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1001>

Hob: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

974<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D974>

OE-Core: master branch

Multiple environments

94.1%

none

5.9%

4529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529>

0.0%

none

100.0%

966<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D966> 967<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D967>

BitBake: master branch

Ubuntu 12.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

968<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D968>

Runtime: master branch

Multiple Environments

100.0%

4982<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4982>

0.0%

none

0.0%

none

100.0%

987<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D987>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

50.0%

4977<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4977>

50.0%

4978<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4978>4727<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4727>

0.0%

none

100.0%

Total: 18



Test Case Status Report

Status

Count

BLOCKED

26

FAILED

19

PASSED

886

Total: 931


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:26,19,886&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(26)+3%25|FAILED(19)+2%=
25|PASSED(886)+95%25]



Bug Status Report


ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW31_-_2013-07-31-1_-_F=
ull_Pass_Yocto_1.5_M3.rc1>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW31_-_2013-07-31=
-1_-_Full_Pass_Yocto_1.5_M3.rc1>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW31_-_2013-07-31-1=
_-_Full_Pass_Yocto_1.5_M3.rc1>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW31_-_2013-07-=
31-1_-_Full_Pass_Yocto_1.5_M3.rc1>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW31_-_2013-07-3=
1-1_-_Full_Pass_Yocto_1.5_M3.rc1>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW31_-_2013-07=
-31-1_-_Full_Pass_Yocto_1.5_M3.rc1>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW31_-_2013-07-31-=
1_-_Full_Pass_Yocto_1.5_M3.rc1>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW31_-_20=
13-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW31_-_2013-07-=
31-1_-_Full_Pass_Yocto_1.5_M3.rc1>

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

Medium+

IN PROGRESS REVIEW

1003<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1003>

Kernel panic on qemux86-64 when using runqemu kvm and cpu host

1.4

1.5 M2

162

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

1005<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1005>

dmesg log errors in Atom-PC

1.3.1

1.5

142

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

Undecided

RESOLVED

FIXED

984<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D984>

start qemuarm with "core-image-sato", use "dmesg | grep -i error" shows 2 e=
rrors

1.4

---

138

4529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529>

Medium

NEW

974<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D974>

x32 build fails with gmp_5.1.1 do_configure

1.5

1.5

70

4618<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618>

Medium

NEW

1010<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1010> 985<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D985> 986<https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D986> 1014<https://bugzil=
la.yoctoproject.org/tr_show_run.cgi?run_id=3D1014>

[Autobuilder] Some toolchains are built twice with 20130604-5 build

1.5

1.5 M2

55

4727<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4727>

Medium

IN PROGRESS DESIGN

987<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D987>

Opening build logs does not work in HOB under Build Appliance

unspecified

1.5 M4

49

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783>

Medium+

ACCEPTED

985<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D985> 1010<ht=
tps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1010>

[adt-installer] ARM: target arch change from armv5te to armv7a-vfp-neon in =
environment setting script.

1.5

1.5 M2

34

4832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

Medium

NEW

1015<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1015> 994<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D994> 993<https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D993> 1016<https://bugzil=
la.yoctoproject.org/tr_show_run.cgi?run_id=3D1016>995<https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D995>

[Test Case 225] ethernet static ip set in connman

1.5

1.5 M4

22

4910<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4910>

Medium

ACCEPTED

988<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D988>

[p1022ds]urandom: segmentation fault

1.5

1.5

6 (Recent)

4952<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4952>

Medium

NEW

993<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D993>

[Test Case 207] sudoku-savant project compile in sdk image

1.5

1.5

1 (Recent)

4953<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4953>

Medium

NEW

994<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D994>

[Test Case 207] sudoku-savant project compile in sdk image

1.5

1.5

1 (Recent)

4972<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4972>

Medium

NEW

979<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D979>

cannot open vt100 latencytop error

1.5

1.5

NEW

4974<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4974>

Low

NEW

979<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D979>

TCF not available in kepler

1.5

1.5

NEW

4977<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4977>

Medium+

NEW

987<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D987>

[Build Appliance] An error message when launch hob

1.5

1.5 M4

NEW

4978<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4978>

Medium

NEW

987<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D987>

[Build Appliance] binutils-cross fail to compile

1.5

1.5

NEW

4982<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4982>

Undecided

NEW

968<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D968>

[beagleboard xm] ltp test failed because cmd mkfs.ext4 does not exist

1.5

---

NEW

Total: 16




Here is the build performance comparison charts for the last milestones inc=
luding this build. I attached also the detailed report spreadsheet. As you =
can see, there is no big difference between the last milestones but a sligh=
tly increase in build time with rm_work. The performance test data was comp=
iled by using the data available on Performance Test wiki: https://wiki.yoc=
toproject.org/wiki/Performance_Test.

[cid:image003.png@01CE92D0.FB008050]

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619F24C4CIRSMSX104gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	font-family:"Times New Roman","serif";
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
	font-family:"Times New Roman","serif";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
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
span.editsection
	{mso-style-name:editsection;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.sortarrow
	{mso-style-name:sortarrow;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:207843720;
	mso-list-type:hybrid;
	mso-list-template-ids:1546711104 1357645904 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the full pass for the Yocto 1.5_M3.rc1 build=
. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issues:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Eclipse Juno and Kepler are failing on AB. <o:p></o=
:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Kepler support is a new addition to the project and=
 since the build was failing on AB, it was built manually and then tested.<=
o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Two new bugs in BA &#8211; an internal dmesg error =
which was already fixed &#8211;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4977">4977</=
a>; and binutils-cross fail to compile&nbsp; -
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4978">4978</=
a>.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Beagleboard - ltp test failed because cmd mkfs.ext4=
 does not exist &#8211;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4982">4982</=
a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Smart sometimes gives an segmentation fault - <a hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4985">
4985</a>.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The test report can be accessed on the wiki as well:=
 <a href=3D"https://wiki.yoctoproject.org/wiki/WW31_-_2013-07-31-1_-_Full_P=
ass_Yocto_1.5_M3.rc1">
https://wiki.yoctoproject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.=
5_M3.rc1</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in">
<span class=3D"mw-headline"><span style=3D"font-size:17.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testi=
ng data</span></span><span style=3D"font-size:17.5pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p><=
/span></h1>
</div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width: 0px=
;word-spacing:0px"><span style=3D"color:black"> Test type: Full Pass Releas=
e<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Milestone: M3<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 2013-07-31-1<o:p></o:p></span></=
pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 9de0ad47462c13ac4a2d73e12e92be6=
c1b4e0415<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit date:&nbsp; Mon Jul 29 16:22:58 =
2013 &#43;0000<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit: 76df60597ae7cce069a5f=
1fd45089ea04c7394cd<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/nightly/20130731-1/<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 12.04 x86_64, U=
buntu 13.04 x86_64, Fedora 18 i686, CentOS 6.4 x86_64&nbsp;&nbsp; <o:p></o:=
p></span></pre>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width=
: 0px;background-position:initial initial;background-repeat:initial initial=
;overflow:hidden;word-spacing:0px">
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
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Testing Summary Report<o:p></o:p></span></b></p=
>
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
g/tr_show_run.cgi?run_id=3D985"><span style=3D"color:#5A3696">985</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D986"><span style=3D"color:#5=
A3696">986</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Fedora 18 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">87.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4783"><span style=3D"color:#5A3696">4783</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618"><span styl=
e=3D"color:#5A3696">4618</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">11.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4783"><span style=3D"color:#5A3696">4783</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618"><span styl=
e=3D"color:#5A3696">4618</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1010"><span style=3D"color:#5A3696">1010</span><=
/a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D10=
14"><span style=3D"color:#5A3696">1014</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">87.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4783"><span style=3D"color:#5A3696">4783</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618"><span styl=
e=3D"color:#5A3696">4618</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">11.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4783"><span style=3D"color:#5A3696">4783</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618"><span styl=
e=3D"color:#5A3696">4618</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1005"><span style=3D"color:#5A3696">1005</span><=
/a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Atom PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">98.6%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:p=
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1013"><span style=3D"color:#5A3696">1013</span><=
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
g/tr_show_run.cgi?run_id=3D988"><span style=3D"color:#5A3696">988</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D989"><span style=3D"color:#5=
A3696">989</span></a><o:p></o:p></span></p>
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
g/show_bug.cgi?id=3D4910"><span style=3D"color:#5A3696">4910</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D982"><span style=3D"color:#5A3696">982</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D993"><span style=3D"color:#5=
A3696">993</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">96.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">3.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4952"><span style=3D"color:#5A3696">4952</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832"><span styl=
e=3D"color:#5A3696">4832</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D984"><span style=3D"color:#5A3696">984</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D995"><span style=3D"color:#5=
A3696">995</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">96.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">3.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4024"><span style=3D"color:#5A3696">4024</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832"><span styl=
e=3D"color:#5A3696">4832</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1008"><span style=3D"color:#5A3696">1008</span><=
/a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D10=
09"><span style=3D"color:#5A3696">1009</span></a><a href=3D"https://bugzill=
a.yoctoproject.org/tr_show_run.cgi?run_id=3D1015"><span style=3D"color:#5A3=
696">1015</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">98.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1007"><span style=3D"color:#5A3696">1007</span><=
/a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D10=
11"><span style=3D"color:#5A3696">1011</span></a><a href=3D"https://bugzill=
a.yoctoproject.org/tr_show_run.cgi?run_id=3D1016"><span style=3D"color:#5A3=
696">1016</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">98.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832</span></a><o:p=
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D983"><span style=3D"color:#5A3696">983</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D994"><span style=3D"color:#5=
A3696">994</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">96.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">3.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4953"><span style=3D"color:#5A3696">4953</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832"><span styl=
e=3D"color:#5A3696">4832</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1012"><span style=3D"color:#5A3696">1012</span><=
/a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D977"><span style=3D"color:#5A3696">977</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D979"><span style=3D"color:#5=
A3696">979</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D980"><span style=3D"color:#5A3696">980</span></a><span clas=
s=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctop=
roject.org/tr_show_run.cgi?run_id=3D998"><span style=3D"color:#5A3696">998<=
/span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_=
id=3D999"><span style=3D"color:#5A3696">999</span></a><span class=3D"apple-=
converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/=
tr_show_run.cgi?run_id=3D1000"><span style=3D"color:#5A3696">1000</span></a=
><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">96.4%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">3.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4974"><span style=3D"color:#5A3696">4974</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4972"><span styl=
e=3D"color:#5A3696">4972</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1003"><span style=3D"color:#5A3696">1003</span><=
/a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D10=
04"><span style=3D"color:#5A3696">1004</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Meta-yocto: master branch<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.04 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">95.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">4.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D3908"><span style=3D"color:#5A3696">3908</span></a><o:p=
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D975"><span style=3D"color:#5A3696">975</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D1001"><span style=3D"color:#=
5A3696">1001</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Hob: master branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D974"><span style=3D"color:#5A3696">974</span></a=
><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">94.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">5.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4529"><span style=3D"color:#5A3696">4529</span></a><o:p=
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D966"><span style=3D"color:#5A3696">966</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D967"><span style=3D"color:#5=
A3696">967</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Ubuntu 12.04 x86_64<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D968"><span style=3D"color:#5A3696">968</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Runtime: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Multiple Environments<o:p></o:p></span></p>
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
g/show_bug.cgi?id=3D4982"><span style=3D"color:#5A3696">4982</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D987"><span style=3D"color:#5A3696">987</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Build Appliance: master branch<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4977"><span style=3D"color:#5A3696">4977</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">50.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4978"><span style=3D"color:#5A3696">4978</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4727"><span styl=
e=3D"color:#5A3696">4727</span></a><o:p></o:p></span></p>
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
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 18</span></b><span style=3D"font-=
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
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
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
<span style=3D"font-size:9.5pt">26<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">19<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">886<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 931</span></b><span style=3D"font=
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
dth=3D"432" height=3D"120" id=3D"Picture_x0020_30" src=3D"cid:image001.png@=
01CE92D0.387508D0" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;c=
hs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:26,19,886&amp;chco=3DFFFF66|FF9933|00=
FF00&amp;chl=3DBLOCKED(26)&#43;3%25|FAILED(19)&#43;2%25|PASSED(886)&#43;95%=
25"></span><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
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
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none;background-position:initial initial;background-repeat:initia=
l initial" id=3D"sortable_table_id_0">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">ID</span></b><a href=3D"https://wiki.yoctoproje=
ct.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1"><b><span styl=
e=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" =
width=3D"12" height=3D"14" id=3D"Picture_x0020_29" src=3D"cid:image002.gif@=
01CE92D0.387508D0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"fo=
nt-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1"><b><spa=
n style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_28" src=3D"cid:image0=
02.gif@01CE92D0.387508D0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span styl=
e=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1"><b><span =
style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D=
"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_27" src=3D"cid:image002.=
gif@01CE92D0.387508D0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1"><b><s=
pan style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_26" src=3D"cid:image=
002.gif@01CE92D0.387508D0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span sty=
le=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1"><b><sp=
an style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_25" src=3D"cid:image0=
02.gif@01CE92D0.387508D0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span styl=
e=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1"><b><=
span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_24" src=3D"cid:imag=
e002.gif@01CE92D0.387508D0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span st=
yle=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1"><b><span=
 style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_23" src=3D"cid:image0=
02.gif@01CE92D0.387508D0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span styl=
e=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1"=
><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img=
 border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_22" src=3D"cid=
:image002.gif@01CE92D0.387508D0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><sp=
an style=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1"><b><s=
pan style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_21" src=3D"cid:image=
002.gif@01CE92D0.387508D0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span sty=
le=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3908"><span style=3D"color:#5A3696">3908</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1003"><span style=3D"colo=
r:#5A3696">1003</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Kernel panic on qemu=
x86-64 when using runqemu kvm and cpu host<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">162<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1005"><span style=3D"colo=
r:#5A3696">1005</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">142<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4024"><span style=3D"color:#5A3696">4024</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D984"><span style=3D"color=
:#5A3696">984</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">start qemuarm with &=
quot;core-image-sato&quot;, use &quot;dmesg | grep -i error&quot; shows 2 e=
rrors<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">138<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4529"><span style=3D"color:#5A3696">4529</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D974"><span style=3D"color=
:#5A3696">974</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">x32 build fails with=
 gmp_5.1.1 do_configure<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">70<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4618"><span style=3D"color:#5A3696">4618</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1010"><span style=3D"colo=
r:#5A3696">1010</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D985=
"><span style=3D"color:#5A3696">985</span></a><span class=3D"apple-converte=
d-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D986"><span style=3D"color:#5A3696">986</span></a><span cla=
ss=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yocto=
project.org/tr_show_run.cgi?run_id=3D1014"><span style=3D"color:#5A3696">10=
14</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Autobuilder] Some t=
oolchains are built twice with 20130604-5 build<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">55<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4727"><span style=3D"color:#5A3696">4727</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">IN PROGRESS DESIGN<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D987"><span style=3D"color=
:#5A3696">987</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Opening build logs d=
oes not work in HOB under Build Appliance<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">49<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4783"><span style=3D"color:#5A3696">4783</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D985"><span style=3D"color=
:#5A3696">985</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1010"=
><span style=3D"color:#5A3696">1010</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[adt-installer] ARM:=
 target arch change from armv5te to armv7a-vfp-neon in environment setting =
script.<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">34<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1015"><span style=3D"colo=
r:#5A3696">1015</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D994=
"><span style=3D"color:#5A3696">994</span></a><span class=3D"apple-converte=
d-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D993"><span style=3D"color:#5A3696">993</span></a><span cla=
ss=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yocto=
project.org/tr_show_run.cgi?run_id=3D1016"><span style=3D"color:#5A3696">10=
16</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?r=
un_id=3D995"><span style=3D"color:#5A3696">995</span></a><o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Test Case 225] ethe=
rnet static ip set in connman<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">22<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4910"><span style=3D"color:#5A3696">4910</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D988"><span style=3D"color=
:#5A3696">988</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[p1022ds]urandom: se=
gmentation fault<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
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
bug.cgi?id=3D4952"><span style=3D"color:#5A3696">4952</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D993"><span style=3D"color=
:#5A3696">993</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Test Case 207] sudo=
ku-savant project compile in sdk image<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4953"><span style=3D"color:#5A3696">4953</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D994"><span style=3D"color=
:#5A3696">994</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Test Case 207] sudo=
ku-savant project compile in sdk image<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4972"><span style=3D"color:#5A3696">4972</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D979"><span style=3D"color=
:#5A3696">979</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">cannot open vt100 la=
tencytop error<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
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
bug.cgi?id=3D4974"><span style=3D"color:#5A3696">4974</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Low<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D979"><span style=3D"color=
:#5A3696">979</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">TCF not available in=
 kepler<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
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
bug.cgi?id=3D4977"><span style=3D"color:#5A3696">4977</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium&#43;<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D987"><span style=3D"color=
:#5A3696">987</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Build Appliance] An=
 error message when launch hob<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5 M4<o:p></o:p></span></p>
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
bug.cgi?id=3D4978"><span style=3D"color:#5A3696">4978</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D987"><span style=3D"color=
:#5A3696">987</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Build Appliance] bi=
nutils-cross fail to compile<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
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
bug.cgi?id=3D4982"><span style=3D"color:#5A3696">4982</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D968"><span style=3D"color=
:#5A3696">968</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[beagleboard xm] ltp=
 test failed because cmd mkfs.ext4 does not exist<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 16</span><=
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Here is the build perf=
ormance comparison charts for the last milestones including this build. I a=
ttached also the detailed report spreadsheet. As you can see, there is no b=
ig difference between the last milestones
 but a slightly increase in build time with rm_work. The performance test d=
ata was compiled by using the data available on Performance Test wiki:
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test">https://wik=
i.yoctoproject.org/wiki/Performance_Test</a>.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"1259" height=3D"735" id=
=3D"Picture_x0020_1" src=3D"cid:image003.png@01CE92D0.FB008050"><o:p></o:p>=
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

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F24C4CIRSMSX104gercor_--

--_006_1FFB62CE8AEB0D4298B51122D8903E9619F24C4CIRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=10498;
	creation-date="Tue, 06 Aug 2013 15:15:51 GMT";
	modification-date="Tue, 06 Aug 2013 15:15:51 GMT"
Content-ID: <image001.png@01CE92D0.387508D0>
Content-Transfer-Encoding: base64

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
AABJRU5ErkJggg==

--_006_1FFB62CE8AEB0D4298B51122D8903E9619F24C4CIRSMSX104gercor_
Content-Type: image/gif; name="image002.gif"
Content-Description: image002.gif
Content-Disposition: inline; filename="image002.gif"; size=462;
	creation-date="Tue, 06 Aug 2013 15:15:53 GMT";
	modification-date="Tue, 06 Aug 2013 15:15:53 GMT"
Content-ID: <image002.gif@01CE92D0.387508D0>
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

--_006_1FFB62CE8AEB0D4298B51122D8903E9619F24C4CIRSMSX104gercor_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=104079;
	creation-date="Tue, 06 Aug 2013 15:15:53 GMT";
	modification-date="Tue, 06 Aug 2013 15:15:53 GMT"
Content-ID: <image003.png@01CE92D0.FB008050>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAABOsAAALfCAIAAAC/xdGSAAAAAXNSR0IArs4c6QAA/8pJREFUeF7s
vQu4VVd57725kxBCCAFyAQlkb0IQomlME8AY/bRf3cRTsUdR0T6oPWFrrYW0pUqL9VIaorQGGluF
nKPytN6I/YrfV9i2R48mCkkaYy4gAnuHXCAXIAkQIFwC2d9/rf9aY48912XPOcaca8011389ecje
a8/xznf8xpjjHe943zHmgJ6enhZ9REAEREAEREAEREAEREAEREAERCD1BAamXkMpKAIiIAIiIAIi
IAIiIAIiIAIiIAI5AvJg1Q9EQAREQAREQAREQAREQAREQAQag4A82MZoJ2kpAiIgAiIgAiIgAiIg
AiIgAiIgD1Z9QAREQAREQAREQAREQAREQAREoDEIyINtjHaSliIgAiIgAiIgAiIgAiIgAiIgAgPs
s4i/8Y1v7N+/X1BEQAREQAREIEsExo8f/7GPfSzeGslixstT0kRABERABESgOgFjzft4sCtXrly2
bJnYiYAIiIAIiECWCCRh3ZKQmSXmqosIiIAIiIAIxEvAWF5lEccLVtJEQAREQAREQAREQAREQARE
QASSIiAPNimykisCIiACIiACIiACIiACIiACIhAvAXmw8fKUNBEQAREQAREQAREQAREQAREQgaQI
yINNiqzkioAIiIAIiIAIiIAIiIAIiIAIxEtAHmy8PCVNBERABERABERABERABERABEQgKQLyYJMi
K7kiIAIiIAIiIAIiIAIiIAIiIALxEpAHGy9PSRMBERABERABERABERABERABEUiKgDzYpMhKrgiI
gAiIgAiIgAiIgAiIgAiIQLwE5MHGy1PSREAEREAEREAEREAEREAEREAEkiIgDzYpspIrAiIgAiIg
AiIgAiIgAiIgAiIQLwF5sPHylDQRyBaB7jVzBuDT0ZmtarW0dHbk6jVnTXfWKqb6iIAINDgB52HX
uWCDA5P6iRKgtczmTCBRcBKeLAF5sMnyzYR0Z6PoXDAT2DJRic5VS7a2tMxevbS9IatTpQe2L109
u6Vl64ZNcmEbsmmltAiknEDvtL90+l8YmbSClm9D0Uh1V+7smLsu1QpKuWYlIA+2WVpe1jRsS8ua
9pLq3JizXLPn39wall7jXNd68/ycC7tkVebCy43TBtJUBDJLoHv39mDd1s0tn81SsM7Zy3TJbONW
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
znkPtmZUdLbSlZqjCrfqt6v+1wpd0bpbWSBerajCIuBKwD6FRycrpvPcrVi0KjVd5c4i7nsQYuGo
JXOoX19rWnIYXs760poGz0XsK7bv8YBWzy1/qJ2tuZ0CVWpNixr1OT2wnJrGGJVDW+5cxOAJi+b3
wMl9pda08nnDvecklkkEq3i+n02j5LDD/ASoTxP0Ocux5PjBAvt+btYLvRRs8Lzi4O9lTjas2J1N
gwbPm+6rX5R2D6hTLNr37GKdpRjLCJNyIUlYtyRkphyj1BOBhiDQ5/DhXjOowb4hWk9KikA1Asby
DsBVxoVYuXLlsmXLXH1hlRMBEShPgG+mM2vouXMgcm/c6/0ireCoeKgzMNJahcp69b4v0O80kcar
eTNqnIR1S0JmM7aN6iwCcRMojO4Bsek3uXFzkDwRyB4BY3mVRZy9xlWNUkqguHmEL7fvzY1Nqbo5
tQoH52/YZL+kyE1f690DViZ3Iunc4RQsvKWn9/0P4YrpKhEQAREQgXQTKOwasZSslMKd7npIOxEQ
gYoE5MGqc4hA4gQa15q2L+VhIKus00USx1WTG9ivma3JDXUTERABERCBGhHo+56BnmpbdmukkW4j
AiIQKwF5sLHilDARKE+gYa1pQXH/PNvcS+QqfPyFO3Q76lPlIBIHmSoiAiIgAiIgAiIgAiKQOAF5
sIkj1g1EQAREQAREQAREQAREQAREQARiISAPNhaMEiICIiACIiACIiACIiACIiACIpA4AXmwiSPW
DURABERABERABERABERABERABGIhIA82FowSIgIiIAIiIAIiIAIiIAIiIAIikDgBebCJI9YNREAE
REAEREAEREAEREAEREAEYiEgDzYWjBIiAiIgAiIgAiIgAiIgAiIgAiKQOAF5sIkj1g1EQAREQARE
QAREQAREQAREQARiISAPNhaMEiICIiACIiACIiACIiACIiACIpA4AXmwiSPWDURABERABERABERA
BERABERABGIhIA82FowSIgIiIAIiIAIiIAIiIAIiIAIikDgBebCJI9YNREAEREAERCAsge41cwbM
WdOduzz3o/l0dPaRYF1mX9n3qs6OQvGCwLA66DoREAEREAERSDGBmniwfQ2tTSNnXYOWOmClc5db
l8kep7g3STUREAEREAEfAjCXC1vmLyqIaF28pSf/6Vo9e9G89rxLmzeZfS/Drwt3LOeVa3GV+XRu
3L66K/ft5hkbNuV9Yn1EQAREQAREoPEJJO/BBgytMcB5x3TF9NW01LC/G+bnDG3X6u0rCva5uGZs
XdYie9z4fU41EAEREAERKE8APuuWxVODf+tctWH+0pxrmv9za+H/5rLuTRu2rpubj7b2jbW2L52/
oS339Yrp63PF9BEBERABERCBLBAYAKfR1GPlypXLli1LolqdHXN2L83b3d5P95qOTTevnboq/5eu
jgEb5+UXj+Hxrpq6pXcZuc9lrbk/ty3Z2tIye3VXQF5fve+8885jx44lURfJFAEREIHGJTBp0qQF
CxY0rv5umidh3ZKQydoFLGbQKhYRmMt6L0CWUsGU2pJu3jSnDTHaPuFZWUy3nqRSIiACIpAOAs1u
zZl3xM9tt91m/xrjz5sXwePsIy+XE7U5l9vEv2xe1JL/lclS/Mn+zQjgD7ioeH0FLZOrS4xYJEoE
REAERKAGBJKwCEnIJIq+FrPUfhaA9f4hYCGDBtQ2seVhJ1eXGjSubiECIiACItAkBIy1Sj6LuPxC
hUl6mrtu65K2js626bO3787t0sEfWqa3FQsFL+tes6JlOUK5rYuXL1q3se+xFulYEZEWIiACIiAC
IuBIIH92U94uFhKCi1aP8qx9sPZlJlt4bt5CIhKbzyZuvXn+diYXz92+Op+FrI8IiIAIiIAIZIBA
8h5s0B7TAJvzKfJLx2vb4ZLOgMUeMKBtyYycAS7Y6ZLLZI8z0OlUBREQAREQgbIEjNHr6eFGGXxh
Zf9a+2CL6+3FfbH8PX9t+9rewoXLqu66UVuIgAiIgAiIQEMRSN6DDdrjogEuYGpfWzCsMLmWATbn
VQQu65Ume9xQHU3KioAIiIAIiIAIiIAIiIAIiIA3geQ9WG8VJUAEREAEREAEREAEREAEREAEREAE
QEAerLqBCIiACIiACIiACIiACIiACIhAYxCQB9sY7SQtRUAEREAEREAEREAEREAEREAE5MGqD4iA
CIiACIiACIiACIiACIiACDQGAXmwjdFO0lIEREAEREAEREAEREAEREAEREAerPqACIiACIiACIiA
CIiACIiACIhAYxCQB9sY7SQtRUAEREAEREAEREAEREAEREAE5MGqD4iACIiACIiACIiACIiACIiA
CDQGAXmwjdFO0lIEREAEREAEREAEREAEREAEREAerPqACIiACIiACIiACIiACIiACIhAYxCQB9sY
7SQtRUAEREAEREAEREAEREAEREAE5MGqD4iACIiACIiACIiACIiACIiACDQGAXmwjdFO0lIEREAE
REAEREAEREAEREAEREAerPqACIiACIiACIiACIiACIiACIhAYxCQB9sY7SQtRUAEREAEREAEREAE
REAEREAE5MGqD4iACIiACIiACGSKwIsP/XLHl2/fuforr50+namKqTIiIAIiIAItLfJg1QtEQARE
QAREQASyQODk/v171n9zyx8seOxzn91/7z3P/fh/P/WDDVmomOogAiIgAiJgEZAHm67ugNXiw9se
e+I7/wLri/Xj04cOpUs/aSMCIiACIiACKSNw5vhxOKsP/fmt9/3hR566ewNM53lTrrh8wYeg5tM/
uPvYnj0p01fqiIAIiIAIeBGQB+uFL5bCsLVYKu6+ax2s7z2//+6Hl336ye98GxlQ+PLBP/kkHNpY
7iIhIiACIiACIpAxAjCRSBVG0BX/vrxz59DRoy+be/P1X1933T98dfKCD+NnrAvv+qc7M1ZrVUcE
REAEmpyAPNj6dAAsCT+zeRMsLhaMYXoRbt37w3+D9YU2o2dePel982f81V+PnTUbzi0cWoRk66Ol
7ioCIiACIiAC6SOAbGFYRhhQmEhEX+GmwmJO/4vPzPnn70z9oz8+d8JEqtz6PxbBp4Vt3fvDjemr
hDQSAREQARFwJCAP1hGcQzGTHvzz978PwdXd//RV2F2Y4cEjzoPpnbLwo9es/NLb/r3zjSu/hJ/H
zpo1468+ix9wI4RkkVSMLCmHm6qICIiACIiACGSDADxV2E0YRPiusIwwoHBWYSjhuMJijn/LTYFq
Dhw6dNqSP8WX2ByLi7MBQbUQAREQARGQB5tgH0AE9eB998FwIj34p+9qN+nBZ44fg9FFdhMsK5Kd
bvz+3TC9iLteMPPqgDb48tq/uwNLyEgqfuDjtzBIq48IiIAIiIAINBUBmL98tvCH8C8MIlZ+L3nH
78A+wobCUMJKVqIx5to3wbOF64tV46YipsqKgAiIQIYJyIONuXFf2beX6cEPfHwR0oO3/+0XcaqE
nR589Rf+5sbv/wBGF5lOMMAm2amSHudPm3b91+9CanEuo/gvP61UqJgbTOJEQAREQATSSgCGDzYU
EVcsBCP6ivVfWEMs/s7552/jX9jHMIq33tLBhWBICHO9rhEBERABEUg5AXmw7g2ErGD8B5cSu3Gw
kfWRZZ9GejAcV6YHw5WFyUR6MGwn1olNejDWgwePGBHprrgeqcU4VhGryN13rd3+t39Tr4xibN9F
TfGf3rAXqQV1sQiIgAiIQHgCMDE4yxDZwlgIZgLw8PHjEWud9b++BWuIxV+kB4eXBlvMLTkQpRP+
w3PTlSIgAiKQWgIDenp6jHIrV65ctmxZanWNpFhcdYEjCoN3Yv/+kwf2nz3+yrE9j5999XSVbF6c
4D9q2rSRU6/EOjEsbiSd+70YDvO2FXBfj0HyzL/66/OmTOm3SFwXwHd98rvfPnjfVgpECjRiyHEJ
lxwREAERSJRAXBbBVjIJmYlCqCI8PXWBrXn2R5v333MPLB0Uhqc69oZZ49/+Diz+esKBP4wwLDKK
ceCTpygVFwEREAERqAsBY63kweb4I6SZc01Pn355V26j6ZFt2/Dv0T17aEHLfrCmO2LCRBjXkVde
iQvgr+Lf86+cFmlh2KHt4U5v+9svwoXGjXDKIjxJByGRiti+K24K889ELJw7VbpxN5JkXSwCIiAC
tSGQhIeWhMza0Ci9S93rwrfKPdu5GavGVA/LwZe+s338TW+NmrVUiSECuQ98YhGiu9jL4+8P16ul
dF8REAERaGYCtfVgu9fMadswv2vL4laLeWfHgLnrcr/PXs2/5K5akgvxLdrcs7a9eGXJZfhD7rvt
hVKVWjGMPcbuGqz1Vj+fsOCaTps2YMgQ7FkdNnr08HHjYw+uRu2LSIWC8igFfxJ7gRJymwO+62Xt
N7/uve+D68674wds0I1rbhGVgK4XAREQgfAEwliE8NJ4ZRIyo+oQ1/X1qgscV8RFX3zgfpPgw903
E37v3f0eEuFQd5xSgW0+uAWykROymw5aqYgIiIAIiEBIAsZaJb8PFo7pwpb5i4xi+H3Omu6Wlva1
SGDGZ/OMDZvwa/eahTuW85u8+1rhsrz/umL66l55IWtc7rKju3fRfYWlhKeKrTXYa4rkWEQXuXOV
m1f5ehu8Gx3uIqKOdXdfoTD0wQtjcRgjFq0f/JM/NovWHjD6FIXvit22eOUPZhUw8xPf/R7Y+9Zb
ci/Ww3WXf/BDIIaZBzblxnVHyREBERABEWgSArC8cCZxeAS2ueLgQ7qvZV/oGi8QZC3h8Kec8fqf
+QV0fURABERABBqTQI2yiDs75uxe2jcGW+AFT3XV1C1r24oB2N6YbB+ghcva4dl2bLp57dRVleQV
S8FHb8wWiaD1sJMnW3f/ZuTRo68NHPjEFW0Hx8Ww7XbE8eMT9j41+sUXoAfEHrj40mcum/BqyZkZ
uOlV2x8d+Npru6a9/tCYMRGU1qUiIAJ1JTBp0qQFCxbUVYU63DyJGGMSMuuAJn/L2tQFjuvB++97
/ic/xrYdU1Mk9I65/ga4r1XeiBMjFiz4YtkXucTaCBMjVYkSAREQgdoQqG0WcS5uWtbjzMdn1+c8
W+Oh5lKEN86z0ogBpPSyyh6x5cFm5lSqKn0idzrx/1yHxWxcg9Vl7Ix1zoyqlDNc6e44gRkvlMec
47p/+MfazDxq82zoLiIgAtkjkISHloTMepFPtC5wGpEudODee026EOyUcVxrvxWFxguZRNf9w1ed
LWa9Wkr3FQEREIFmJlDDLOKKmHv9UlzSOnXG9t1IJs59Zk9vswrZl3Vv2rB13dwBA7CDduuSto7O
Zm5C1h3WF2nPOFkRGcXwYx/68z91yCiunjNcCfKk985nOpZeE69+KAIiIAIiECAAy9J91zq8yhUv
mYPHCNvEswBhsG783t0z/uqz2LlTe/cVSsJ44Zgo6IMD9tVqIiACIiACjUigJvtgCx7ngPz+18IG
V+x7XbIVbijc0fz37Uvnb8j/MrdleeFcp9zXfS9rWbylsHl2Ec5/6j3uqRHJx6kz5gTX/v1XYJKR
mvXQn/3pwfvuCyndzXc1zvNV+UOksIVJr4kPCVyXiYAIiEA/BGAkaS2LH2Qm9f0if54hP9aFZS7L
GVxeV7sVX7z1DcuacFxxksLeH/4bMoexwApnFWc33PT//BDuKwxWfSOfuPuV+bfB4XXuMILqkCIg
AiIgAg1HIHkPtrXodfb05DfC4vfc/62vzffWQU4VLyPh9rVlN9U2HP74FEZC1LV/9xXMEvAGoO1/
+0WsfCPBuIp4H9/ViMVNcaoTfsXt9Jr4+BpTkkRABJqVQPDsw8DhhdHOOMQSMF4DAMvatXr7Ctsn
ToAuVk5xJhNOZnp42aeREATHFbtLsLcF201v/P7dODN/7KxZCdzWUSQSiHBCIazkb1Z/xVGEiomA
CIiACNSPQI1Ocqp9BRPd1VP76oS/I8KhWP+GYYaFfv3Sz5SenBx1v2u/t8Z5koe2PYbDnHFoc78X
6wIREAERqD2BJCxCEjJJxjrpofrhhf2ccdh7rETvURPl2budfYjD/Ea/9OIFh14a/eKLg8+eoehT
w4cfuvCiFy8ae3TkyNo3dPg7Qvk3PPxLHIj49KTJz06YGL6grhQBERCBNBBo8nMZ5cGmoRPGrAN8
1F9/+XZs8kHu1vS/+LR5dXvsviv1Nq+Jx45crLjHXBmJEwEREAFvAkl4m0nIDHiwRcez7OGF/Z9x
GMmDDX/24Znjx7F55NCvHsLBwibZByk5497ylrE3zD5vyhTv5qqRALyK9rHPfRZJxdd/bV0a3pNX
o2rrNiIgAiLQsATScJJTw8JLveKYQFz793dgrxEyimGe96z/Ziw5w5XqDcMP3xV/xanIDudIpR6n
FBQBERCBuhCocnhhqDMO26bP5hGJENTS54hE9+rgIN+fv/+9SBjG8cJwX3H+At5Pfv3X1+E/vDW9
gdxXIMDyLrbeoBaojjsRlRQBERABEag5geT3wda8SrohCOCARxyYAccSq8tP3b0BJ2pgyRw/Y+fP
rP/1rdZbFsX7/htMAjAV0J4i9T0REAER8CKQP3opf9o+DmkqPbyw7FGIJZch9po/4al18fIZ+fMS
25bMyB+RGMPnyLZtkIJtI623dMCa4IU0k943HwHYGETXQwTcb1hDbITReYT1wK97ioAIiIAjAXmw
juAaoljuFI3bvoQYaXK+q+GAgzqQtPzyzp1wmBsCjpQUAREQgdQRCJ59SAXN4YWVjkLse1n7Wh6Q
mCvIExL7vmPdp9Y47+Bt/96Jfye+e14GMm/hvsIVBxCdR+jTK1RWBERABGpMQB5sjYHX+nY4zwnL
5HiHQexx10BNMA+Y+slcLjHesKf3E9S6mXU/ERABERABJwLYcTN21mxsuum+a62TABUSAREQARGo
NQF5sLUmnuH7YR6A/5hLXP1dPhmGoKqJgAiIgAg0FgHsuEEOEXb24r/G0lzaioAIiEBzEpAH25zt
nlStp37yUwjGHtvzOCKxSd1DckVABERABEQgPgIwW1MWfgTyEIbFScvxCZYkERABERCBRAjIg00E
a9MKxQlS2BCL6mM3LPbENi0HVVwEREAERKCBCODYCBxPdfrQIeUSN1CrSVUREIGmJSAPtmmbPqmK
8/0EkK5c4qQQS64IiIAIiEDcBHCUA049xKHEh7c9FrdsyRMBERABEYiTgDzYOGlKFglgTxHOqMS7
YfGGWDERAREQAREQgfQTwDuBLv/gh7T8mv6WkoYiIAIiIA9WfSB+AljGviqfS/zM5k1azI6frySK
gAiIgAgkQACvCDpvyhUn9+/XUQ4J0JVIERABEYiNgDzY2FBKkE3ggplX4zX3+ObXX75dB2Oob4iA
CIiACKSfgFl+xVEOei1c+ttLGoqACDQtAXmwTdv0iVcc6VhIytLBGImD1g1EQAREQARiInDelClc
ftVRDjERlRgREAERiJ+APNj4mUoiCXAxmwdjHLzvPmERAREQAREQgfQTwPIrjnLAa+H2/nBj+rWV
hiIgAiLQhATkwTZho9euyudPm/a6974P99v9T3ciGFu7G+tOIiACIiACIuBEwOQSYzcsjiR0kqFC
IiACIiACCRKQB5sgXIkGgUnvnQ8/Fu7r7n/6qoB4EsBcaseXb9/+t3+jSZUnSRUXAREQgSoEcJQD
3hD72unTu/9Rlks9RQREQARSR0AebOqaJGMKmVzig/dtRTpxxmpXs+pwCeCBjy/af+89IPngn/wx
Dhqp2d11IxEQARFoNgJTFn506OjRh7Y9hkP1m63uqq8IiIAIpJyAPNiUN1AW1DMv2eu+a51yiaO2
KE5y3rP+m/f94Uc4i7rkHb+D/xAZwJcP/fmtCsZG5dno16M/4A1V/A+rGE9851/w387VX3lk2afx
H0L0jV5B6S8CKSEweMSIqX/0KSiDF5vLcqWkUaSGCIiACJDAgJ6eHsNi5cqVy5YtywaaLNUlGy2C
6TUWs0fPvPqNK7+UjRolXQu4qc90bn7yO98+c/wY7jXm2jchJoBzMvHziw/9Ek4LJlUIcWOnMVK1
8UPS+kh+ogSwGMFZ8qvHjh974nHe6+iuXegG+OHEgf14R2W/CiBkNOefv9PvZU14QRIWIQmZ9Wqa
LNUlXoZYFULmC4bfq7/wN/FKljQREAEREIGoBIy1kgcbFZ2udySA+fcDn1iE6fjUP/pj7C9ylNI0
xZBxjSgrXRpsJL5i4UexL8uuPWJxT/9gA3OJEeXGsc+4rGnw1LSiaAW4l0f37Dl14ACOJ8VCTE1v
3/dmaOtho0fjOzir50yYgB8GDhk6qtj05185TWsZZVsnCQ8tCZn16lpZqku8DPH4Y/sGlhGn/8Vn
xr/lpniFS5oIiIAIiEAkAvJgI+HSxfEQgFeGyCFm2Nf9w1cxEY9HaOak4M1DOAATnhJqhjc6tP6P
jrGzZrGWp8+8dtePdh86dvqT75o2+rxc0PXlnTvx0kLmEuMdhngJhBwYzx7BWCjcVPirWHY5smsn
o6BJf+SaJko4CQ8tCZmJQqgiPEt1iZ0hLRfWjK77h3/Ev7HLl0AREAEREIGQBOTBhgTle9n+wycO
HD4ZkPLYE8H3yhw4cvLA4ROlN7v+yrGzrho7/oJzfPWIozwcp/t+c+BXj78EYe++YeLMy10M+WOf
+ywyYBEtvPbv7ohDqUzJgDuKuCtDfJgnwR21g9X7Xjj+pbu373n+KP4K93X5B98wbcIo/Az/Ch6v
grFuXQHMTx06hKzd4088cerQS/i1VA7WEc4ZNx6ddtjYcSMmTjxvyhXYIOd2O5WqF4EkPLQkZGaJ
T73qksR9uQsGZxBMW/KnSciXTBEQAREQgTAE5MFWpOTjc5a6pmEao99rplw88oZpY2+aOX7CRXWY
N8Nxuu83B+/dvp++k/lcPXn0grdOierHmowsbOlEzLDfujfJBYj77Vn/LRwyjPoOHnHehHe/O7C1
FWsHd2zccfzkGXSGoYMH7tx3BP/e8s6pc6/L5ZHiEwjGvu698+VllXYenH50Yv/+kwf2Y38pfih7
DhYcVKTpjrzySgZFA8nbTdIhs1fNJLzNJGTWi3yW6pIEQ7MLBrthsSc2iVvc/fMnn9h/7C/eOyMJ
4ZIpAiIgAtkgIA82144b73saOZmJtihiZRPHBt3OKyeMGjKozynQZS976eipB3a9ANcFuaNUEh7s
m9rGvP2Nl8CNSVRtCN/25KH7dx6E7wqXnveCy3Rt20U3XHnR/sMnf3j/0/Cm8KWDH4tTMXA2BpJd
EYbluUTN/IFLjwgqzxkGk8vab758wYcCzid6KfoqLnjHNZcifxg/4JvND+7DD/Bg4ceiafAzgrFP
/WDD0z+4Gz8ghItYQUIzrfS3FzxVKImdq9i9dmLfPkA+XjwnKaA8jhbjhlLsIB02+kJ1yPQ3rpuG
SXhoSch0q51/qSzVxZ9GWQnIc0GODDIyrv/autg3a2CB+FNfewD3vf2j10ZdF06ovhIrAiIgAikk
IA821yh/dteDiGUFZ7QePidcU/oSMX7gvj7U9cL9eVeWTiM+yCu+tm3MW2aMj9fU4V7ME7bvBe+a
jiv+NbWDJvCpnP1Ynu6IYNe1f5fbFhsjrgYSxaOY9v5wI7dZIj8NacOYHtlVQOb2iu8+WhpxxTXw
YOHHosmQS4yMYm6LxQdxReyMZTYsZLbe0pHVYOwxOqj5mOqrhw+/snfv2VdPl00DJhkEt0dOmXLu
xIlIBsbRR8PHjQ/QbqDOI1WjEkjCQ0tCZtR6xXV9luoSF5NSOXgRN04omPju97Tesijeu6z43mMw
u5D5vhsv/8g7WuMVLmkiIAIikBkCtfVgu9fMadswv2vL4sCwbH/f2TFg7roc39mr+16Yu2hJLrly
0eaete0tgV8rtkgm7fFDXS/evwtx0QNwbFhz417Oumqcc+80G1xpQflhvPfGGeO52bLsx9mPhfP2
wMdvQWQMicRIJ3bWvEELVnlNjl0jhMG/dPc2tA4WLJZ/8OrSwDs827/+54fRCugGX/yDa+wLEC5A
aDcDwVieA2xeMHNk2zYgqn66Ej1VrIwgEzj3jOTPcNYhvQ36sMSldhIWIQmZcdU3qpws1SVq3cNf
j1UzvIUb4yoSiGI8+90EYKEJhvE7P3F9eJV0pQiIgAg0FYEaerBwORe2zJ+xoWUpPdj87+u3LG4J
fF/g39kxZ3fuysJlN2/i1YXf17cstH8t8Yl7GzHb9hiuy8+377dTfEcMH/ymtouuv/IiuLIh48Bl
N7jCX4XXCt81/J5bNz8W5znhVCc0WLxTgfQ/xv2+JodVwJ6ob/24Gz+gQW+dNx3tW7ZqyPFe8d3H
MAFCoy+ZN/2mmRebyxoxGIsJItJ9jz+xB6HUSnm/poJ0TRHJHzTiXO5ZVVg1/f2/XhomYRGSkJkl
PvWqS6L3feI7/4J3dCd0i64x0354+c3fuHVOSo5vTKiaEisCIiACzgRq6MHmdSz6pUGFS76H47pq
6hbEWo1DO2DjvFzsNef5rpq6vGWu/at1YVAyauhMp4EKHu8598Wzow+evfBEz3CqPbDltdGDXh4z
8NCYQYcHtRSyju0aHXlt5EuvjUapkz2FvFNT5IKBR4YOeNWt+mdbBj9zZvwzZ8bhB0i4YNDRiYOe
GTWwz+FPAclXdO0ai/zPoUMPjbno9JAhL58/6tSw4aeGFyripkaaS41+8cUJe58acfwYlEQ1n7z8
ikNjxpQqDIC7X5384tkL8KfLB++bMPi56pV6rWVg16uT0Qdw2WWD908enNsxaz6X7tuL/wafPXNm
0OCnplxxcFyfLOW64xp59Og5x46ee/IksIw8crhUnxPnnHtm6FB0jxPnnosqvDJiRM/AQUdHJr4P
vO5kklNg0qRJCxYsSE5+OiUn4W0mIbNe9LJUl0QZIgD78F9+uspuBc+7f3/q/N/74O+YI/o8pam4
CIiACGSMQDo92GJ41ko2RnKxswe7bNmyjDVbleogoPrLrhd/8shz9onB2Ct7Q+59POMQwQu5wdWT
WKR4LKYC2FZUeh4ssrPw8hIcrnPe5CvOGT8+A4frVH9Njs0czYeYKiKrSAz+9Ptmht/nbI4lw9la
yz/wBjtmi0RcvMwQQW/cCGc74YSner3SEC3+8q6dOGAJUVb8y3fe2h+EUpEAjKZHfFUvrfF8GFXc
JpCEh5aEzHq1WpbqUi+GbvfFAU4Y9ufNet3b92/B7o9Hx77h2O8uWP6BXIKJPiIgAiIgAgECKfRg
y7ivUNp8yx+URdxvV4bzg+2yP//1/kqv9gmzwbXfu1S/ILwfS5eGh/FgiyPezFn2BSdwbODKYlsj
0kTxQ4wvOOGhtfjw3Fr8cOrAAbw4wZOAXdwcL1T2NTn2lZUOZwqpDPbN/s13HwX8svtmkb3cfdc6
1BFq4BgSHPIUUqzPZdjwDDcV71HE21aP791bdrVixISJIyZPgeMaY7P66KyymSSQhIeWhMx6wc9S
XerF0OG+WFnGGU7YA/KNW988aF9uk+2RYeevf2PH95e9NeRuIIebqogIiIAINC6BGnqw5uilwiFN
+f2v3AfLE5ry38M1Lf7Gs5yKl7WaI554klPg14pNIHuME4DMIcbA5LDB1bN/h/djAzdCxBKu7LEn
Hofbc+rQS2XztRBFhOeDaO2QC0bD+SmN11VxTV/Nu1WetYtUvNJrcowQHCn8j/++88cPP4tvsBiP
F+REkm8urrItFtfUIBgL5z8XXH3icbxw9eiex3HHQEUYXB0xeTKbz62adSmFNrp32/M4Ffz4yVev
v3JspL3idVFYN7UJJGERkpBZr1bLUl3qxdDhvgzAmvOHt/zBAoyZ37lywcc/PhcpVA4CVUQEREAE
sk2ghh5snUDKHtcJfPC2zn6sLQixO9h1hPIYIC17FC28RIRqI7mmPP4HN+IbQfHDwCFD8Z4V3rpm
p9ciA/xLd2/HPAapvzi0yedYaagN4Hds3MFjpRe8dcqH3hZ8464djH3de9+H46ADbca31NhfMkhu
f3P2+CulqE0c21zJY4FHzZzJ9GD8m5JuGUkNwITjCvfVvJmZxWuQzhBJT11chUASFiEJmfVqxCzV
pV4Mo96XAVhsGEEAlhHX3f/0VbwbfOuls8b9/gec1zGjqqHrRUAERKCBCMiDbaDGyoKqsfixNgi+
ZAUuE3xauFKBc2tT4pqGaTlMYuBwgg9eovDp980IfwR0deHf/ume7/xsD64pe5Qxknu771oLVzaM
hpGuwRtWEVxFvjf8f/zQ0C9cxZpC5y+fsV9ehdZpf9NlmHE+sOuFX3YhGFs4Ka3sO5MjcdPFSRNI
wkNLQmbSHCrJz1Jd6sUw6n0ZgIWnirwbluUR/S8Nv3DTnD/CicRRBep6ERABEcg8AXmwmW/iNFYw
dj82jZWMotNdP9qNE5hQ4h3XXPrJd02Ld+OT8Y3hd332g1eX+saYLeGEp9JEX+P/m6qYGLX5xg5W
my9rFrWOwjjytcjEvnfb/h8/8hxi4ywMBxWvKYLvGmDI9zPjXxThlWjBa9suuuHKi/AvSkW+t1MB
TIL3Hjz+xP5ju/YdGX3esL947wwnMRkvlISHloTMejVDlupSL4aR7lsagEVxHAyx5Q8+hBSYu2bc
8uU//924FjQjKaaLRUAERCDNBOTBprl1Mq5bwI9F7PEtM8bPnDwaO3UzXnOretilvOK7j+K9vvB5
sAaf0LsT4IP9zXcfw7+x5Cdnu3XQLe/Z9jxO80ajsKaAhgj2O954Sb8nQsOHxMuZ79950D4JPLmd
59Bwz3NHn3nxFdwucGAbdN6w7K3Zbim32iXhoSUh0612/qWyVBd/GjWQUBqA5U13fPn2/ffec+9l
N77hIx82sdka6KNbiIAIiEBDEDDWKrf1Qh8RqCUBTLKxOfObt74ZuzTxM2bh3/px95/d9eD8lT/7
8g+24zQjeHe11Kf298KhwZ/62v3wQ3Bo8N/fcl1C7ivqhSX8r9xyHdwwuGfYcIXU4tpXNv13hOOK
jofuh8O06L6CGCKZ/7L0LdiW3K/7iuuxCoMufecnrkfiH2LpPIIFohBj77jzPvyHH4xjHBUINt+i
wyBWj2xzzHpv/tyP8bBAVXxD9xWtjBAxnqbbP3otHquo8nV96gjg+MMBc9Z0F/UK/MqvcaYhP+bC
kJelrrbNqBACsDB8SNMoHfzH3DALRFqPdD+w62AzolGdRUAERCAcgQE9PT3myiytwmapLuGasiGv
gmf12BMv/erxl+xUTLoEcANmThqdvfMY7/75k/DY6SbBQbJf3JpcE5p0Zbg6S+ZNjzddOTm1E5UM
txCpwphKmu2siJq+/Y2XoF38E4AhExtl3bbLoiyDq0gMRnqwSWY2NKDnhLEjJo8/74pLRoZxsBPF
2CjCk7AIScjkG+Tmz9jQsnTLYrwaPfBr7wvmCB5/XjV1y9r24GXBZunsmLObAit8EqlLo3SOmutZ
KQALRXBIAU4kRjrx//ytP1r3l+21MRA1B6AbioAIiIAjAWURO4JTseQIYKb+y64Xf/X4i/BmzV24
sfC3rrgQriwilsndvQaS7VOCP/KOVrxBoQY3NbdApHH1xh0I6GF1YPkHr250mM7o0M3guGKnq9m8
ChRwXN9xzSUJMel3uyw0QVbwnueP7Xomlx5cmoNw9eTRaDW4rHBcmyrZ3rmVSwsm4aElIZOaBxzO
cv5n4T11fMtc2VIWhKKjWxlocnWJsRGzIarsDli7ajjMCYcU/O/XveO/feoPPI+mzwYx1UIEREAE
DAF5sOoMqSaAST9cWTi0dgAK2ZKYyue92YsaLoqIqNqK7z4GXwXxvU+/b2ZdQmdGB6zrf/aDb6iL
DvXqdnALuc3VbFVFQ2B2CN+1Zj5h2e2y6MmBl/SgdRBcnTFp9ISLzsUPOs0llj6ThIeWhMzQHqzx
WgdsnFdwYisEWvPxWbyDvXIAFrJQl1g4S0i/BB4+9frjPedOHvz0ZYP7vKLMFBx7YP8VXbueHDX5
3ivfMnXIE/0K1AUiIALNSWDSpEkLFixotrrLg222Fm/U+sLly3uzLyHZ2GR7ojIIyf7WFWPe1Dam
Ieb3mx/chzxeOCpwlpZ/8A3+SarOzZnfEPso90/ab3FwFpiegsCLw3ipz869R+gWHjhy8sDhE6df
fc1sQ4XHCMf1xtePq2Nwg72a5xhDScR+J4w998rLRuXTg89NKBScnpaqiyZJeJtJyIzbgw3lvtKD
XbZsWV2apqlu2m8AFjRwPjwSic8MHPzdWX/yjWW/01R8VFkREAERqE5AHqx6SOMRgBOC414x6bdP
fOWrOBGYfVPbRaVbhuAqHDh8MlDVwPGtxs/p9zJPZDhYMiUvqa++LRZ47cUC1Hr/oRP7+2J85VRu
r2a/QPByl8vGnBu4DH7a0CF9zpBDI1ZZiTCNeOzEq0i1pTQk3L6a91H3Hzpp8oGr64MA/tvfkNvm
qq1l/TZc9i5IwkNLQmZuZ2vbkq35Bpi9umvLzZv6/Lq4hQHV3q9zFy1uDZSaumrAiun4HlcXheWl
VY7DJlKX7HUjvxphWQ07YJFY1O/q4SPLPn1o22P/35Sb//gvF2IHgd9tVVoEREAEskNAHmx22rIJ
a4KM0Ie6Xtj21GH82xAHF6fwZTY48xnn2QbyVxu6L8EHvnBk7hWsxm1GuHXaxMIrmq6E2zxYR683
dAt7KZ+Eh5aETK9KehTOUl08MCRbFOeHY/UQC3bfuPXN1Yejp+7esGf9N3eNnjbyY5/COefJqiXp
IiACItA4BOTBNk5bSdOqBBAJzCVk7jxY9m0lmCtMHDsiIADOzJBBwRhg2cuy7fOAGN5JW7oEYFxB
w600lGo7h1Xa56Wjp/a98ErgAhM+Nd+/dPR06Ym75q9yTTUG+BNIwkNLQqZ/Td0kZKkubgSSLoXl
wo/d8QuMt/0GYKHJyf377/vDjyCR+D/n/uWqj+fer6OPCIiACIgACMiDVTcQAREQARFoFgJJeGhJ
yKxXe2SpLvViWP2+4QOwlHN/x6ITz+z9Qevvf/n2j2rjQzrbVFqJgAjUnoCxVkqrqz183VEEREAE
REAERKBZCCAA+4NfPInavvfNl4dM7Rl/01tw/VWHduHwp2bBpHqKgAiIQGgC8mBDo9KFIiACIiAC
IiACIhCRAI6jR/4wzmTCeX4hi469YTauvPzlJ3EUf8giukwEREAEmoeAPNjmaWvVVAREQAREQARE
oKYETAB2wVsnh7/xeVOmDBk7bsSrx5/75a/Cl9KVIiACItAkBOTBNklDq5oiIAIiIAIiIAK1JmAC
sFHfQX3x7DnQ9eIXHt/2ZO4N3vqIgAiIgAgYAvJg1RlEQAREQAREQATqQADxSbzZa8X3HsN/VQ4k
r4NmMd3SLQDLm190ww3498pDOx/qfjEmdSRGBERABDJCQB5sRhpS1RABERABERCBRiGAA4q+/IPt
71/5szs27sDP+O9TX3vg7p8/2Sj6h9TTOQAL+RfMvHrAOSNGnXp598O7Qt5Ol4mACIhAkxCQB9sk
Da1qioAIiIAIiECdCeA11P/47zs/vOpeBF3v2fY8QpR44TNekfqOay7Fz9/6cfef3fVgZoKxPgFY
ttO4WbmXwY7oemj/4RN1bjndXgREQATSREAebJpaQ7qIgAiIgAiIQOYIwCn99k/3fOyOLXBQGZYc
f8E577vx8rWfmoX/cELvrfOmf/HD14w+byhc3MwEY30CsOwC42+6Cf+2Hn78oS4lEmfuqVCFREAE
PAjIg/WAp6IiIAIiIAIiIAIVCMBThRcHj7Tjzvu+87M9CCSOGD547nUTbv/otd+4dc5H3tGKAKwp
em3bmLWfmg1vlsFYFIE327ho/QOwqPvomVe3DB4y7pUDOx59vHFRSHMREAERiJ2APNjYkUqgCIiA
CIiACDQvAZ7P9Nf/8jCyhZEzvOf5o0MHD7xp5sV/8d4ZG5a99ZPvmjbz8tFl6cC/RUbx399yHTxb
hG0RsIUrC2mNiNI/AItaDxw6dNSbrscPxx/+rwbl0IhtJ51FQATST0AebPrbSBqKgAiIgAiIQAMQ
sM9nYuLr1ZNHI0P4X5a+Be4rnNgwdZg2YdSdn7geOca4GGc7IYTbcMHY4yfP/OAXT0L/SO+ALQvn
kht+G99Pealr2xN6p06Y7qNrREAEmoKAPNimaGZVUgREQAREQAQSIlDpfCY4ris/ci1OaUJwNdKt
EbNFjnHjBmORMo0M6ikXj4z6DthSSmNnze4ZPGTC0b2P/GZfJIa6WAREQAQyTEAebIYbV1UTAREQ
ARFIEYHuNXMG4DNnTTd+wr8pUs1FlX7PZ8LJTC5yi2VKg7HbnmyAOCR3/6IS/gFYCBk8YsSwyW34
4blfbPGBqbIiIAIikCUCvh5sxuxxlppWdREBERABEUgTgc5VS2Zs7tm8CDq1Tp2xdUdXmpQLr0uk
85nCiy17JYOxSCqGNwuH+TPffAjvj0WOrqfYRIsjfxh7VmMJwFLPy3/n/8K/lz2zPTPvGUqUv4SL
gAg0AwFPDzaMPS44uQMGdHTaRM3X+e97f8P6tH1hZ0duxZqL1vniFcQ1Q2OpjiIgAiIgApkg0L17
++zpuchao33u+tHuqOcz+VcR3iAyiuHKwqHFGVEdd25N7dtl4g3AEt2Ya9+Ef5FI/NBvnveHKQki
IAIikAECnh6sRaCCPe5es3DD/K6enp6u1dtX5JxQK3dq0WZ839Ozth3r0Yu35H/GZbMXzcMXxcva
1xa+bskvV0PcjuW8MldMHxEQAREQARFoDALta7umrxgwd93WJW1tS2YsX9zaGGr30RIHC+N3h/OZ
/OuKs50YjIWXiIOO0xmMZQAWbwby3wFriA0fP75n4pTBr5158mc/98coCSIgAiKQAQID4Aqaaqxc
uXLZsmXRagVPs23J1nwZOKSlXiViqBvn5b/HlaumbjFX9Ba0y3V2zNm9dItt1wvX8SLrbrNXd/W5
LqA26hKtIrpaBERABJqAwKRJkxYsWNAEFe1TRRfr1h8jB5kwiHPXGbllbWZ/d03m7w51SUaRUFJx
QDGOSoKjiH22t857PdzFUMWSvwiu9cfu+AUUg6eNuHGMN+z67vf2fXv9b8bOWPi1lVGPxYpRDYkS
AREQgfoSMNbK14Pt1x5X9GCLAOCULmxZT2c04OTajChn6e6iF9wrtzzJxrLH9e0NursIiIAIZJtA
EhYhukzYrRXTq6691qsVotelXpoW7osdoXf82w6+ZQcv6cFbZD1PjYqlPkix3njf04i+Lv/A1bEI
NEJe2bf3gY8vOjVo+Ki/+eqsqy+LV7ikiYAIiECjEDDWyjOLuHPjOsRCmdVbPrG3bfrs7btzO1i7
N21oqbDrZ8ZU5lJ1rtowf2nV3GAcfkFp+DTmHqJG6SHSUwREQAREIF4CsIcNe3xTvCS8pU24aAR2
xuJNswhI3rPteeyMxf5Yb6leApLYAWsUOnfCxDMXXjzs7MntW37lpaUKi4AIiEAmCHh6sP3b49bF
y2csacNJTMVdP4UNruZAprYdy5lZ3L1mRUvvvqDgZXO3r845t+1L52/ISRsw17o2Ey2hSoiACIiA
CGSaANZgW9bNLZxOGDzdMNM1T6hyeNPs2k/NRhYxTifGtlhsjoUbmdC9+hXLHbAIwMabP2zuO+aG
G/DzmYfv71cTXSACIiACmSfg6cGGsceFs5iKRy/hzKZcyrA5usnsncU31jbakssKm15NOR3klPnO
qQqKgAiIQJYI9J+1lKXa1qYuSB7+4oevYTAWBxTXKxibaACWJFv/r5vw78SDu3iYlj4iIAIi0MwE
PD1Y2eNm7jyquwiIgAiIQHgC/WcthZelK20CdQ/GJh2ARWXPnzbt1XNGjnj1+EM/+S+1vgiIgAg0
OQFPD1b2uMn7j6ovAiIgAiIQkkDXjq3KIg7JKvJlJhiLHxiMxZHFkaU4FahBAJZ6nfPG6/DvkV8+
4KSmComACIhAdgh4erCyx9npCqqJCIiACIhAkgTMnhq91DwpzAzG4l/sjP3Wj7v/7K4Hcc5TUjcr
yq1BAJa3uurm/xv/jt77a9Qu6UpJvgiIgAikmYCnByt7nObGlW4iIAIiIAJpIID36Azo6Mz9a306
OtOgWuZ0wIZYbIvF5lgEY/G6nS//YPuHV90LbzahQ55qFoBFQ104/aozQ8658ORL9//80cy1myok
AiIgAhEIOHuwsscRKOtSERABERCBJiaQW+1d264139p1ARxQ/I1b3wxXFu/dgZOJjGL4sfBmkWAc
rxL/+O87Ez2C2NZ24NChPdOvwTfP/mJrvLWQNBEQARFoLALOHqzscWM1tLQVAREQARGoMwEs/RYD
r9aPdVYqs7cfOnhgPql4Ft4cix/wKzKK8cadj92xZfOD+2JJxMWxwPf95gAILnjr5NpwvPzG3Dt1
hux+pDa3011EQAREIJ0EnD3YQnVkj9PZrtJKBERABEQgTQRyL0Gfu86c5DR33ezpbWnSL8O6TJsw
CsFYhGQ/8o7W8Recs//wCQROEZLFK2Q930zznZ89AW7JvQO2tFHwTp2zAwePP/rso489meEmU9VE
QAREoDoBHw9W9li9SwREQAREQATCEMi9zHzzopZFm3mMU09P4SXnYcrqmhgIYFvs+268/Bu3zsEW
WeQYI/X3xw8/+6mvPYDTnvADfo16j9oHYKEhEolPTcwtfXT9+GdRFdb1IiACIpAZAj4erOxxZrqB
KiICIiACIpA4AWy/Wdte/S65peH8h+nG5vCnOWu6rYLBrytcli+R+1vf0onXM903gPsKJxauLBxa
nvaEYCxPe0J4NrzuDMAiP3nKxSPDl/K/ctyNb4GQnkf1Th1/lpIgAiLQqAR8PNhcnUPY40ZFI71F
QAREQAREoJYEutcs3DC/CwHartXbV8Bn7dy4fXXu157NMzZsggsL/zbvjBbOhOpa3bKjK+ekBi7r
4+uumL56US3r0CD3Qjoxkop52hPSjLEtFqc9YYssNspya2v1DwOw2FsLIf1dG/PfX9/+dki84NC+
Z5+N+VSqmBWVOBEQARFIjICvB5uYYhIsAiIgAiIgAs1FAO9YnzE15xG13jw/55y2L52/oS0XkV0x
ff1ifI/UJyYfM1TbtmN5PqYbvMxA616zEQWnNhfEKLXlaU846gkHPvG0JxxWvOJ7j8GVhUNb5QU8
DMDOvW4CorhRbhjDteeOGvny+CmDXzuzbdNPYhAnESIgAiLQgAQGYG3XqL1y5cply5Y1YC3KqJyl
umSjRVQLERABEagXgSQsQhIykfG7cV4+0xgu6qqpW9a2dMzZvXTLzZvmwFktk4FcvL6z7GUFGe38
a97zrfBBXerVNKm679mWwQfOjH727MUneoZTsXGDXrhk8MGRA47Zeh7vOffhU68f2PLam4Y9NnTA
q7Wvwnn7Ds946rEnxkzZP21C7e+uO4qACKSBwKRJkxYsWJAGTWqpg7G88mBriV33EgEREAERqAOB
JLzNJGTC51zYsh7OJn9Y37Iw58bCoe11bfvQ49dLd+e93eBlkNG2xLw3FEdIVd6Dm0Rd6tDM8d0S
kdifPPoc3r5DkXip7LtvmMggLX5FkBYpxPNmve6Wd9Ynvr2v66muWz+OQ4nf/L27h59bcLbjq70k
iYAIiEBKCRhrpSzilLaQ1BIBERABEWg2Aq2Ll89YkksbblsyY/niVuQSb5+bP9dp7vbVSxmZze2D
Ncc98evgZfBrc1flTlvMfzYvmr26q78jpJoNdfX64rSnv3jvjH9Z+pYFb52CPOF9LxznC3jwL9xa
7oB975svrxe0CW2TDp9/yaDXzjzyY7NEUS9ddF8REAERqAMBebB1gK5bioAIiIAINBMB43LynGH7
tOEAhsIZTT0MmBontPDuncI+2DJf26/ogYw+OcPta/XmHqfeBt/1Q2+bAj8W3ix8Wpz2tPnBfV/+
wXYIq8sOWLsSg2Zcg18P/Pxep5qpkAiIgAg0NgFnDza8PW5sQNJeBERABERABPwI0OXsWj27+D5Y
vBl29vTcaz31aQQCN828GC/gwWlPcFxHDB8Mz7aOAVgCm/iWG/HvsK5HG4GfdBQBERCBmAk4e7Cy
xzG3hMSJgAiIgAhkmgBOGi66rW3TZ2/NvwhHn8YhgN2wn3zXtA3L3oqobO2PIA5wuubNbzw6fNTQ
Mye7fvFfjYNQmoqACIhAPAScPVjeXvY4nmaQFBEQAREQgawTaF+7mbtcc/tcW/IbW/URAWcCJ668
FmX3/J+fO0tQQREQARFoUAKeHqzscYO2u9QWAREQARGoGYHivpu568wtty5Z1Vmz++tGWSRw0bVv
QrXO/vqhLFZOdRIBERCBagScPVjZY3UsERABERABEQhDoPfopcKJS7n/6XTgMOh0TUUCN8y98fiQ
EeccP3RwpxLS1U9EQASai4CzByt73FwdRbUVAREQARFwJYD32wzo6Mz9299ZxK53ULnmI4AzpY5c
diXqvfM//0/z1V41FgERaGoCzh6s7HFT9xtVXgREQAREIDSB3Dty1rabN+UwEKsYbGh+urACgWG/
NQt/OfaA3gqrLiICItBcBJw9WNnj5uooqq0IiIAIiIAfAcVg/fipdAmBa35n1pmBg4cfOXBy/37h
EQEREIHmIeDswRKR7HHzdBXVVAREQAREwIeAFYPV+2B9QKpskcAVE8fsG5tLJP7Npv8UFREQARFo
HgKeHqzscfN0FdVUBERABEQgJgJ6H2xMICWm5fXXAMKBBx8UChEQARFoHgKeHqwFqqI9Lp5ajGMs
SrjmYrhz1nTjexPN5a/2Jyeg+G2Vy5qn0VRTERABERCBxiNgZS21Ldm6aJ7eB9t4bZg+jae9bQ4S
iYfu7Tp96FD6tJNGIiACIpAIAU8Ptn973L1m4Yb5XTizomv19hU55xT+aK87umL66kWsVyGa27W6
ZUf+VPjiZfj/wpb5hYvMZT2bZ2zYFPR0EwEkoSIgAiIgAiIQB4G+JznpIKc4mErGtTNf9+z5E8Hh
2fv/SzREQAREoEkIDIBvaaq6cuXKZcuWxVtz+Lgb5+WPXIQvumrqll6b3b2mY9PNa6eumrN76ZbF
rbk/Y1G6ZdHmMuczdnYULirqFpRVqjPqEm9FJE0EREAEMkBg0qRJCxYsyEBFIlUhCevmILNg5/Kq
lzV2kSoV48UOdYnx7hLlSeAfP/u16Q//vy1tM992x5c9Ram4CIiACKSZQK+1st6u3nPbbbfZv4b5
uWv1bFNP2OPSD46rKHyPS60rir9tXjR7dS5EW/z0Xt/nS/siFO1bppyiDnUJU19dIwIiIAIi0HAE
krAI0WXmjm8qGLyc7SxrM+uDNnpd6qOn7lqWwA//c9v/ufmdP/69/3b21CkhEgEREIEMEzDWyjeL
eNWSFmOPt88ts9MV22O3787l+3Zv2tAyvc0EUTdt2LpuLl7tPnfd1iVtZcpV8v/zWcXrc0FbfURA
BERABESgcQhYx0V07dg6u9ciNk4VpGkaCVx/3RXPnnfJwLOvHrz/vjTqJ51EQAREIG4Cnh5s//a4
dfHyGUva4Kq2LZmxPOd3coNr6+ItXCDIx2DXtpvjnuZuX700d7qFtQ+24ObmTnPCrtolW+HyQp45
3CluJJInAiIgAiIgAnESoInL7ZTJL93mrFrLVh76oI8I+BIYf8E5z4+/ClIe/8k9vrJUXgREQAQa
gYCzBxveHpuzK7gFFr6rHUFtX5v/zXi0PYU/Fi/r/UPuL9ZvxQsbgbJ0FAEREAERaGICtu0y6V06
yqmJe0TcVR8z50aIPLH90ddOn45btuSJgAiIQOoIOHuwssepa0spJAIiIAIiIAIi0IQErv3tK18a
fuHAU68c2vZYE1ZfVRYBEWg2As4ebLOBUn1FQAREQAREQAREII0ErpwwquuiadBs372/SKN+0kkE
REAEYiUgDzZWnBImAiIgAiIgAiIgArUlMHTwwHNefw3u+eIDOsyptuh1NxEQgXoQkAdbD+q6pwiI
gAiIgAiIgAjER+D1b/6tI8POH3Ds5Zd37oxPqiSJgAiIQBoJyINNY6tIJxEQAREQAREQAREIT2Dm
5NFPnj8Z1++/b2v4UroyKoE9zx/98g+2r/jeY9uePBS1rK4XARGIi4A82LhISo4IiIAIiIAIiIAI
1IcA3qnz8hW5ROJnf/qz+miQ9bvuP3wCvuunvvbAPduev+83Bz7zzYeWfesh+bFZb3bVL6UE5MGm
tGGklgiIgAiIgAiIgAiEJ9B6/RtPDRr+2ksHX9m3N3wpXdkvAfiud2zc8bE7tsB3xcXvuObSBW+d
MmL44MeeOAQ/FvFYBGb7FaILREAEYiQgDzZGmBIlAiIgAiIgAiIgAvUhMLNtXPcFV+De+++9pz4a
ZO6uh46dvutHuz9+530/fvhZ+q7fuHXOrfOmf+htU9Z+ava8Wa/DGVqIxyIwKz82c42vCqWagDzY
VDePlBMBERABERABERCBMARmXj766bFX4srn/+vBMNfrmioE6Lt+7I5fbLzv6dNnXpt11bg7P3E9
fFdka7PU6POG3vLOqd+49c3wY/Er/ViEahGwFVgREIGkCciDTZqw5IuACIiACIiACIhALQhcNuu3
zwwcfLJ798n9+2txvyze4/jJM9/+6Z6OO7fSd722bQx81+UfuHrKxSNLq1v0Y+cgPIu/IlSLZGP4
sXCAs8hGdRKBtBCQB5uWlpAeIiACIiACIiACIuBD4PVTxj45Knci8YsP/dJHTnOWhb8K3/Wjd/zi
Oz/bAz/26smjb//otV/88DXGdz1z/PhzP/7f2//2b/Df4W2PGUoIzCI8iwTjm2ZeXPRjf4EQrvzY
5uxIqnUNCMiDrQFk3UIEREAEREAEREAEEieAZNeuUbmtsM/fo62wEWjDd0XEFTnD9F2nTRgF33Xl
R65FYjakvHb6NLYWw2v9+fvfu3P1Vw7etxX/Pbzs0w/9+a0H77vP9mP/4r0zELBFKxiB8GMhMIIq
ulQERCAEAXmwISDpEhEQAREQAREQARFIPQEckDvsDW+Cmi//ehsChqnXNxUK0ndlyBThViQM//0t
19F3heO648u3//wD78O/8FrxzXlTrmi9pQP/DR09+uWdO7f/7Rcf/JM/tv1YSoAfixAu/VgEdRHa
lR+bisaWElkhIA82Ky2peoiACIiACIiACDQ9gWmtl+wbOREY6HHpU4UAt63Sd0UmMD1PRFDhkSLW
+vP35xxXOLGIwZ47YeKUhR+d9b++dd0/fHXiu+fhP/wMP3b4+PHH9jwOP/a+P/wIEozNveDHIoSL
QC78WPiuCO3Cj73750/Cp1WLiEAGCHSvmTNnTXcdKyIPto7wdWsREAERaDoCdTd76SYOPAPyn45O
KGp+4699P50dAwZwBlH5sr7i0l11aRcTgVlXjf3N6NyJxC8+cH9MIjMoBkcH88glHB1sdrFedeb5
3f/01S1/sAAeKdzRM8ePwUG9fMGHrv/6Ovw36X3z8athMXDoUPqx05b8Kb7H0VlweunHwuPlZQjk
0o+FQws/9ls/7jaHG2eQqaqUZQK9ZiZnoOasaVm8Zcvi1sg1hpiiNSv8mLNk+U9Eh1gebGT4KiAC
IiACIhCaQOrMXmjN63Bh95qFG+Z39fT0dK3evoLL24s249eenrXtuV8s97+zY8X01YuMjn0uK34L
cTuW54sXytehSrplzQnAWTo2YRpu+8Ivf2lcqZprkd4bmte3wnfFScKffNe0f3j3JZf/8t/huGJr
6zObN50+dAge6cR3v+e6f/hHOKiTF3wYAdgq9bnkHb9DPxYJxsaP3fvDjbYfa04zNi/p2fzgvvQy
kmYiECTQungLLMnmRbNX50wUnNfOjpwr2tkxp6Mjv+7a0UlftOCIFk1/v35p+1oaqc0zNmyKEtOV
B6tOKgIiIAIikByB1Jm95KrqL7lrx9YZU3Or2q03z2/Z0ZUTuG5ub0i2BTC56t29ZuP09Yun9t6x
z2WFr7s3bdha+L7fSYS/7pKQIgKTp09+9rxLel49/eJDD6VIrXqrsu3JQ3hl64rvPbbn+aPwXT9+
3fmfu6h79NeXP/gnn9z7w3+D44qtrZfNvfmalV/KZwgvOm/KlPAqw49FgvGMv/pr+LEQ1X3XWsRj
n7p7g9mNzDfK4qgnhHzhx/7jv+9EEBhpzOFvoStFwJkA4v83f+7Hzv8hW6HSrbdun74+v+o6d+M8
44ia1die5TsWBpKNC1ZpQNsSe5tD9+7ttH5hPwNwM3PtypUrly1bFrZouq/LUl3STVraiYAIZJYA
bB42bjlXDy9IxBsm8sWxTrt7KZ0vLNy2rF3b0jFgxfSuLYtb1sxpQ5xwbTuvuHnTnIUt63MXWiVy
ArCea5k7RBwZlMz/YdXULcXfKuiahEVIQiaWsDEHyFWmb7XwWwFLnzoHGOUKlbssx7wotzwg1MW5
lVUwhQRePHvB6KcPzn72voPjxj/elssobvLPkddG7j172eGzuRe6jj710g2HH5zy4p5zTrxCLGcG
DT40ZswLF409MvrCWECNOvTShGf2jTxymMKfv+yy5y+dcGbQICP8wNmLnj5z2cmeofjmnAEnLx+8
d8yg3MX6iEB4ApMmTVqwYEHI6//srgd37jsS8uLSy7DsgpdFlTXlBdteNEe0XUt391psRG17840t
09b3R9t2VVPTWF55sM6tqYIiIAIikHECMdk8UCrjwdbS7CXhbSYh07igFX3RXI8L7c0b6kFXN9hv
k6hLxp+NdFcPxwV9/HP/+gePfiMhNUfPvBq7QEdeeeXQC0aPmDhx+Ljx9gbRhG7qJhbhVqzEPdT1
4qhTL08/vue3j+8ecmAvRaEKY2+YNfbGm8bOmuUmvHopvDD2ye98+1D+tbGDR5yHIO3r3vs+hHlN
KRxT/INfPMl3xiL3e8FbJyNOm4QmkikCMRGIYMrLLy2X8WAD5q4fTeXBxtSUEiMCIiACItA/gTqb
vSQ8tCRk5qOlc9fleObCzG0m8FwIOgcsfYFqLo7NdCxeBhn5+HZrr69rBa3LNVYydem/W+iK5Ags
+9ZDU36yvvVQPhe9Jh9kzw4ZMWLUzJkDhwwdNW0aXLXq20dDKoXU39IrH3uizJfbnwp+efrV1/Y+
8Wzr4e7ph3dd9nLBcYW08W+5aQx81xtmwYkNqYbzZcf27Hnyu9/mudC43WXtN9t+LNYasCHW+LET
Lhpx4cigSldOGDVkUHDTH95YO3RI8EtcOXSwtgc6t5UK9ksgrClf29670trH/JR4sBWjtRV0kQfb
byPpAhEQAREQgbgI1NnsJeGhJSEzLtxR5WSpLlHrntXrEd/DS2JumnkxNl4G6oiwZOm7SfcfOrH/
8MnAla+cOoOLSxEdeuyxQa+dufSV50a8+sqYky+NPH0EEc6yJF8afuErQ0YcOGfcycFD95438eyA
wdigGy/zC0++NOLV3JtvqRKFjzlxaMSZ4wN7zlx6rPANvhw7a/aY62/Av4NHjIhXh36lwY99+gcb
8GIeXol47OUf/JAJXKM50F4/vP/pJN4ZS1933AXnjBs1HP7ttImjoABCvnh1cL9q6wIRSBsBebBp
axHpIwIiIAIikBSBJDy0JGQmVf/+5GapLv3VtVn+joN2cVBQLWs77pWDw86evOT4c8PPnrr0+HND
z54a98qBsgocHzLi0PALXxx+4fEh5x4YPu7U4GF78y+wtT/GL718zLCLjjzDP404enDYyWP44dzB
PcOeezJk7ZDzPPbGt8BxtTN4Q5aN9zKcVIx4rHltLPOK7Ui1T8AZqpYNTVepAo6zmjg258zPmJTL
bZ5w0bkXjhwGzxb+bbwVlzQRiIuAPNi4SEqOCIiACIhA2gkk4aElIbNeHLNUl3oxTOF9ce5u2Qhq
2VTV0ecNu2zMuYFamJBd4Pvw2arw2U4e2H90zx68W/Xorl2vHj/28s6dZVlhp+i5EydU+mslvHBK
RxRfdXP+tGkDhgzBldydyyLnXzmtBqnCkVofTJ7+17vNa2PhWiMeG+nc40i3o1fMGPurZ1/blT/O
5/HnysThA2IDwdsrTj7z2iuvnH/kuZZjL7+yN5eSDfjnTJgAD3zY6NHIIa99ZDsSB12cDQLyYLPR
jqqFCIiACIhA/wSS8NCSkNl/TZK5Ikt1SYaQpMZJAC+YObbn8RN55/bEvn1498yRXTvtV9c2ol8a
FRBq/fQP7n6mcxMrDj92wu+9+4KZV0eV43M9kpa5xrFz7xHsyD1w5OSBwycGv3ry4G92n3/65VGn
jzAZ++Ljzw1+7UyYGzXQEV9hqqNrUkhAHmwKG0UqiYAIiIAIJEIgCQ8tCZmJVD6E0CzVJUR1dYkI
pIUA/Fg4sft++EPEqKETT8MafN55IyZPpornTb5iyHm5RF/EqGOP04aPkL827NyXR118ctiIF4Zd
+MRr570yOKfSsDOnxp08gC3Qo06/PLq4G7mULCuFCPmgc0fgiK8kKpKW5pQeyROQB5s8Y91BBERA
BEQgHQSS8NCSkFkvWlmqS70Y6r4i4EwAQem9P/w348f2K4c+Yc6tDe3r4igpOMl4tU/Pq68iVfvU
oUOv7Os9nNm+I86XOmfc+HMnThxywQXIwR40dGjZyDCSk4+deHXP88cOHz+974Xjew8ex2uBcG7W
oJ4zE4/tHX7m9LgTB8599Tj2M5etTsi79ItCFzQbgVp6sOY85b6n+ZtXBhTedBv83W6S3N+284W4
1S6zi8geN1ufVn1FQAREoBKBJCxCEjLr1YJZqku9GOq+IuBPAK+QpRCmWPPnI9u2Fb48sB9R00h3
ga97+tBLiPSWLRV7dJTHXONAKW64felozrnloVxjTxwcfvbk647uCxwQbSuG8OzIKVO0vTZSEzfb
xbXzYEvez44X1y1sWZ9zRvkpvGOhq6Pv2+2ty3JXTJ+xoWUpCun97M3WVVVfERABEfAmkISHloRM
74o6CshSXRwRqJgINBSBqL5uHXeo4ljsA4dP8uyoXc8cOX7izM59R+DTwrPlbttxJ14YfuZkld22
pye29QwecvqSy8+ee/7ZCy8+c/6FCOFecUmZA5NxShkOWG6olpSy0QjUzoNFzHTjvNwr1nNvVl81
dUvuJ/tjvi2GagshWXNN95qOTTevnbqq4OBWuixYf9QwGhJdLQIiIAJNQGDSpEkLFixogor2qWIS
HloSMuvVLlmqS70Y6r4iIALhCfAQKZ6Q/MyLrxw6dgqnSeFQK7yNKeT22gPnjjs9aNizIy45OWjY
cyMuOTVo+IFzx1ZSgOcqB/6KI7WHDAp+WelKnMsdpnaIOSObOnDlS0dP7XvhlcCX5lzowPd4c++t
86aHuVdzXpMSD9YEaNEKjK7evGlO247leY83/yk6uIHYa/Cy0laUPW7Onq1ai4AIiEBtLEKWrEyW
6qL+LwIi0KAEcB4yX/YT+Dz1y8dOvnJy6L7dA0+eHHJw78DjRwe/9HzZOr5y7gUvDRrJVw0/e+4l
ZwcOLn3VsCk48WiZncDYxFsqGcnPpV9OKFfcn/yeS97wh3fd7i8nqxJq58GWZBEXs4dzzmlvOnFv
gLY3aEsHtm3J1mIrLNrcNX1FIY7b57IyzSR7nNW+q3qJgAiIQFQCSViEJGRGrVdc12epLnExkRwR
EIE0E8BJVNjfy1cNY6vw2VdPV3nVMI96bojPsHHjZ3/jWw2hal2UrJ0HmwuuDpi7LldLnuRUcFxz
UdSib5pLHO79nWnEffxbs1s293WhWDDbOMBR9rguHUs3FQEREIEUEkjCIiQhs17oslSXejHUfUVA
BOpOAD4tPFueg3X8iSfOHDsWeNWwrWHuBT9Dgptm8eWAIUMCFeGZzKVfDiz5su4EMq9ALT3Y+sCU
Pa4Pd91VBERABNJHIAmLkITMepHLUl3qxVD3FQEREIHmIRCINNas4sZahdqXXDO1dCMREAEREIFs
E4DZm7OmO9t1VO1EQAREQAREIEMEYLoH9H7mrGlZvKX3vTLh6wkxHZ28vPfHnOzI8wJ5sOGp60oR
EAEREIGoBFJn9qJWQNeLgAiIgAiIQHMTaF28paenZ/MibOLE//PvN825ojhpt6Mj79t2dGLbKD4F
V7Ro+vv1TPPB3PmLItOVBxsZmQqIgAiIQJMQ2LP+mz99V7vzfztXf6WlJXVmr0naTtUUAREQAREQ
ARKIw5qXZ7l1+/T1PT1dq7fPxdtT4ePO2LCpG/HVhRvm51zdnuU7FgayrtbNZSy3cK4R5ghbFk+N
3k7yYKMzUwkREAERaA4Ch7Y95lPR6sXrZfZ8aqSyIiACIiACItBwBJKz5rPn34zXzLROnTF7ehuw
tE1v2dGVw7N1SVvOT+VhvvYHB/vmP12rZ/tglAfrQ09lRUAERCDLBK79uzve9u+dzv/N+l/fqkKn
XmYvyw2muomACIiACIhACYFErXlZ3kVHNZdxnESDyINNgqpkioAIiIAIOBJI2uw5qqViIiACIiAC
IiACIQi0Ll4/fUXh4KfiyU0ViuU3zM5dlwvZ9rtn1hYhDzZEO+gSERABERCBmhCogdmrST10ExEQ
AREQARHIGIH2tSai2r52bXtLi/mi+AO2tea+LxyBkcsWzv9a/BT/zCtyf+JZGflPpGitPNiM9S1V
RwREQARSSCBFZi+FdKSSCIiACIiACIhAeALyYMOz0pUiIAIiIAIiIAIiIAIiIAIiIAL1JCAPtp70
dW8REAEREAEREAEREAEREAEREIHwBOTBhmelK0VABERABERABERABERABERABOpJQB5sPenr3iIg
AiIgAiIgAiIgAiIgAiIgAuEJyIMNz0pXioAIiIAIiIAIiIAIiIAIiIAI1JOAPNh60te9RUAEREAE
REAEREAEREAEREAEwhOQBxuela4UAREQAREQAREQAREQAREQARGoJwF5sPWkr3uLgAiIgAiIgAiI
gAiIgAiIgAiEJyAPNjwrXSkCIiACIiACIiACIiACIiACIlBPAvJg60lf9xYBERABERABERABERAB
ERABEQhPQB5seFa6UgREQAREQAREQAREQAREQAREoJ4E5MHWk77uLQIiIAIiIAIWge41cwbkPx2d
+Lazg78MmLOm28Zkrqp+WcXyQi4CIiACIiACDUxAHmwDN55UFwEREAERyBKB7jULN8zv6unp6Vq9
fQWc1va1+BmfzTM2bMq5sPBci77sos35v6xtx9fBy4pIOjduX52TZspniZXqIgIiIAIi0LQE5ME2
bdOr4iIgAiIgAuki0LVj64yprdCp9eb5LTu6isp1795e+Hrxli2Lc39vaVk3tzdUW7jOXFYs1750
/oa23GUrpq8vFEtXfaWNCIiACIiACDgQGIDFWVNs5cqVy5Ytc5CSwiJZqksK8UolERABEWggAklY
hCRkImt447x8XBXR1lVTtxR+Wtiyvui49oWOq4p/s37svaazY87upVtu3jSnbcdyhmvLf1CXBmpN
qSoCIiACIjBp0qQFCxY0GwdjeeXBNlvTq74iIAIi0HQEkvA2k5Bp3NDiDy29Lmq5Riv6uWXdV8sL
7vWMK3qwmVm/brrOrQqLgAiIQNMQMJZXWcRN0+aqqAiIgAiIQLoJtC5ePmNJLu+3bcmM5YtbsS12
ydat+S94llNhH6w5yAmhVURWg5fBX81fjVTk7cw1nrt99dLKEdh0M5F2IiACIiACIhAgIA9WXUIE
REAEREAEUkKgeChTPue3dfEWnuSETz6NGF/k/t/7fT4zOHgZZDDpuPcP5ZOQU1JnqSECIiACIiAC
kQjUwIPt+24AW7vcX/q8IiD34oDAOwPKvUugzGWRKq2LRUAEREAEREAEREAEREAEREAEGpBA4h5s
8N0A5mUA+W078xdZzDo7VkxfXfyi+M6A0pcE9LmsAZFLZREQAREQAREQAREQAREQAREQAScCiZ/k
VO5kxV5NeU5iPtupe03HppvXTl1lvuhTH3MsY/XLesvoZEWn/qBCIiACGSfQ5KcXxti6SZzkFKN6
kURlqS6RKq6LRUAEREAEGohAr7Uye2zww2233Wb/GsvPmxe1FN673rV6duGnXsGbF83m69aLfzRf
2DfHH8Nc1kffJOoSCxAJEQEREAERqDGBJCxCEjJrjMXcLkt1qRdD3VcEREAERCBpAsZaJZ5F3DZ9
9vbdOBOxpXvThpbpbRW8fPxxa/717HPX4djFjk7rMvslAVUua6DlA6kqAiIgAiIgAiIgAiIgAiIg
AiLgQiBxDzbwbgDzMoDcftiCw4rDm1qKBy7mY7CFd7jnznTq+5KA0stc6qwyIiACIiACIiACIiAC
IiACIiACjUggcQ+2paXPuwHMywDs4/+tY/7b1xZ+KXlnQOFdAoRsLmtE5tJZBERABERABERABERA
BERABETAhUANPFgXtVRGBERABERABERABERABERABERABAIE5MGqS4iACIiACIiACIiACIiACIiA
CDQGAXmwjdFO0lIEREAEREAEREAEREAEREAEREAerPqACIiACIiACIiACIiACIiACIhAYxCQB9sY
7SQtRUAEREAEREAEREAEREAEREAE5MGqD4iACIiACIiACIiACIiACIiACDQGAXmwjdFO0lIEREAE
REAEREAEREAEREAEREAerPqACIiACIiACIiACIiACIiACIhAYxCQB9sY7SQtRUAEREAEREAEREAE
REAEREAE5MGqD4iACIiACIiACIiACIiACIiACDQGAXmwjdFO0lIEREAEREAEREAEREAEREAEREAe
rPqACIiACIiACIiACIiACIiACIhAYxCQB9sY7SQtRUAEREAEREAEREAEREAEREAE5MGqD4iACIiA
CIiACIiACIiACIiACDQGAXmwjdFO0lIEREAEREAEREAEREAEREAEREAerPqACIiACIiACIiACIiA
CIiACIhAYxCQB9sY7SQtRUAEREAEREAEREAEREAEREAE5MGqD4iACIiACIiACIiACIiACIiACDQG
AXmwjdFO0lIEREAEREAEREAEREAEREAEREAerPqACIiACIiACIiACIiACIiACIhAYxCQB9sY7SQt
RUAEREAEREAEREAEREAEREAE5MGqD4iACIiACIiACIiACIiACIiACDQGAXmwjdFO0lIEREAEREAE
REAEREAEREAEREAerPqACIiACIiACIiACIiACIiACIhAYxCQB9sY7SQtRUAEREAEREAEREAEREAE
REAE5MGqD4iACIiACIhASgh0r5kzIP/p6MxpFPjVKOl2WUrqKDVEQAREQAREwItADTzYeA1wJWle
FFRYBERABERABOpOoHvNwg3zu3p6erpWb1+xpjvwa96hnbOmG/+rflmhHiXF614/KSACIiACIiAC
MRAYAEtpxKxcuXLZsmUxSLVEwN4ubFm/ZXFr8YcWfnHzpj7fr29Z6HRZayVtk6hLvGQkTQREQARE
oDYEkrAIScjs7BiwcV7P2va8r7pq6vKWufavW3J/yH3cLjPFS5mvWrXqzJkztWkL3UUEREAERMCf
wKRJkxYsWOAvp7EkGMubuAcbMLSeBriSOZc9bqz+J21FQATqRaDJbV6M2LPkwcaIRaJEQAREQARE
ICECvZYXMVjzue222+xfY/l586KWRZvzkrpWzy78lPst8L3nZbGoKiEiIAIiIAKZJJCEdUtCJuzk
7NXMIs79EPjVNI3bZZlsWVVKBERABESgeQgYy5v4Pti26bO37+6GI969aUPL9DbjkQe+97wsIUdf
YkVABERABESgZgRaFy+fsaQN5zi1LZmxfHFr4FezD7afy5D7lNst21JSvGb10I1EQAREQAREIEEC
iWcR5zfszF2XqwIisNjEYzbGBr53uyxBNBItAiIgAiKQDQJJZPwmITMbtFULERABERABEUiCgLG8
icdgW1ra1xZi2zyDonXxFpzrhB8C37tdlgQcyRQBERABERABERABERABERABEUgjgRp4sGmstnQS
AREQAREQAREQAREQAREQARFoOALyYBuuyaSwCIiACIiACIiACIiACIiACDQpAXmwTdrwqrYIiIAI
iIAIiIAIiIAIiIAINBwBebAN12RSWAREQAREQAREQAREQAREQASalIA82CZteFVbBERABERABEIS
+NGPfnTy5MmQF9f3sieffHLWrFnPP/98vGpAICTHKzMhaYcPH/785z//9a9/PV75qP7q1atjB/vI
I4/s3LkzXlXRVwEhXpnJSdu4cSPaK/be9dGPfhSPbXJqp18ywN5///3p11MauhFoUg82tZYYQ9j3
vvc9t7ZsoFIwgT/72c8aSOGMqYr+HyN/iIrd9GYMuKojAg1N4Fvf+tb3v//94cOHp78WGIve8573
3HDDDfH6b7DLEPu2t70txpHTuG2YZMfoGWJ4/+AHP/jGN77xnnvugdi4mgxK3nrrrRdccAEgxOgX
3X777V/60pegcLwzH4iFnjE6saBqXHf0gRhdbnhZ//Ef/3H55ZfHCxbu66RJk9asWRNXB4AcwxOd
IUYCAHvVVVfFPotYtmwZwH7iE5+IsbsamBgS0cfi6mDoXZMnT8ZSToyN1QyimtGDRW/Gs53C1sUD
DMW+8IUvxOJg4wHDI4FnLMaaYszy1w1jX3t7OwZWGC1/3bByiXEfw5//xALD6DXXXHPOOecAnb9i
YIUZjz8uf00CElBNEFu/fn0sNgNPE3ospiCx6+kpEE8T5lueQkxxPEfoGwjsxNigsUQe0M3ifcbj
IiY5mSGAZxzu6ze/+U2ufMU70cRgi+EID1csYjG4YdSFqnhhIIa4uJoAFYe0++6777vf/S7mxP62
horBZ4PFxyOM8ROeIYaXWKawEHj99dfPmzcPHNBwcUEAAVD9yEc+8m//9m+AHAsEOACPPvooqHZ2
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
QB5srYnrfiIgAiIgAiIgAiIgAiIgAiIgAm4E5MG6cVMpERABERABERABERABERABERCBWhOQB1tr
4rqfCIiACIiACIiACIiACIiACIiAGwF5sG7cVEoEREAEREAEREAEREAEREAERKDWBOTB1pq47icC
IiACIiACIiACIiACIiACIuBGQB6sGzeVEgEREAEREAEREAEREAEREAERqDUBebC1Jq77iYAIiIAI
iIAIiIAIiIAIiIAIuBGQB+vGTaVEQAREQAREQAREQAREQAREQARqTUAebK2J634iIAIiIAIiIAIi
IAIiIAIiIAJuBOTBunFTKREQAREQAREQAREQAREQAREQgVoTkAdba+K6nwiIgAiIgAiIgAiIgAiI
gAiIgBsBebBu3FRKBERABERABERABERABERABESg1gTkwdaauO4nAiIgAiIgAiIgAiIgAiIgAiLg
RkAerBs3lRIBERABERABERABERABERABEag1AXmwtSau+4mACIiACIiACIiACIiACIiACLgRkAfr
xk2lREAEREAEREAEREAEREAEREAEak1AHmytiet+IiACIiACIiACIiACIiACIiACbgTkwbpxUykR
EAEREAEREAEREAEREAEREIFaE5AHW2viup8IiIAIiIAIiIAIiIAIiIAIiIAbAXmwbtxUSgREQARE
QAREQAREQAREQAREoNYE5MHWmrjuJwIiIAIiIAIiIAIiIAIiIAIi4EZAHqwbN5USAREQAREQAREQ
AREQAREQARGoNYEBPT09tb6n7icCIiACIiACmSDwjW98Y//+/ZmoiiohAiIgAiIgAmkkMH78+I99
7GO2ZvJg09hO0kkEREAERKAhCKxcuXLZsmUNoaqUFAEREAEREIFGJFBqans9WC0kN2KLSmcREAER
EIEwBEpXcMOU6vcaebD9ItIFIiACIiACIuBDoJoHKzPsQ1ZlRUAEREAE0kwgIRuXkNg0k5RuIiAC
IiACIlBLAqWmVic51ZK/7iUCIiACIiACIiACIiACIiACIuBOQB6sOzuVFAEREAEREAEREAEREAER
EAERqCUBebC1pK17iYAIiIAIiIAIiIAIiIAIiIAIuBOQB+vOTiVFQAREQAREQAREQAREQAREQARq
SUAebC1p614iIAIiIAIiIAIiIAIiIAIiIALuBOTBurNTSREQAREQAREQAREQAREQAREQgVoSkAdb
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
K0rPJPeea15qt3kvB5bSiq8Kbk3I4pmaaBMIBAKBQCAwPQTct2FMj8Ve8xQe7PRmY65GfuLBB+/+
xMdvP3jwiW9/U4x/8YJLH/iRLa/5ez8RVz3N1UwGs4HAKkWgIfesCbL9PNjluzx65y/5b32b6aaM
K27asv74nmG3byHLKl0cIXYgEAgsLgJr16696qqrFle+VSFZeLCrYpobFfI7n/nLr37kv9579L9p
lHvOefaXXvjqV/z9bT/xYy/svf24UU6CeCAQCAQCfgSacDUZvQmy5oYufeGix+4Vj33lXYqf9/dy
l6Pry55xf9iakMU/QdEyEAgEAoFAIBDoi8C07yK2yym6Lw4yJlfeWmEvPqo2i2mdPgLPeeWPvvyX
f3nL7/7+2v/xF5561nOe/cg9P/Y3h09dv+t9b9996AN/Glc9TX+GgoNAIBCYcwTWXbNn0671doaK
Y7G7jnaveOy8DrB7DtYMJ6lVDsJWmy29zM9OPa3Zdmxv8rK/OQcp2A8EAoFAIBBYvQhM/Can9NqJ
Jdgrt1ZUL7FYvbMzu5KfdcEFL3rrW//O7/3exn/xL9ds+OEznnpi/V1fOP/3/s0fv23nB97zu3d9
6/7ZZT04CwQCgUBg1hGwFxe1r2jiRg1d0cSnc46VH9r/v/x75yKnajNo6NTr8n+o89rgWYcs+AsE
AoFAIBBYPQhM9hxs/2sn7MW/3Ysq9rS2dV+WO+pocRzamZGVevYjjzzrru8875tff9rj7WuKHz39
nC8/9wX3fP9zW0+feIhkRhAJNmYbgTgVM9vz0wh3DZXINkS2EQhGEV0kWUbJGv89EAgEAoFAYG4Q
mJVzsJXDOpVbK7I82N27d88N/KuA0eOH/uT2P/6Tc7/5Zcn6zadf+NjpZ5vc3znn2Q+e+XT788Ez
zuUYrf355Jozvn7e81cBSIUiXvjQt85+8hHr/MzHvnv+Y8u57nOeeOzCh7uXbKnNxQ98tXCkheh2
z4Yf+we/+b/OrCjDruUZK9MWBpzYiGNlf5zEGnLPGiI7TsndtBZJFrfQ0TAQCAQCgUBg1hGYIQ/2
hg03d+qe2p/KrRUHWlfrzoqRW64wt7O54u667fa/eN/7z/zrv0w9rtlkNbhaVAS+97Rn/dQfvH+W
pCNSpze9jXqlScr0qDqUkQKOJpC06H5tlXA6kpOpN2jIXjREdipwLZIsUwEwBg0EAoFAIBBoAoEp
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

--_006_1FFB62CE8AEB0D4298B51122D8903E9619F24C4CIRSMSX104gercor_--
