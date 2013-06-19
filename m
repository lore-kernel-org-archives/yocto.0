Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2AC1E014E2
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 06:30:31 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Jun 2013 06:30:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,896,1363158000"; 
	d="xml'?bin'?scan'208,72,48,145,147,150,217?rels'208,72,48,145,147,150,217?jpg'208,72,48,145,147,150,217,145?gif'208,72,48,145,147,150,217,145,147?xlsx'208,72,48,145,147,150,217,145,147,72,48?png'208,72,48,145,147,150,217,145,147,72,48,150";
	a="319425016"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by azsmga001.ch.intel.com with ESMTP; 19 Jun 2013 06:30:24 -0700
Received: from irsmsx106.ger.corp.intel.com (163.33.3.31) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 19 Jun 2013 14:29:08 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.127]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.91]) with mapi id
	14.03.0123.003; Wed, 19 Jun 2013 14:29:08 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Fullpass Test Report for Yocto 1.4.1 RC1 20130612-5 Build
Thread-Index: Ac5s5HCA0e+B50dHQB29bDOuNwL4YQ==
Date: Wed, 19 Jun 2013 13:29:07 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F05B73@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Fullpass Test Report for Yocto 1.4.1 RC1 20130612-5 Build
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
X-List-Received-Date: Wed, 19 Jun 2013 13:30:48 -0000
X-Groupsio-MsgNum: 14469
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_012_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_"

--_012_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_
Content-Type: multipart/related;
	boundary="_011_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_";
	type="multipart/alternative"

--_011_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the Fullpass report for the Yocto 1.4.1 RC1 build. No major (Medium=
+ or High) issues found. In the LSB-SDK images chmod: cannot access '/var/r=
un/bind/run' 4744<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4744>=
. X fails to start on liveboot for crownbay-noemgd 4742<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D4742>, and archiver.bbclass fails to filte=
r package licenses (present in 1.5 as well) - 4630<https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D4630>. All the bugs found in the test run can b=
e found in the summary below or by accessing the detailed report: https://w=
iki.yoctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.1_RC1_2013061=
2-5_build.

Testing data

 Test type: Fullpass Test

 Branch: master

 Milestone: 1.4.1 RC1

 Build name: Fullpass

 poky commit: 73f103bf9b2cdf985464dc53bf4f1cfd71d4531f

 poky commit date: Tue Jun 11 18:00:03 2013 +0100

 eclipse-poky: dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7

 Eclipse Plugin commit: Wed Apr 17 20:01:23 2013 +0300

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20130612-5



 Environments used for testing: Fedora 18 x86_64, Fedora 18 i686, Ubuntu 13=
.04 x86_64, Ubuntu 12.04 x86_64, openSUSE 12.3 x86_64,

 Distributions tested: Fedora 17 x86_64, Fedora 18 x86_64, Ubuntu 12.10 x86=
_64, Ubuntu 12.04 x86_64, openSUSE 12.3 x86_64, openSUSE 12.2 x86_64, CentO=
S 6.3 x86_64


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

766<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D766>

ADT: dylan branch

Fedora 18 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

768<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D768>

ADT: dylan branch

openSUSE 12.3 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

769<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D769>

ADT: dylan branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

770<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D770>

BSP/QEMU: dylan branch

Atom PC

98.6%

none

1.4%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

0.0%

none

100.0%

763<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D763>

BSP/QEMU: dylan branch

Beagleboard

97.0%

none

3.0%

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936> 3937<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3937>

0.0%

none

100.0%

767<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D767>

BSP/QEMU: dylan branch

Crownbay-noemgd

95.9%

2792<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2792>

4.1%

4742<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4742> 2792<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D2792>

0.0%

none

100.0%

773<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D773>

BSP/QEMU: dylan branch

Emenlow

100.0%

none

0.0%

none

0.0%

none

100.0%

757<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D757>

BSP/QEMU: dylan branch

Fish River Island 2 (FRI2)

95.1%

none

2.5%

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646> 2415<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D2415>

2.5%

2415<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2415>

100.0%

752<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D752>

BSP/QEMU: dylan branch

Jasperforest

100.0%

4744<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4744>

0.0%

none

0.0%

none

100.0%

764<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D764>

BSP/QEMU: dylan branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

754<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D754>

BSP/QEMU: dylan branch

NUC(Next Unit of Computing)

98.6%

none

1.4%

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

0.0%

none

100.0%

771<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D771>

BSP/QEMU: dylan branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

748<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D748>

BSP/QEMU: dylan branch

qemu-x86

100.0%

4599<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4599>

0.0%

none

0.0%

none

100.0%

750<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D750> 760<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D760>

BSP/QEMU: dylan branch

qemuarm

97.8%

4599<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4599>

2.2%

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

0.0%

none

100.0%

761<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D761> 762<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D762>

BSP/QEMU: dylan branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

758<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D758> 759<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D759>

BSP/QEMU: dylan branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

749<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D749>

BSP/QEMU: dylan branch

qemux86-64

100.0%

4599<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4599>

0.0%

none

0.0%

none

100.0%

765<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D765>

BSP/QEMU: dylan branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

745<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D745>

BSP/QEMU: dylan branch

Sugarbay

100.0%

none

0.0%

none

0.0%

none

100.0%

753<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D753>

Eclipse Plugin: dylan branch

Fedora 18 x86_64

100.0%

4735<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4735>

0.0%

none

0.0%

none

100.0%

772<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D772>

Meta-yocto: dylan branch

Fedora 18 x86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

746<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D746>

Hob: dylan branch

Ubuntu 12.04 x86_64

97.9%

none

2.1%

4388<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4388>

0.0%

none

100.0%

740<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D740>

OE-Core: dylan branch

Multiple environments

92.9%

none

7.1%

3453<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3453> 4529<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529> 4630<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D4630>

0.0%

none

100.0%

756<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D756>

BitBake: dylan branch

Ubuntu 12.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

747<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D747>

Runtime: dylan branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

751<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D751>

Build Appliance: dylan branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 26



Test Case Status Report

Status

Count

BLOCKED

2

FAILED

15

PASSED

1512

Total: 1529


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:2,15,1512&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(2)+0%25|FAILED(15)+1%2=
5|PASSED(1512)+99%25]



Bug Status Report

[Bug Status]

ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Report_f=
or_Yocto_1.4.1_RC1_20130612-5_build>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Re=
port_for_Yocto_1.4.1_RC1_20130612-5_build>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Repo=
rt_for_Yocto_1.4.1_RC1_20130612-5_build>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_=
Report_for_Yocto_1.4.1_RC1_20130612-5_build>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_R=
eport_for_Yocto_1.4.1_RC1_20130612-5_build>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test=
_Report_for_Yocto_1.4.1_RC1_20130612-5_build>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Rep=
ort_for_Yocto_1.4.1_RC1_20130612-5_build>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass=
_Test_Report_for_Yocto_1.4.1_RC1_20130612-5_build>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_=
Report_for_Yocto_1.4.1_RC1_20130612-5_build>

2415<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2415>

Medium

NEW

757<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D757>

connman doesn't provide a 3g configuration utility

1.2

Future

404

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

Medium

ACCEPTED

754<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D754> 757<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D757>

Windows switching failure

1.2

1.5

355

2792<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2792>

Low

REOPENED

767<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D767>

X fails to start after standby on Crownbay

1.3

Future

329

3453<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3453>

Medium

VERIFIED

FIXED

740<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D740>

Build fails when building multilib with ipk packaging

1.3

1.4

208

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

ACCEPTED

763<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D763>

[beagleobard xM] Some error message with usbhs_omap in dmesg

1.4

1.5

106

3937<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3937>

Medium

REOPENED

763<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D763>

[beagleobard xM] Watchdog doesn't work

1.4

1.5

106

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

770<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D770>

dmesg log errors in Atom-PC

1.3.1

1.5

93

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

Undecided

RESOLVED

FIXED

760<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D760> 750<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D750>

start qemuarm with "core-image-sato", use "dmesg | grep -i error" shows 2 e=
rrors

1.4

---

89

4388<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4388>

Medium

REOPENED

746<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D746>

After building an image, Hob reports the estimated image size in the "Edit =
Packages" screen

1.4

1.5 M1

51

4529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529>

Medium

NEW

740<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D740>

x32 build fails with gmp_5.1.1 do_configure

1.5

1.5

21

4599<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4599>

Medium

NEW

750<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D750> 749<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D749> 748<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D748>

Connection Properties shows the network disabled, for UNFS qemuarm target

1.5

1.5 M3

9

4630<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4630>

Medium

VERIFIED

FIXED

740<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D740>

archiver.bbclass fails to filter package licenses

1.5

1.5

2 (Recent)

4735<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4735>

Undecided

NEW

753<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D753>

cannot create a layer using Yocto BSP

1.4.1

---

NEW

4742<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4742>

Undecided

NEW

767<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D767>

x fails to start on liveboot for crownbay-noemgd

1.4.1

---

NEW

4744<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4744>

Undecided

NEW

752<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D752>

1.4.1: chmod: cannot access '/var/run/bind/run': No such file or directory =
in lsb-sdk images

1.4.1

---

NEW

Total: 15




Compliance testing results:
LTP test result is on https://wiki.pokylinux.org/wiki/LTP_result
POSIX test result is on https://wiki.pokylinux.org/wiki/Posix_result


Build performance data comparison (dating 1.3):
The build performance was measured by running the below builds on two hosts=
 for the same milestone commits, starting 1.3. As you can see from the belo=
w charts, in 1.4.1 we have an increased build performance since 1.3 and als=
o on disk size usage. For more details please see https://wiki.yoctoproject=
.org/wiki/Performance_Test page or open the spreadsheet attached with the c=
ompiled data.



[cid:image001.jpg@01CE6D0A.1C8F3190]      [cid:image006.jpg@01CE6D0A.1C8F31=
90]

[cid:image007.jpg@01CE6D0A.1C8F3190]       [cid:image008.jpg@01CE6D0A.1C8F3=
190]


Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
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
	{font-family:"MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	mso-fareast-language:JA;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	mso-fareast-language:JA;}
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
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Times New Roman","serif";
	mso-fareast-language:JA;
	font-weight:bold;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";
	mso-fareast-language:JA;}
span.EmailStyle24
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.mw-headline
	{mso-style-name:mw-headline;}
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
	{mso-list-id:419912381;
	mso-list-type:hybrid;
	mso-list-template-ids:-1275687142 1919995240 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
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
@list l1
	{mso-list-id:681474618;
	mso-list-type:hybrid;
	mso-list-template-ids:-261984162 -1809533492 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the Fullpass report for the <b>Yocto 1.4.1 R=
C1</b> build. No major (Medium&#43; or High) issues found. In the LSB-SDK i=
mages chmod: cannot access '/var/run/bind/run'
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4744">4744</=
a>. X fails to start on liveboot for crownbay-noemgd
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4742">4742</=
a>, and archiver.bbclass fails to filter package licenses (present in 1.5 a=
s well) -
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4630">4630</=
a>. All the bugs found in the test run can be found in the summary below or=
 by accessing the detailed report:
<a href=3D"https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Report_for_Yoc=
to_1.4.1_RC1_20130612-5_build">
https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.1_RC=
1_20130612-5_build</a>.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white">
<span class=3D"mw-headline"><span style=3D"font-size:17.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testi=
ng data</span></span><span style=3D"font-size:17.5pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p><=
/span></h1>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;orphans: auto;text-alig=
n:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px"><span=
 style=3D"color:black"> Test type: Fullpass Test<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Milestone: 1.4.1 RC1<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Build name: Fullpass<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> poky commit: 73f103bf9b2cdf985464dc53bf4f1cfd71d4531f<o:p></o:p></sp=
an></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> poky commit date: Tue Jun 11 18:00:03 2013 &#43;0100<o:p></o:p></spa=
n></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> eclipse-poky: dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7<o:p></o:p></s=
pan></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Eclipse Plugin commit: Wed Apr 17 20:01:23 2013 &#43;0300<o:p></o:p>=
</span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Autobuilder images repository: <a href=3D"http://autobuilder.yoctopr=
oject.org/pub/nightly/20130612-5">http://autobuilder.yoctoproject.org/pub/n=
ightly/20130612-5</a><o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"><o:p>&nbsp;</o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Environments used for testing: Fedora 18 x86_64, Fedora 18 i686, Ubu=
ntu 13.04 x86_64, Ubuntu 12.04 x86_64, openSUSE 12.3 x86_64, <o:p></o:p></s=
pan></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack">&nbsp;Distributions tested: Fedora 17 x86_64, Fedora 18 x86_64, Ubunt=
u 12.10 x86_64, Ubuntu 12.04 x86_64, openSUSE 12.3 x86_64, openSUSE 12.2 x8=
6_64, CentOS 6.3 x86_64&nbsp;&nbsp; <o:p></o:p></span></pre>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;background-positio=
n:initial initial;background-repeat:initial initial;overflow:hidden;word-sp=
acing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:17.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p>=
&nbsp;</o:p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white">
<span class=3D"mw-headline"><span style=3D"font-size:17.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Summa=
ry Report</span></span><span style=3D"font-size:17.5pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p=
></span></h1>
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
=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
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
<b><span style=3D"font-size:9.5pt">Test Run</span></b><b><span style=3D"fon=
t-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Test Plan</span></b><b><span style=3D"fo=
nt-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Environment</span></b><b><span style=3D"=
font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Passed</span></b><b><span style=3D"font-=
size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Other issues</span></b><b><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Failed</span></b><b><span style=3D"font-=
size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Failing bugs</span></b><b><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Blocked</span></b><b><span style=3D"font=
-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Blocking bugs</span></b><b><span style=
=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Complete</span></b><b><span style=3D"fon=
t-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D766"><span style=3D"color:#5A3696">766</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: dylan branch</span><span style=3D"font=
-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fedora 18 i686</span><span style=3D"font-si=
ze:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D768"><span style=3D"color:#5A3696">768</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: dylan branch</span><span style=3D"font=
-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">openSUSE 12.3 x86_64</span><span style=3D"f=
ont-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D769"><span style=3D"color:#5A3696">769</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: dylan branch</span><span style=3D"font=
-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.04 x86_64</span><span style=3D"fo=
nt-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D770"><span style=3D"color:#5A3696">770</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Atom PC</span><span style=3D"font-size:9.5p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">98.6%</span><span style=3D"font-size:9.5pt;=
mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.4%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a></sp=
an><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D763"><span style=3D"color:#5A3696">763</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Beagleboard</span><span style=3D"font-size:=
9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.0%</span><span style=3D"font-size:9.5pt;=
mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">3.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D3937"><span style=3D"color:#5A3696">3937=
</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D767"><span style=3D"color:#5A3696">767</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Crownbay-noemgd</span><span style=3D"font-s=
ize:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">95.9%</span><span style=3D"font-size:9.5pt;=
mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D2792"><span style=3D"color:#5A3696">2792</span></a></sp=
an><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">4.1%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4742"><span style=3D"color:#5A3696">4742</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D2792"><span style=3D"color:#5A3696">2792=
</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D773"><span style=3D"color:#5A3696">773</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Emenlow</span><span style=3D"font-size:9.5p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D757"><span style=3D"color:#5A3696">757</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fish River Island 2 (FRI2)</span><span styl=
e=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">95.1%</span><span style=3D"font-size:9.5pt;=
mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.5%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D2415"><span style=3D"color:#5A3696">2415=
</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.5%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D2415"><span style=3D"color:#5A3696">2415</span></a></sp=
an><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D752"><span style=3D"color:#5A3696">752</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Jasperforest</span><span style=3D"font-size=
:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4744"><span style=3D"color:#5A3696">4744</span></a></sp=
an><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D764"><span style=3D"color:#5A3696">764</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">MPC8315e-rdb</span><span style=3D"font-size=
:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D754"><span style=3D"color:#5A3696">754</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">NUC(Next Unit of Computing)</span><span sty=
le=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">98.6%</span><span style=3D"font-size:9.5pt;=
mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.4%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a></sp=
an><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D771"><span style=3D"color:#5A3696">771</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">P1022ds</span><span style=3D"font-size:9.5p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D748"><span style=3D"color:#5A3696">748</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemu-x86</span><span style=3D"font-size:9.5=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4599"><span style=3D"color:#5A3696">4599</span></a></sp=
an><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D750"><span style=3D"color:#5A3696">750</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D760"><span style=3D"color:#5=
A3696">760</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-lang=
uage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemuarm</span><span style=3D"font-size:9.5p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.8%</span><span style=3D"font-size:9.5pt;=
mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4599"><span style=3D"color:#5A3696">4599</span></a></sp=
an><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.2%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4024"><span style=3D"color:#5A3696">4024</span></a></sp=
an><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D761"><span style=3D"color:#5A3696">761</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D762"><span style=3D"color:#5=
A3696">762</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-lang=
uage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemumips</span><span style=3D"font-size:9.5=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D758"><span style=3D"color:#5A3696">758</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D759"><span style=3D"color:#5=
A3696">759</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-lang=
uage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemuppc</span><span style=3D"font-size:9.5p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D749"><span style=3D"color:#5A3696">749</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemux86-64</span><span style=3D"font-size:9=
.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4599"><span style=3D"color:#5A3696">4599</span></a></sp=
an><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D765"><span style=3D"color:#5A3696">765</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Routerstationpro</span><span style=3D"font-=
size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D745"><span style=3D"color:#5A3696">745</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch</span><span style=3D=
"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Sugarbay</span><span style=3D"font-size:9.5=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D753"><span style=3D"color:#5A3696">753</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Eclipse Plugin: dylan branch</span><span st=
yle=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fedora 18 x86_64</span><span style=3D"font-=
size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4735"><span style=3D"color:#5A3696">4735</span></a></sp=
an><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D772"><span style=3D"color:#5A3696">772</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Meta-yocto: dylan branch</span><span style=
=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fedora 18 x86-64</span><span style=3D"font-=
size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D746"><span style=3D"color:#5A3696">746</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Hob: dylan branch</span><span style=3D"font=
-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 12.04 x86_64</span><span style=3D"fo=
nt-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.9%</span><span style=3D"font-size:9.5pt;=
mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.1%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4388"><span style=3D"color:#5A3696">4388</span></a></sp=
an><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D740"><span style=3D"color:#5A3696">740</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">OE-Core: dylan branch</span><span style=3D"=
font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Multiple environments</span><span style=3D"=
font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">92.9%</span><span style=3D"font-size:9.5pt;=
mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">7.1%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D3453"><span style=3D"color:#5A3696">3453</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D4529"><span style=3D"color:#5A3696">4529=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4630"><span style=3D"colo=
r:#5A3696">4630</span></a></span><span style=3D"font-size:9.5pt;mso-fareast=
-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D756"><span style=3D"color:#5A3696">756</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BitBake: dylan branch</span><span style=3D"=
font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 12.04 x86_64</span><span style=3D"fo=
nt-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D747"><span style=3D"color:#5A3696">747</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Runtime: dylan branch</span><span style=3D"=
font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Multiple Environments</span><span style=3D"=
font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D751"><span style=3D"color:#5A3696">751</span></a=
></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Build Appliance: dylan branch</span><span s=
tyle=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemu-kvm on Ubuntu 12.04 libvirt</span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 26</span></b><span style=3D"font-=
size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
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
n style=3D"font-size:9.5pt">Test Case Status Report</span></b><b><span styl=
e=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
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
<b><span style=3D"font-size:9.5pt">Status</span></b><b><span style=3D"font-=
size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Count</span></b><b><span style=3D"font-s=
ize:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BLOCKED</span><span style=3D"font-size:9.5p=
t;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">2</span><span style=3D"font-size:9.5pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">FAILED</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">15</span><span style=3D"font-size:9.5pt;mso=
-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">PASSED</span><span style=3D"font-size:9.5pt=
;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">1512</span><span style=3D"font-size:9.5pt;m=
so-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 1529</span></b><span style=3D"fon=
t-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><img border=3D"0" wi=
dth=3D"432" height=3D"120" id=3D"Picture_x0020_12" src=3D"cid:image002.png@=
01CE6CFC.00615420" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;c=
hs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:2,15,1512&amp;chco=3DFFFF66|FF9933|00=
FF00&amp;chl=3DBLOCKED(2)&#43;0%25|FAILED(15)&#43;1%25|PASSED(1512)&#43;99%=
25"></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o=
:p></span></p>
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
serif&quot;;color:black">Bug Status Report</span></b><b><span style=3D"font=
-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><=
img border=3D"0" width=3D"372" height=3D"120" id=3D"Picture_x0020_11" src=
=3D"cid:image004.png@01CE6CFC.00615420" alt=3D"Bug Status"></span><span sty=
le=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black;mso-fareast-language:JA"><o:p></o:p></span></p>
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
ct.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.1_RC1_20130612-5_build"><b>=
<span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_10" src=3D"cid:ima=
ge005.gif@01CE6CFC.00615420" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span s=
tyle=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.1_RC1_20130612-5_buil=
d"><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><i=
mg border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_9" src=3D"ci=
d:image005.gif@01CE6CFC.00615420" alt=3D"=1B$B"-=1B(B"></span></b></a><b><s=
pan style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b=
></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.1_RC1_20130612-5_build"=
><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img=
 border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_8" src=3D"cid:=
image005.gif@01CE6CFC.00615420" alt=3D"=1B$B"-=1B(B"></span></b></a><b><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b><=
/p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.1_RC1_20130612-5_bu=
ild"><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none">=
<img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"=
cid:image005.gif@01CE6CFC.00615420" alt=3D"=1B$B"-=1B(B"></span></b></a><b>=
<span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span><=
/b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.1_RC1_20130612-5_bui=
ld"><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><=
img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_6" src=3D"c=
id:image005.gif@01CE6CFC.00615420" alt=3D"=1B$B"-=1B(B"></span></b></a><b><=
span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></=
b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.1_RC1_20130612-5_b=
uild"><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"=
><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=3D=
"cid:image005.gif@01CE6CFC.00615420" alt=3D"=1B$B"-=1B(B"></span></b></a><b=
><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span>=
</b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.1_RC1_20130612-5_build=
"><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><im=
g border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_4" src=3D"cid=
:image005.gif@01CE6CFC.00615420" alt=3D"=1B$B"-=1B(B"></span></b></a><b><sp=
an style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></b>=
</p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.1_RC1_2013061=
2-5_build"><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:=
none"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_3" s=
rc=3D"cid:image005.gif@01CE6CFC.00615420" alt=3D"=1B$B"-=1B(B"></span></b><=
/a><b><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></=
span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.1_RC1_20130612-5_bu=
ild"><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none">=
<img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_2" src=3D"=
cid:image005.gif@01CE6CFC.00615420" alt=3D"=1B$B"-=1B(B"></span></b></a><b>=
<span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span><=
/b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D2415"><span style=3D"color:#5A3696">2415</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D757"><span style=3D"color=
:#5A3696">757</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-l=
anguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">connman doesn't prov=
ide a 3g configuration utility</span><span style=3D"font-size:9.5pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.2</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Future</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">404</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED</span><span style=3D"font-size:9.5pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D754"><span style=3D"color=
:#5A3696">754</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D757">=
<span style=3D"color:#5A3696">757</span></a></span><span style=3D"font-size=
:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Windows switching fa=
ilure</span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></=
o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.2</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">355</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D2792"><span style=3D"color:#5A3696">2792</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Low</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">REOPENED</span><span style=3D"font-size:9.5pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D767"><span style=3D"color=
:#5A3696">767</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-l=
anguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">X fails to start aft=
er standby on Crownbay</span><span style=3D"font-size:9.5pt;mso-fareast-lan=
guage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.3</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Future</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">329</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3453"><span style=3D"color:#5A3696">3453</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">VERIFIED</span><span style=3D"font-size:9.5pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">FIXED</span><span style=3D"font-size:9.5pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D740"><span style=3D"color=
:#5A3696">740</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-l=
anguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Build fails when bui=
lding multilib with ipk packaging</span><span style=3D"font-size:9.5pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.3</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">208</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED</span><span style=3D"font-size:9.5pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D763"><span style=3D"color=
:#5A3696">763</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-l=
anguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[beagleobard xM] Som=
e error message with usbhs_omap in dmesg</span><span style=3D"font-size:9.5=
pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">106</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3937"><span style=3D"color:#5A3696">3937</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">REOPENED</span><span style=3D"font-size:9.5pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D763"><span style=3D"color=
:#5A3696">763</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-l=
anguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[beagleobard xM] Wat=
chdog doesn't work</span><span style=3D"font-size:9.5pt;mso-fareast-languag=
e:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">106</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Low</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D770"><span style=3D"color=
:#5A3696">770</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-l=
anguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">dmesg log errors in =
Atom-PC</span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p>=
</o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.3.1</span><span style=3D"font-size:9.5pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">93</span><span style=3D"font-size:9.5pt;mso-fareas=
t-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4024"><span style=3D"color:#5A3696">4024</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided</span><span style=3D"font-size:9.5pt;mso=
-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">RESOLVED</span><span style=3D"font-size:9.5pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">FIXED</span><span style=3D"font-size:9.5pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D760"><span style=3D"color=
:#5A3696">760</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D750">=
<span style=3D"color:#5A3696">750</span></a></span><span style=3D"font-size=
:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">start qemuarm with &=
quot;core-image-sato&quot;, use &quot;dmesg | grep -i error&quot; shows 2 e=
rrors</span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></=
o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">89</span><span style=3D"font-size:9.5pt;mso-fareas=
t-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4388"><span style=3D"color:#5A3696">4388</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">REOPENED</span><span style=3D"font-size:9.5pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D746"><span style=3D"color=
:#5A3696">746</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-l=
anguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">After building an im=
age, Hob reports the estimated image size in the &quot;Edit Packages&quot; =
screen</span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p><=
/o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M1</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">51</span><span style=3D"font-size:9.5pt;mso-fareas=
t-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4529"><span style=3D"color:#5A3696">4529</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D740"><span style=3D"color=
:#5A3696">740</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-l=
anguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">x32 build fails with=
 gmp_5.1.1 do_configure</span><span style=3D"font-size:9.5pt;mso-fareast-la=
nguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">21</span><span style=3D"font-size:9.5pt;mso-fareas=
t-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4599"><span style=3D"color:#5A3696">4599</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D750"><span style=3D"color=
:#5A3696">750</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D749">=
<span style=3D"color:#5A3696">749</span></a><span class=3D"apple-converted-=
space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_ru=
n.cgi?run_id=3D748"><span style=3D"color:#5A3696">748</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Connection Propertie=
s shows the network disabled, for UNFS qemuarm target</span><span style=3D"=
font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M3</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">9</span><span style=3D"font-size:9.5pt;mso-fareast=
-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4630"><span style=3D"color:#5A3696">4630</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium</span><span style=3D"font-size:9.5pt;mso-fa=
reast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">VERIFIED</span><span style=3D"font-size:9.5pt;mso-=
fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">FIXED</span><span style=3D"font-size:9.5pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D740"><span style=3D"color=
:#5A3696">740</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-l=
anguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">archiver.bbclass fai=
ls to filter package licenses</span><span style=3D"font-size:9.5pt;mso-fare=
ast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">2<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span></span><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4735"><span style=3D"color:#5A3696">4735</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided</span><span style=3D"font-size:9.5pt;mso=
-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D753"><span style=3D"color=
:#5A3696">753</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-l=
anguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">cannot create a laye=
r using Yocto BSP</span><span style=3D"font-size:9.5pt;mso-fareast-language=
:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.1</span><span style=3D"font-size:9.5pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4742"><span style=3D"color:#5A3696">4742</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided</span><span style=3D"font-size:9.5pt;mso=
-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D767"><span style=3D"color=
:#5A3696">767</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-l=
anguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">x fails to start on =
liveboot for crownbay-noemgd</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.1</span><span style=3D"font-size:9.5pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4744"><span style=3D"color:#5A3696">4744</span></a></span><spa=
n style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided</span><span style=3D"font-size:9.5pt;mso=
-fareast-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D752"><span style=3D"color=
:#5A3696">752</span></a></span><span style=3D"font-size:9.5pt;mso-fareast-l=
anguage:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">1.4.1: chmod: cannot=
 access '/var/run/bind/run': No such file or directory in lsb-sdk images</s=
pan><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.1</span><span style=3D"font-size:9.5pt;mso-far=
east-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---</span><span style=3D"font-size:9.5pt;mso-farea=
st-language:JA"><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt;mso-fareast-language:JA"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 15</span><=
/b><span style=3D"font-size:9.5pt;mso-fareast-language:JA"><o:p></o:p></spa=
n></p>
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
<p class=3D"MsoNormal"><b>Compliance testing results:<br>
</b>LTP test result is on <a href=3D"https://wiki.pokylinux.org/wiki/LTP_re=
sult">https://wiki.pokylinux.org/wiki/LTP_result</a><br>
POSIX test result is on <a href=3D"https://wiki.pokylinux.org/wiki/Posix_re=
sult">https://wiki.pokylinux.org/wiki/Posix_result</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Build performance data comparison (dating 1.3):<o=
:p></o:p></b></p>
<p class=3D"MsoNormal">The build performance was measured by running the be=
low builds on two hosts for the same milestone commits, starting 1.3. As yo=
u can see from the below charts, in 1.4.1 we have an increased build perfor=
mance since 1.3 and also on disk size
 usage. For more details please see <a href=3D"https://wiki.yoctoproject.or=
g/wiki/Performance_Test">
https://wiki.yoctoproject.org/wiki/Performance_Test</a> page or open the sp=
readsheet attached with the compiled data.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"502" height=3D"330" id=3D=
"Picture_x0020_1" src=3D"cid:image001.jpg@01CE6D0A.1C8F3190">&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;
<img border=3D"0" width=3D"541" height=3D"328" id=3D"Picture_x0020_15" src=
=3D"cid:image006.jpg@01CE6D0A.1C8F3190"><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"499" height=3D"274" id=3D=
"Picture_x0020_16" src=3D"cid:image007.jpg@01CE6D0A.1C8F3190">&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;<img border=3D"0" width=3D"537" height=3D"270" id=
=3D"Picture_x0020_14" src=3D"cid:image008.jpg@01CE6D0A.1C8F3190"><o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_--

--_011_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=9961;
	creation-date="Wed, 19 Jun 2013 13:29:05 GMT";
	modification-date="Wed, 19 Jun 2013 13:29:05 GMT"
Content-ID: <image002.png@01CE6CFC.00615420>
Content-Transfer-Encoding: base64

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
VkZGRvr5+YWEhPj6+ir7q9XqwMBA5z6FhYVz587t06dPQkKCn59fRUVFSEhISUlJ04qzKIpnz55d
vHhxcHDwvHnzcnNzARw9enTp0qWhoaFz5szJz88HUFBQMG3atNmzZ5eVlVFKT548eWOs36EKVCQg
IQ1prJns/qywfo/vYxBzFVddXRamte6ohpiRkcHzfGFh4aFDh55++mllY2pq6ooVK3ie37Bhw+LF
izmOGzt2bFpa2ltvvTVixIihQ4cOHz5cqTdNmTJl/fr1w4YNGzJkyD333OPMqbS0tLKyMmU5KCho
8uTJzV53wIABpaWllNKsrCwlDQEMGjRo0KBBx44dc+5WWVm5fft2QRD0ev39998fFhYWHBw8bdq0
oqIi5z5PPvmksnD58mWbzRYWFgbA09MzPT195MiRjZ+RIDgcjtzc3KioKIPBcPnyZUqph4fHuXPn
4uLiLBZLUVGRxWKJiYn59NNPq6qqli5devz48fj4eI677t+bffv27du3rx2fs7e399ChQwOGB6wa
uqrEp6QD52xi7iorrAUoiEHMSZzsj/6uLg5ze3caiBzHqdXqFStWDBo0CEB+fr4oinV1dQB4ns/M
zIyOjvbx8VmzZk1hYWF2dvbevXt37dr18ssva7XaBQsWTJ8+PSsrKyMjY9euXU899ZSSQQEBAc7a
YtMan5Onp6dSg6usrFQirEWTJ08ePXq0j4/PgQMHtm/fvmbNmhZ3E0Vxz549Fy9eXLVqlRJhgYGB
RUVFzkAEsGDBgt27d/v7+9vtdmWfOXPmHDhwIDMzUzk/AGDatGlxcXGCIHAc99133/32t7/Nzs6u
qqqKj48XBEF5ypw5c9rxORsMhpNZJz+8+OGwM8MKVhS04wiMq9hhr0HNVEw9iZOhCHV1cZjbuKNA
fOSRR5Q/daeUlJSgoKCzZ88CCAkJSU1NjY6OPnHixNChQ/v27du3b9+kpKSPPvroxIkTgwcPrq2t
HTlyZHx8fHx8/JkzZ/71r38pGdS/f3/lqsvN5OTkBAcHE0LsdrtypaVFiYmJysK0adOSk5MppTee
0auvr//oo4+io6NfffVV53vRarXNLojHxsaOGTOmsrJSr9d//PHHhJDo6Ohhw4aVlpaGhYX96U9/
8vT0BKCcFjhw4MD06dMLCgp++OGH2NjYDz744JVXXmndJ3oTPngh7oW8uLybzWLMuDM77CUoSUBC
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

--_011_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_
Content-Type: image/png; name="image004.png"
Content-Description: image004.png
Content-Disposition: inline; filename="image004.png"; size=10438;
	creation-date="Wed, 19 Jun 2013 13:29:05 GMT";
	modification-date="Wed, 19 Jun 2013 13:29:05 GMT"
Content-ID: <image004.png@01CE6CFC.00615420>
Content-Transfer-Encoding: base64

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
RU5ErkJggg==

--_011_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_
Content-Type: image/gif; name="image005.gif"
Content-Description: image005.gif
Content-Disposition: inline; filename="image005.gif"; size=462;
	creation-date="Wed, 19 Jun 2013 13:29:05 GMT";
	modification-date="Wed, 19 Jun 2013 13:29:05 GMT"
Content-ID: <image005.gif@01CE6CFC.00615420>
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

--_011_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=20908;
	creation-date="Wed, 19 Jun 2013 13:29:05 GMT";
	modification-date="Wed, 19 Jun 2013 13:29:05 GMT"
Content-ID: <image001.jpg@01CE6D0A.1C8F3190>
Content-Transfer-Encoding: base64

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
uelvPJyiIsttdieD02KMbtg5krNY5ozlew/ArTVUz6SPc/KWnZV0RNmVgZcD+Mfun4hepXR7GyML
HgOaRYgi4K1MuWmXOM6WXexulecjw3EsNYH4HWR1dI8XbDUvJDR/6vGtvgswl8p3j+4w1n+t7kOC
1mGSukwKaNsTzd9LPcx39rSNW/cu5Z5SSDWXDYvua9ynDna8m+Ne+Otddl5UO/8A2MMZ/wDxvP8A
um5+UjvWxSjZ/DTX+pXcUOPvH6TFaZn8um8SnmbFX/3mPTfcyBjU4ePfL5Xj5dsZ6RjOD4xPpUY7
IB7IIGs/rquf7JUcmtXVV1UekS1Drdwsu/mGtbqzHa2//sGkfRDheMx/3eOF3wkpmn6K8PHz8n1G
07TT9tIz0/kzhFMbx4fBm9rm5j/VbCOGOEWijYwexoAWo3XyiYfRxGikH/vTkfQrlp8omSND24bI
y4zEF7TZNyTpYxdpll11bxERZUREQEREBERAREQQwuAxOruQPRj4n+JFzD+06v8Ahj/5IgUHrVd+
O3d9ArVHQetV/wCYd9ArEHCL59hNRGf+qeJQNnkJGZ5Y5zL5soGvplxaAdBlC39VS1zsddMxlTla
4FkkcoyiIMIczKTYuLtdR7NdE7SlejReTOG1734pG2GaSOY5onyyFjs5cbWLX+oAb8BwtYqnEaGr
a2jhpG1chp3sDXmQBpAy3ucwOtjqQ48fag9GpZP2hB/Lf9WrVeT9PiNPU1hr2k53X2jjq45ncPSP
o2tbQfctlVNkdWwCKQRuyP1Lc3S1Baik2VV2tvKHimyqu1t5Q8UFaKTZVXa28oeKbKq7W3lDxQVo
pNlVdrbyh4psqrtbeUPFBWik2VV2tvKHimyqu1t5Q8UFaKTZVXa28oeKbKq7W3lDxQVopNlVdrby
h4psqrtbeUPFBWik2VV2tvKHimyqu1t5Q8UFaKTZVXa28oeKbKq7W3lDxQVopNlVdrbyh4psqrtb
eUPFBWik2VV2tvKHimyqu1t5Q8UFaKTZVXa28oeKbKq7W3lDxQVopNlVdrbyh4psqrtbeUPFBWik
2VV2tvKHimyqu1t5Q8UFaKTZVXa28oeKbKq7W3lDxQVopNlVdrbyh4psqrtbeUPFBWik2VV2tvKH
imyqu1t5Q8UFaKTZVXa28oeKbKq7W3lDxQVopNlVdrbyh4psqrtbeUPFBWik2VV2tvKHimyqu1t5
Q8UFaKTZVXa28oeKbKq7W3lDxQVopNlVdrbyh4psqrtbeUPFBWik2VV2tvKHimyqu1t5Q8UFaKTZ
VXa28oeK7xRzsfeWYPbbgGWQUIiICIiAiIgIiIIoCfOlXYA+jH0/eiQ/tOr/AIY/+SIOcPFjVj/H
d9AqnXynLa9tLqXDzc1Z/wAd30CokJbG4ty3AJGY2H4oPn/kvWx1HltVmHGYZ9oXulpINuGiQABx
s70RqF9DXivJ/wAsarEPKeTB6mHDBIwPc/dJ3yEWDSHasAIObje/wXtU7RO9coiIopZP2hB/Lf8A
VqqUsn7Qg/lv+rUFSIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiI
CIiAiIgIiICIiAiIgIiICIiAiIgIiIIoBfFKvU+rHwP3ouInBuJ1d7+rHwF+siDtQetV/wCYd9Aq
XsEkbmO4OBBUuH3vV347d30CqeHFjgw5XEaEi9ig+d+TlBTYd/1CnpKWhqGthje3beiIwLDWwhba
/wAHlezmxqmgrt1kbKCCGukDbsa4tLg0njewvw9i0uD+SNbQeUb8YrcUhqppA4PyUmyc+4AALs59
EZdBZbqTBYX1xqtrO17iHFjXDLnDcofa3ED8NBonaHeutTj9LS72XNlc2lDS8gAA5r8CSBpbVZvO
9PamsJTvDmsbaM+iXNzDN7NFP/Z2iZLPLTbWmlnttHwutfUuOhuNSTfRZH4NEYKWGOepijpXNdG1
jh+6LAG4JI8UGalr2Vc9RC1ksckBAcJG2uDwI+Bsfiu1RLHDXQOle1gyPF3EDpaseH4a3D3VDmTT
ybd5kcJXA2PwNgfhrfQBZpQDiEFwD+jfx+9qDtv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2m
HmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8
wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcm
zb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1
N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu
0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29V
vcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yD
Fv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN
+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs
29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcmzb1W9yDFv1N2mHmBN+pu0w8wLLs29Vvcmzb1W
9yDFv1N2mHmBdo6mCV2WOaN7uNmuBK77NvVb3LkNaDo0D7gg7IiICIiAiIgIiIIof2nV/wAMf/JF
xDm851diB6MfEfxIg7UHrVf+Yd9ArFFh4s6rA4bd30CtQEREBERAUsn7Qg/lv+rVUpZP2hB/Lf8A
VqCpERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBER
AREQcBcJ+K1FZhFZVVT5YsYq6dhtaONrbN7wkkvW6JbZ0jcBYZqiGmYHzyxxNJtme4NF/wAVp/MF
f/5+u+Vngu78DmkwuppamtdWulsWOqWNszuC1pJOVSW28428c0cwvHI14sDdpB0PBZV57EcBqauq
e+CqdBDlAjZHI5mUjLr6PwDu9KDBa6lxhs8lbJLTMjLGR7U2aLmwIIObQjUm+nSstN26eJjS58jG
gAkkuAtbj3Lux7ZGBzHBzXC4INwQvOS+T1UyqfV08jJZTty2Goe4xAvcC30bG3DVbjCqQ0OGwUzm
taY22Ia7MO+w+gQcw/tOr/hj/wCSLiFrXYnV3APox8f9SIOcP1dV6W/Tu+gVqjoPWq/8w76BWIC8
5V11azHXMZLM1jXDLHsc0RiyEueSBe4dpx6LW1Xo0QeQrsVrg3ENyqah2SWNgzwlmTU5iDkNmWsL
2cbj43WeTEcWOH4e6GCeRxdEalzImte31LtLXHpuTccAOheoRB53ycra+qra9tcZSxrrx5mZQ30n
aeqLGwbpd3tvqtpUmUVsGxDC7I/1yQOLfYFcpZP2hB/Lf9WoF63qU/zu8EvW9Sn+d3gqkQS3repT
/O7wS9b1Kf53eCqRBLet6lP87vBL1vUp/nd4KpEEt63qU/zu8EvW9Sn+d3gqkQS3repT/O7wS9b1
Kf53eCqRBLet6lP87vBL1vUp/nd4KpEEt63qU/zu8EvW9Sn+d3gqkQS3repT/O7wS9b1Kf53eCqR
BLet6lP87vBL1vUp/nd4KpEEt63qU/zu8EvW9Sn+d3gqkQS3repT/O7wS9b1Kf53eCqRBLet6lP8
7vBL1vUp/nd4KpEEt63qU/zu8EvW9Sn+d3gqkQS3repT/O7wS9b1Kf53eCqRBLet6lP87vBL1vUp
/nd4KpEEt63qU/zu8EvW9Sn+d3gqkQS3repT/O7wS9b1Kf53eCqRBLet6lP87vBL1vUp/nd4KpEE
t63qU/zu8EvW9Sn+d3gqkQS3repT/O7wS9b1Kf53eCqRBLet6lP87vBL1vUp/nd4KpEEt63qU/zu
8EvW9Sn+d3gqkQS3repT/O7wXaN1Tm/TMiDbfuuJP0VCIOFwuVp63An1lS+YYriMIdb9HFKGtb9w
si4yXrdG3++ywVNZTUUW0qqiKBhNs0rw0X9lytQPJmX/AM1ivPHgs7MDe3DqmlNdUzma1nVLs+S3
s0Cmt8NXHGTldWziqYqhodDKyRpAN2OB0PArMvP4p5OvxKsklNRlYWjIy7hlcMuuh9gI/FcUHk7J
RYy2qdUOkhZGY4487gIxc2bbgRYjj7FWG5dVwMBzTxNAzcXger63d0+xZGSNkYHscHMcLgg3BHtW
id5NubVvqo5GvkdvF2Sue6M7Qgj0b2Fra2Gq2uGQy0uG08FQYzLFGGEx3ym2ml0HWEkYnV2BPox8
P9SLmH9p1f8ADH/yRAw/R1Xrf9O76BWqKg1dV9H6d30CtQERQvxOkjrW0b6hrahwuGH7iePC9gTb
4ILkUZxOjDKl5qI8tL/fm+kel9fwXEmKUkIgMlQxonIEZ617W+7iOPtCC1SyftCD+W/6tXaGrgnn
mhila+SAgStB1YSLgH8FxJ+0Yf5b/q1BSiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIg
IiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiCGEE4nV2cR6MfD/Ui5gNsUq9D6sf8A
uiDmg9ar/wAw76BWKLDxZ1WBw27voFagLTVGCumxB84qGiF7xK6F0Wa7wzKNb+ra1xbo4rcog0dT
gL619YJ6xzYqhzHNEDMjmFosLkkhw+FlzJgtRsqSGOsZsYCwyCSDMZ8oAGYhw4EX7vYt2iDVYZgz
cLqKmSOpqJWz2OSVwdlIJOhtfp6VRUwRz1sDZWBzQx5sfvarVLJ+0IP5b/q1A820nuGp5tpPcNVS
IJfNtJ7hqebaT3DVUiCXzbSe4anm2k9w1VIgl820nuGp5tpPcNVSIJfNtJ7hqebaT3DVUiCXzbSe
4anm2k9w1VIgl820nuGp5tpPcNVSIJfNtJ7hqebaT3DVUiCXzbSe4anm2k9w1VIgl820nuGp5tpP
cNVSIJfNtJ7hqebaT3DVUiCXzbSe4anm2k9w1VIgl820nuGp5tpPcNVSIJfNtJ7hqebaT3DVUiCX
zbSe4anm2k9w1VIgl820nuGp5tpPcNVSIJfNtJ7hqebaT3DVUiCXzbSe4anm2k9w1VIgl820nuGp
5tpPcNVSIJfNtJ7hqebaT3DVUiCXzbSe4anm2k9w1VIgl820nuGp5tpPcNVSIJfNtJ7hq7RUcED8
0UTWuta4VCICIiAiIgIiICIiCKH9p1f8Mf8AyRcQta7E6u4B9GPj/qRBzh971d+O3d9ArVFh5uas
j37voFagIi85VYrUw48+Fs8bWtcGiB7PWYWFxkLuIAOns09pQejReOdjtbvBa+sbFG6Qtndsh+pA
PIbcnrADj967z43XCnpXmaOGR0OcDZXM8no2jsfVLgSbDWxHsQeuUsn7Qg/lv+rVqMAxOqr6qVs8
okGzDnsEeU078xBjJ6dB069621QHtqYZY4nSBrXNIaQCL2txI9iCtFNvM3Y5vmZ+ZN5m7HN8zPzI
KUU28zdjm+Zn5k3mbsc3zM/MgpRTbzN2Ob5mfmTeZuxzfMz8yClFNvM3Y5vmZ+ZN5m7HN8zPzIKU
U28zdjm+Zn5k3mbsc3zM/MgpRTbzN2Ob5mfmTeZuxzfMz8yClFNvM3Y5vmZ+ZN5m7HN8zPzIKUU2
8zdjm+Zn5k3mbsc3zM/MgpRTbzN2Ob5mfmTeZuxzfMz8yClFNvM3Y5vmZ+ZN5m7HN8zPzIKUU28z
djm+Zn5k3mbsc3zM/MgpRTbzN2Ob5mfmTeZuxzfMz8yClFNvM3Y5vmZ+ZN5m7HN8zPzIKUU28zdj
m+Zn5k3mbsc3zM/MgpRTbzN2Ob5mfmTeZuxzfMz8yClFNvM3Y5vmZ+ZN5m7HN8zPzIKUU28zdjm+
Zn5k3mbsc3zM/MgpRTbzN2Ob5mfmTeZuxzfMz8yClFNvM3Y5vmZ+ZN5m7HN8zPzIKUU28zdjm+Zn
5k3mbsc3zM/MgpRTbzN2Ob5mfmTeZuxzfMz8yClFNvM3Y5vmZ+ZN5m7HN8zPzIKUU28zdjm+Zn5l
2imkkNn08kY9ri0j+hKDOiIgIiICIiAiIghhzec6uxHqx8R/EiQuAxOrvf1Y+j+JEHag9ar/AMw7
6BWKPDxY1Y/x3fQKxAREQEREBEWKWWOCJ0kz2sY3UucbAfig4qKiKkp5J6h7Y4o2lz3uNgAFxDPH
PHmjdcdI6WnjYjoPwXlq7HJsUDY6BzjHKHskptgHyEAkXGb0TxGZt7gG63OC4UzDo3P2UcMszIxJ
FEAGMLW8B7dSfSOp09iDboi12IV76a7KWEVNQBmMLZGtcG6+kb9Glh8UFFTWU9GGGqmjiD3BjS9w
FyehUry0GEQ4lHNE6aaehqWMm2r3tc9sn77SDewcMptawseGi9HBEyCFkUYIYxoa0Ek2A4alBmXR
72xsc97g1rRckmwARzmxsLnuDWtFySbABefrcTkqawUsL5aN7X56eRzA+Op0cMrrcAbGwuCRYhBt
cNxCDE6d8tOX5WPLCHsLTcfA9BBBHwIVy1uGRSODq2eA01TUtaZYdpnDSLga242sD9wWyQFDWYlS
0EkTamXZ7V1m+iSBqBckcBcgXOmoXXFK04fhk9SGZzG29vqdNbAa6a2C0cVXV4/iMsMcbZMPLRmM
sLbRm2Zrm6nMeBsdNRwsQQ9UCCAQbg9K7KekpY6Kjhpor7OFgY25ubAWWdBw5wY0ucQABck8AsMd
XBPK+KKeN8jAC5rXgloPAkLQ+UGMx7nFHRVEolncx0UsLQ5jvStlJOmtiLH7iRcLvgOBOoTHU1QZ
FOGuApoTeKIuN3ZTbMQbAgHhrZB6NEWCapigI2r2tJBIaTqQBc2HSgw1mI0uHtjNVM2IPdlbcE3P
4dHx4BWry+F1c2OQ4hBJn3apbJu1RlBc1jtLHUj7jwIHtBW/o6c0tJHC6aSZzRrJIbuceknwQUoi
8/jNXUT7OlpDsoJ3iMVYfdufiGWGuU5S0kEEEiyDZQYnSVVTLTwztdLH6zdQbXtce0X0uOlXLzuE
YI+KudVzgNfHLJsyGZc4da+lzlbfNoLX0J1XokBSVtfT4fBtqqURx3texOv3DXoJ/BVHgvE0OLVu
MYxmicRke1s9IXZwxjgQeiwtZxzXvrlIQe0Y9sjA9jg5rhcEG4IXdQ4ZQ+bqCOmM8k5YLZ5OJ6OA
0A+AVyApoqynnqJoIpmPlgIErAdWEi4uPuWpxzHHUWWGjcwzPDyw2LwXMsSyw6bXJ9gBOvBTYNST
4oIa+s2sT43545WtbG+ZpFy12XizNYj22H4h6hEWGaZkLM0jgLmwBNrnoA+KDtJKyIAyPawE2GY2
uV1p6iGphEtPKyWN3B7HBwP4heVqHHHK4w1cNSPT2UtE4+gIjb9I1w0LmuLSSDduo+/fYXhow2GR
pmdNJI/aPkc0NzGwHAAAaAfedUGyRF5/H8eGHNdTUt3VLtHWYTswQfSHQSNHEcbXNig2TsTpGVra
N84bUONg0g2Jte1+F7a2veyuXkMKwd1dM6epjmyAxSMlkkEhc4G5yuB9JujSHkZrEj7vXoCw1FRF
SQPnneGRsF3OKzLyWJ4rjBrTHBFsW+iWxZWSSu1dlIBIFiWnMOIABB42D0dFWQ11JHUwOLo5BdpI
IP3EHUH4KpRYbSmkp3h12uleZnsvcMc7VwHwvc/irUBST4jSU7wyephjeXBuVzwDc8B+KnxPE9xb
EyGIzTSvyNY1zW2NieJ0vYGw6V5+kwh+LVOeaeZ9O6J2Wocy0oY4gOhcXCxBs4kW9A2AKD2aLoxg
YwNbwaLBd0BERAREQEREBERBFD+06v8Ahj/5IuIm3xOr1I9GPgbdZEHOHm5qyPfu+gVqjoPWq/8A
MO+gViAiIgIiIOj3tjYXSOa1o4lxsF5GvrH4xV07IDPG2OV7ZKYsIe7K4EOaXDLnFrlpvdp9q2GL
1FLizarBgY5SYiZGkZ9QRYZRqbHKSNNDorMLwk0EUQnqJKyaEOayaXi1pN7D6X42tclB0wnBYsNi
YH+k6IvEXpEiJjjewv8A1P4cFuEU9RUspIdpKdL2aBxcegD2koIsWxaLDxsXTxQTyxPdE+bSNuUc
XG40uRoNdVoKLDq6vx0VLnbAsZG6WWOZzw8nLcaANJIYLjVtnAjVXU+CVTMYMpqnTU8hkLn8Swm9
iLk2eLlt2gCw11st/T08dLTRQQtyxRMDGN9gAsAgUlJBQ0zKeliZFDGLNYwWACzotFj8M2J0M8GH
1LmVEJzWabB7rH0L3FjwPH2X0QazGcVlxCOrioDG6GBjmyRyOyPbK1wsS0glzTYAW0JJutphGEGm
ha+qZEJBIZY4orhkJcADlB4XNz8Lmy5wbCW07jX1kDRiMpdmkPrBpPDQkDgCQNL3K3aAtfiuJRYV
SiWZ2USPEbXFpc1riDYutwbpqV3rsRp8OZG6qkdGx7wwOykhp11J6BpxOi00+Hy1GKCExzTQVIL6
rPUnLFZ4MZb94DhZv4/EJDgc+KVM22qxJMzK4VJjvHLG8aOaAQBIwhwa4a2te916qnpoaWLZ08Uc
bb3IY0NBPSbDpXFJSQUNLHTUsTYoIxlZGwWDR7B8FQg6kgC50AXn8a8oY6fDdpQSbbbEsZURuDmM
dw1Ovx4A242XXEPKAOFRu7GVFFEXwVT2DM+JwBuS02FhpoeN9LqmiwKKLEJ6uWNuV7szYj6QLgdJ
DfQOtYCwFhogxYPgotHVYhCd6BzFry0+n0vs3QOOl7aGwPFegRR4jiEOGUT6qpLxE0tDixhcRcgc
Br0oOcRro8MoJauYOMcQu7LxsvN5pMTqXRCSlnxHLDVUtWyF2zZHmJte/DRw4jNfVVOo24jiIljq
JZYqkHaFs4ORrTeKSO2gs5pHt9LW63GH0MWH0uxiBILnPcXWu5ziSSbaaklB2oaGDD4THDFGwu1e
5jA3O7pNgqibC5XKknka9r6eN7ds5jgLtzBptpm7xoeKDSYv5QxtlqKWmnhY+BjnSiYaS2AJY03B
vY8futfW2bCMMgdJJU04c2gnAkjgcCAXAgh4aRZtrC1uPEqTBPJp8T2y4gxw2Ja2NhkDi62vpEcW
h2rQdRw4WA9WgLFLI2KJ8jiA1rS4kmwFl0qqkUdO+VzJJMtrMjbmcSTYABedxGOqxcQ1GHzTRtkB
ZsHyOYCRcFxsPRcw39HUOtZBPVYjP5RsNPDBURXYwtaLt2byTdz3CxDcurTwN78RYenoaQUVJHCX
NfI0enIGBudx4uIHSTqsWHYZDhlOGQss8tAe65N7DgLk2HGw4C62CAtVi9bNHGKehqKZtc+7o4pS
C54AJsBccbcegXPQuanFafen4eHvFS9tm/uXOlw1x0LgHA2C1dBgckmJNnmqJZqaFjW08+1O0kbx
yv8AbbUZtCQSD8Q64Xg9PXu3wUzY6WUOElMXZ2Pe05Wubpa1m3DuJza6L1DQGtAaAANAB0LsupIA
JJsB0lAc5rRdxAAF7krxlXirccq9xNLTTg544ZA5z9SLbRulhl0vexF7jS17MYlfjcdO/C5WvEUp
LHRyNDnODTwv0D95p9ZpW1wnCo8MZI/jUzkPmeDoXewfDU2vqgyYfRviY2asdHJWuYGySsBA9thf
o+q2CLW4rikOE0rpZPTfb0Ig6zne0+2w4k62Fygw47Xy0NE0U4zzPdbIwjaln7zmA8SOPTw6VHSY
PFX0boZHmelZKJaWoc4Pe+N1nEZjcg5hx42suYcPdjFXFXzieCSIkXDmkEXuA021Fjo8WNiQvQgB
osAAPYEBrQxoa0ANHAAWssc80dLTyTzPDIo2l73HgANSVmWkxalkr2bWmlldLTEOZBfLHKdC4HrA
tJb7Bf2oNNildUY1K2ODOyifK2Jr2ejIxx9E3F75gbgsIsWXN1usIwSPD2smnZC+raHNa9jTaJhN
8jL3OW/1WXC8BpcIlmfTAjanQENAY25OUWA0u48bn4raoC1OMYoaKkm2DHSzNbd7YnNzxtN7OseJ
9g6Toq66vhw6nEs2Y5nBjGMF3PceDQOkrWUNPFV1UVdSFrS4PE7mtcNq1xNhc6hzS0aHhqEGuocP
OO0sVRO1sVTmDKyQRksqmN0Fg7pBA1Ni0gr1UEEVLAyGBgZGwWa0cAlPTxUsDIYGBkbBZrR0LKgI
iICIiAiIgIiICIiCKAgYpV8fVj6PvRIf2nV/wx/8kQMPvervx27voFao6D1qv/MO+gViAiLDNPFT
QvmnkZFEwXc97gA0e0koMhIHE2uvM4vjJrppMNw52cvDmSSRvs8O6rb6ZrAnWwIBAN72yYpMcapH
0UDXMqA5k2zLw10sYPrRyC49liOHTa6qwbCN0eauqIfXysDZHACzQOgAcOAv0X4WQc4fgcFKKeWW
Ju8wkuY5hNo7ixa0nXIeOUk2/ALcoppqlgZO2N2eaNhcY2EF/DTT49CDpXV8WH0pmlzEZgxrWi7n
uJsGj4krzrKar8o5J3y1MsMQc5sbo7sMdjdth0kFvpNcLgjQ2WHDm1vlDPFJUTNdFG3Z1WVxMUzS
L5Q3gHdYaFp6bWC9hEwRxtaL2aLam57+lBxEzJGGkNzcXZRYE9Jt96yrHJIyJhfI5rGNFy4mwC0H
lDis1FUQRsc4QTRuzlhAedQBsz0v19XpF7aoO2M42WyGjoXv2wkDJHtZmy3Fy1vQX2scvG17a6LJ
hODS4fO+aeYv2oaXxOcZAyRtwHMc7UAt0sbngLpgOEVFHEZsQc2Sqd6JdmLjlHqgk+sQb2JFwDa5
4reoCxyZ9m7Z5c9jlvwv0XU1biNNhzYnVUmzbI8MDrEgE+09A+J0WtjpsRj8qJ5YKhponhjpopHF
37pAyD903Fz0G/t1QayghxPEsdNTVU7aaZsOwq9m/PE+xuGljuILXEhwvwHxC9PQUMGGUcdLStLY
oxYXJJ/ElcUUE0Mb3VM5lkkdmNtGs9jWj2fVWIC1lazzzhEnm2vMTn6x1EDgbEHhf2XFj+K64jip
wydr6qC2H5Rnqs19m4nQFvG3DX2kKXDPJ6GkNU9s1QxtUSDG1wa1rcxIsBwNtL8SOPBB0wXBS2SS
urnxy1ExvYAWaRa4Jbo/VtwbAi54XK9EscMTIImxxNayNgs1rRYAKeuxCnw2Fs1XII43PDMxBsCe
F/YPigrN7acV4ow4jjmMBtVTvpZo43QVOynJjy5g5umh11s4ag210IW2lixRnlOH0kzX0b2MM8Uk
lw1uo9AcQ7pvwNj02W0pIqhjpX1Uwe57vRY0Waxo4AdJPtKDtRUNNh9M2npIWwwtJIYzgCTc/wBV
Ui0+K43FQTR00bHTVMhsI47XAsTfXS+mjTqehAxbGW0BELbAvaQ6dxGzpiR6Bk9gJ0UmAYZUiKeo
xG7nVJa+Rj3MeHuFrOFhbQAAe2wNgVjwfA5JK19dXOdKM+enc/8AvHNII9PQaWPqkXBv0WA9OgKe
oqoqXJtnhpkeGMHEucegD/8A3BZzw04rxEstXj+NQNfRzRbIGOopZznha5puCXN1a4tJsekaaglB
usQNbVYmynhLGtYGVEDyS5khGYObJbUDUEdBI+FldhmGx4dC+zi+aVxklef3nEkmw6Bcmw6LrnDM
Njw6jbAyxsXEuDQ0auLrADgASbDoV6AoKquc2iqZqFjaqaG7dm1w1cOi/t14KPH8UNBEynEdU11W
18cdTCwOET7ejccb+zQ8FrPJ3CXVEFNWVEYaSHOefSG3D26gsOjBcuJbbVwuLcEFlLhkte5stU6K
an2pnjlsdo8Fwc1pDh6AbYCwOthw1XokWConZS0z55M2SNpc7K0k2HwCDuXNaRmcBfQXPHpXlcUr
a3FDUUdC/aNLgI3w5S1wLQS197gttex4O1GhGubEJj5QUrYaZjm1ED21Bh2oYXtIOV8cguLXsbj2
EG11tMMwiOil3p7Y99kiDKiSJuRspGuYt9t76/EoO+F4c3DqRjDYzZGte/224C/EgXsL62WxREGq
xbGIsIERmYXbUlrLECxA6b8B0ZuAuL8VosPwsYzUSCp2kbKWoLjDIzLI03JaAdfQINxY6G9jY6ei
xDC6bEwwVAeCy4ux5aS0+s024tNtQrI42RMayNoa1oDQALWA4BByxjY2BjGhrWiwAFgAu66PdkY5
1ibC9gLkrzeN1U+IUlPNhDpnta97JNkHZg61sj23BAPSeLdCgw4tjj6pho4YHnavMEzI3/prG4Dm
EaW0uCdCbjQgrdYThUeGwhtmGTX1G2Y29r5G/ug2BIGl1hwTCTh21fK90hkOdu0Ic+IusXtz2Fxm
F/vutygLX1uJ01C9jKl5Y6QFzAGk5rcbWGpF7/dr0LpieKxUOzjdKIpJjlbI9hcyM9Bfa1gSQNSO
K1clAfKCp/Wy6kraWzJGt9IFpOZr43aFpNjrxGoI0QRUdHP5SbrVvnD4GXa+QSX2jQbFhA0DgQQT
b2OFiLD2LWhjQBwH9Vjip4oDIYmNYZXZ35RbM6wF/v0CzoCIiAiIgIiICIiAiIgIiIIoL+dKuxHq
x8fxRIf2nV/wx/8AJEDDxZ1WBw27voFaoqDV1X0fp3fQK1B0keI43PN7NBJsLlaSTF4Z5hBWU4FP
UlrqGbMHNqDYEAdV19QD0C/QVvlrqXCYaOqdJEXCIkubCQC2Nx4lnS2+twNNUEuE4JFRRxl7Tmjk
L4GZidgC0NLQSTfhc9F+HQt2igxOt3OFti1rpXbNkj/UY8g5c3wJsPxCDmoxSkpquKCecMkk9UEG
3wueAvY2vx6FpxQV09YYTKJ5acZ4cRFmuY6+sTwPWHw9nHWxORzX49DLQV1M2OeBwZO/JmZqDZ0Z
OhJB4HVt/bx3sUTYYmxsFmtAA6eCDIBYcF1e9sbHPeQ1rRckmwAXdaCqxt8E0suwbJQwOMNS0NJm
Y8nQhv7zSCNBqcwPwQdMTrWYjhT6vDqx7mRZv0TIwTM/qFrhcgi4t03CrwqifTsfZmypX2kip3G7
oHa3A6AOBt0EkcF2osLihxCevLGsknFsrW26b3d0l3Djw4BbVAREQY5I2yxuY8BzXAggi4IKwUFD
DhtHHS04cIoxYZnFxP3kqtEBERBjfG2RtntDhcGxF9QsiIgLo9jZGlrwHNIsQRcFd0QQ4bh0WGUb
KeAvLGkm73Fx1/2+HQrkRAUEuGU01YKp0f6QtDXeyQA3bmHTY6g8Qr0QFPUVUFIxr6mVkTXPDGl7
rAuJsB95VCwVNLBVwOhqYmSxuFi17bg9CDUSyYtD5ThkDd4oZWsMjXFrRENQXNPEm9tD0cDpY7Gl
jnMk8tSI2ukIDWMGrWi9ru6Trf4LrhmHDDqRkJmknc0W2kpu4i+gv7B0K9AWsxaondhFW7DZhvMQ
0LWiTK4WJGXpNuj4rZrTuwSIYmKmnIgjkDt6ia0Zam/DMD7LnXieHBB0hmrsTwuNlXhrIpJH5ZWT
EOY1oN8wHE30sOIPHgt2uOA0XKCeqqWUkD5pScjeNhcnoAA6TdajFJZK+WKjp5GGmma4GSM5y2Vr
mkBzQfU0IP320WqxmatxfE20DqSop3xSPjIZJnilieLB7wLHLcDUatN9QV6DCcJjwuBzWFz3vILn
OI42AtoB0Aa2uelAw3B46NrJHhm3aXm8YLWtzkFzWi+jdBp7RdbREQEREBFhnnipoXSzyMiiYLue
9wa1o+JK8viWMYhLjAgo43M2RLY3MIeJg5gcHtBIBIsRlJ4EkXIQZ8Zq6bEn7vsnzwjaRtewOP6w
NA3TQEXJufZ8FscMoZ4stXWFra2WNrJ2xH0HEcCb8SNRfS/cs2H0hgMlRM1raipDXTBnqhwaBp7e
nXidPYtggLW41XTYdhklTBDtXMtm0JDG9LiBqQONhqs0tZCKrcm1EbKySIyRxuOpA0vbpAK19FW4
nkqKWWBs9TTgBlSPQhmvwPtBH7wF/hxQQ4Q2rxCnmz00cdLWO2k7pAc5a5urBpZw10dfhpa69HS0
kNHTxwU7GxxxtDGtHQB0Likg3alZCcl2NscjAxt/gBwVCAiIgIiICIiAiIgIiICIiAiIgigaDilX
cA+jH/uiQG2KVeh9WP8A3RBzQetV/wCYd9ArFHh/Grub/p3fQKxAREQFhngiqoHwzxtkieMrmOFw
R8QsyIJ6WmZSU7YYy8sb6ud5cQPZc6qhEQFDJh0D69lYGuZO0ZS9jiM7fY4cHD7+HQrkQEREBERA
REQEREBERAREQEREBERAREQEREBERBgq6uChpZKmqlbFDGMz3u4NC0uKy4m3FKKfCntmhewh8Lnt
Ebm3BLr8b2OhGnt0N1dilJUTbKejLTPAT+iefQlaeLT7OAIPQQmEYaygpnFrJIzI4vEL3hwhv+42
2gH3IM0MdS6sllncwRgZYmNFzbpcT7T7Bpp09FqIgIiICIvO4hX1jMRfHC8sqKcF8dKQMtaw24Hi
HDUacDYnQoMseMYdiktbhlbGI3RiQPgnAtJE05S8dBb/AFCeT2F0dDTumo4nja6B8jcrnMBOW4/E
2NrkcVbR0EbDJUSU0TKic55LNBIJABbm6eHFbBAWvxGtkpmiKmYx9XMDsWyOIY4i1wT0aXP4FbBS
VtFBX0+xqGktuHNIJDmuHBwI1BHtQaSWmpfKiaGVzKiGSjcWzNByOjkBBDc1tbEcWm1jrcGy9Gxj
Y25WNDW+wCwXSni2EDYy9zy0avda7vibdKzICIiAiIgIiICIiAiIgIiICIiAiIgih/adX/DH/wAk
XEQJxOrs4j0Y/wDkiDmgc3NV+kP793T8Aq87esO9T7rTve5z4InEk3JYD0rncaXs0PLCDPnb1h3p
nb1h3rBuNL2aHlhNxpezQ8sIM+dvWHemdvWHesG40vZoeWF1FFS53fq0PR+4EFOdvWHemdvWHesG
40vZoeWE3Gl7NDywgz529Yd6Z29Yd6wbjS9mh5YTcaXs0PLCDPnb1h3pnb1h3qY0VLtG/q0PA/uD
4LtuNL2aHlhBnzt6w70zt6w71g3Gl7NDywm40vZoeWEGfO3rDvTO3rDvWDcaXs0PLC6voqWw/Voe
I/cCCnO3rDvTO3rDvWDcaXs0PLCbjS9mh5YQZ87esO9M7esO9YNxpezQ8sJuNL2aHlhBnzt6w70z
t6w71M+ipdm79Wh4H9wLtuNL2aHlhBnzt6w70zt6w71g3Gl7NDywm40vZoeWEGfO3rDvTO3rDvWD
caXs0PLCbjS9mh5YQZ87esO9M7esO9TMoqbL/wBvDxP7gXbcaXs0PLCDPnb1h3pnb1h3rBuNL2aH
lhNxpezQ8sIM+dvWHemdvWHesG40vZoeWF1bRUuZ36tDx6g9iCnO3rDvTO3rDvWDcaXs0PLCbjS9
mh5YQZ87esO9M7esO9YNxpezQ8sJuNL2aHlhBnzt6w70zt6w71NuVLtB+rQ8OoF23Gl7NDywgz52
9Yd6wyQwz5NqyOTI4ObmAOUjgR7CuNxpezQ8sJuNL2aHlhBnzt6w70zt6w71g3Gl7NDywurqKmu3
9Xh49QexBTnb1h3pnb1h3rBuNL2aHlhNxpezQ8sIM+dvWHemdvWHesG40vZoeWE3Gl7NDywgz529
Yd6Z29Yd6mkoqbI79Xh4dQLtuNL2aHlhBnzt6w70zt6w71g3Gl7NDywm40vZoeWEGfO3rDvTO3rD
vWDcaXs0PLCbjS9mh5YQZ87esO9M7esO9TR0VLs2/q0PDqBdtxpezQ8sIM+dvWHemdvWHesG40vZ
oeWE3Gl7NDywgz529Yd6Z29Yd6wbjS9mh5YXVtFS3d+rQ8eoEFOdvWHemdvWHesG40vZoeWE3Gl7
NDywgz529Yd6Z29Yd6wbjS9mh5YTcaXs0PLCDFA9oxOru4erH0/xIs9PDFC5+yjYy9vVaAiD/9k=

--_011_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_
Content-Type: image/jpeg; name="image006.jpg"
Content-Description: image006.jpg
Content-Disposition: inline; filename="image006.jpg"; size=20441;
	creation-date="Wed, 19 Jun 2013 13:29:06 GMT";
	modification-date="Wed, 19 Jun 2013 13:29:06 GMT"
Content-ID: <image006.jpg@01CE6D0A.1C8F3190>
Content-Transfer-Encoding: base64

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
dFIzTeLBzc8mgdyIg//Z

--_011_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_
Content-Type: image/jpeg; name="image007.jpg"
Content-Description: image007.jpg
Content-Disposition: inline; filename="image007.jpg"; size=17883;
	creation-date="Wed, 19 Jun 2013 13:29:06 GMT";
	modification-date="Wed, 19 Jun 2013 13:29:06 GMT"
Content-ID: <image007.jpg@01CE6D0A.1C8F3190>
Content-Transfer-Encoding: base64

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
efnJPIzomzz85J5GdEFSKXZ5+ck8jOibPPzknkZ0QVIpdnn5yTyM6Js8/OSeRnRBSilMMwFzWyD4
ljOillrIITaXF2MO6znRj+yarJbs6qKGLSnbeHES8d7Qw/2WzZ5+ck8jOiIqRS7PPzknkZ0TZ5+c
k8jOiCpFLs8/OSeRnRNnn5yTyM6IKkUuzz85J5GdE2efnJPIzogqRS7PPzknkZ0TZ5+ck8jOiCpF
Ls8/OSeRnRNnn5yTyM6IKkUuzz85J5GdE2efnJPIzogqRS7PPzknkZ0TZ5+ck8jOiCpFLs8/OSeR
nRNnn5yTyM6IKkUuzz85J5GdE2efnJPIzogqRS7PPzknkZ0TZ5+ck8jOiCpFLs8/OSeRnRNnn5yT
yM6IKkUuzz85J5GdE2efnJPIzogqRS7PPzknkZ0TZ5+ck8jOiCpFLs8/OSeRnRbomuayznl5H8xA
F/BBsREQEREBERAREQEREBERAREQRYc4bDH7Q48fiUX3Dv4GP7/xKIjOiyhdnf8AayfnKpU1F+5d
lb9rJ+cqlFERcOXtFHTtpxPGIpp6gwiN8rQQA/RLr8d4yHeg7iLkVGNCklkFTCY4mw60Pc8A3uAG
kfy3JsM87FaX9oSKGlqYqYS66E1EjWyj9mwWDrHc4gu3ZIOpXfwFR/Td+CpU1cf9BUHhq3fgn0jS
cxH4oIa/HYcPqNTJS1sp0dLShpy9viFN/m2n/wBn4p/8Vyyr56yWoDqHFaOGHRtoyRaZv33upwcU
Izx+jB+FMOqvDrz1izPGcrjb4t3+baf/AGfin/xHIO1cDsmYdihPAbK4LTo4gd/aKID4U7U1FY7f
2mt/wwMV4P5T1XtMfovm3DHcSm/hsBqj3GaRkfVNo7STH2KOggHfJK55HgFpFLUH63aaa/wjYP7J
sLj9btLV/GxaP7KcE+r++Sdr3Yf3zbth7Qy/vsWpoR3QU1/+rioq2lhpL/Snaasuf5GyNYT8g0XW
84XBKNGfH62SM7264Nv94CroqLBKDOnZTtf77vacfvOaTDCb207b4nSSeEefZQUdZ/BYRiGIX3TV
k7mM/wCpz8FVF2PnmbeUUFGD/JT04efvc7evTDEKX7ePzL79IUvMR+Ka4z5ZP2XPO75XzeTk7HVE
J0oY6Ce3cHwO8Wmy17JiNFvjxqADjBUNqG+BzXr/AKQpft4/FffpCl5iPxTWXfGfr9HHnNrfHn+3
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
3OdpH2j4oiIP/9k=

--_011_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_
Content-Type: image/jpeg; name="image008.jpg"
Content-Description: image008.jpg
Content-Disposition: inline; filename="image008.jpg"; size=20662;
	creation-date="Wed, 19 Jun 2013 13:29:07 GMT";
	modification-date="Wed, 19 Jun 2013 13:29:07 GMT"
Content-ID: <image008.jpg@01CE6D0A.1C8F3190>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCAEOAhkDASIA
AhEBAxEB/8QAGwABAQADAQEBAAAAAAAAAAAAAAQDBQYCAQf/xABNEAABAwIDBAYFBwgKAwABBQAB
AAIDBBEFEiETFDFUBkFRkpPRIlJTYZEVJTI1cXLiFiMzQmOBwtI0VVZic6GxssHhJIKU8QdDg6Tw
/8QAFwEBAQEBAAAAAAAAAAAAAAAAAAECA//EACsRAQABAgQFAgYDAAAAAAAAAAABEVECEiGREzFB
YaFS4QMjcYHR8CIyQv/aAAwDAQACEQMRAD8A/V443zT1INRM0NkygNI9Vp7Pesu6O5uo+LfJfKQh
0tWRw238DVWgl3R3N1Hxb5JujubqPi3yVSIJd0dzdR8W+S+GjcRY1VR8W+SrRBLujubqPi3yTdHc
3UfFvkqkQS7o7m6j4t8k3R3N1Hxb5KpEEu6O5uo+LfJNzdcneqi597fJVIgl3R3N1Hxb5JujubqP
i3yVSIJd0dzdR8W+Sbo7m6j4t8lUiCU0biCDVVFj72+Sbo7m6j4t8lUiCXdHc3UfFvkm6O5uo+Lf
JVIgl3R3N1Hxb5JujubqPi3yVSIJNzde+9VF+HFvkvu6O5uo+LfJVLS4v0jp8IqoqU09XV1crDIy
Cki2j8gIBceAAuQOKDYbo7m6j4t8k3R3N1Hxb5LFDibZ3wNbT1LWTw7YSPjytYNPRdfUO14W6iqh
NE4EtkYQOJDhogxbo7m6j4t8k3R3N1Hxb5KhrmvaHNIcDwIN1HTYrSVdVVU0EzXTUjg2ZvqktDv3
6HqQZBRuAAFVUWHvb5JujubqPi3yWbasGb02+jx14L6XtAuXAAi4N0GDdHc3UfFvkm6O5uo+LfJU
NcHtzNIIPAg3WuxnF4cFw99VI10gY5jSxhGb0nhoOvvcgp3R3N1Hxb5L5ubrg71UXHvb5JFWbSoq
IdhMzYlozvaA2S4v6Jvr2faqWua8XaQR2goJ90dzdR8W+Sbo7m6j4t8lnbIx98rmutobG9l8bKxz
S5r2kDiQbgIMO6O5uo+LfJN0dzdR8W+SzGVgzXe30fpa8PtX0vaBcuAFr8epBg3R3N1Hxb5IKNwF
hVVHxb5LPtGZM+ZuTjmvojXtc0ODmlp4EHigwbo7m6j4t8k3R3N1Hxb5L42ta6tFM2GRwMe02wAM
fG2W9+PuVDZGOaXNc0gcSDogwbo7m6j4t8k3R3N1Hxb5LM2RjmZmvaW9oOi+te1xIa4Et0IB4IMB
o3G16qo097fJN0dzdR8W+SqRBLujubqPi3yTdHc3UfFvkqkQS7o7m6j4t8k3R3N1Hxb5KpEEoo3C
9qqo197fJN0dzdR8W+SqRBLujubqPi3yTdHc3UfFvkqkQS7o7m6j4t8kNG4jWqqPi3yVSIJd0dzd
R8W+Sbo7m6j4t8lUiCXdHc3UfFvkm6O5uo+LfJVIgl3R3N1Hxb5IKNwJO9VGvvb5KpEEu6O5uo+L
fJN0dzdR8W+SqRBLujubqPi3yTdHc3UfFvkqkQa6sgkhpJZG1U5LWkgEtt/orsh9dywYl9W1H3Cs
+0b2/wCSDBS/pqv/ABv4GqpSUl9rV3tfbdX3GqtAREQEREBERAREQEREBERAREQEREBERAREQFyf
SxtM6rpnyUGMmrjjJgrsLiLnMudWEjq4GzhlK6xEHC0kGLuxHDa3G6J88zcHqGVTY4wQ55ewhmmm
YgcOF7rmW4NLPg0slDg1ZQyzVcc1fTsw3KzYgODY2RusJQ0kFw6ySewL9fRP3yOS6B4a7D6CsI3t
sUs2ZkU9GKVrPRAOSMHQH7Brdaw4HDR470nEeCPE9XA99JVRU12kGGzmh44OLr6dd1+grySACSbA
cSUnUjR+fUvQmhFfgAlwkmJ1E/frglsjw1mUS+sb5rZv+FrZqIUlD0apMTw2qqYIq6sbuYaXPMQD
8oDSbuaBY26wOB4L9Mo6yCvpI6qklbLBKMzHt4OHaEno6eeognlhY+WnJdE8jVhIsbfaNFeqRDne
hdE6ljxKSGimoMPnqc9JSytyOjblAccn6oLgTb/JcpXYM+SkqYKjo9Wz478oCZ2INizNdHtg4ESX
1bksMnVbhpdfqq+qdar0o/Pcewitq29KmMpKh7auqojHkabyNaIw4tI7LG5HCy6PFMHdR9Eq7D+j
0EdLM6F4gbF6AzkdvUT29q3yJ0oV1q/OHYdT1HR+piwPo1X0EoEAq43Q7B1TGHgvjBv6TrX9Lrvx
1X2PDBM7FpsBwSrw2hdhU0D4XwGDeJj9DLH1kC4zW1uBrZfo6JOpGjgIOhOHjGMHD8KvTOoH72HA
lskoyZdr6ztXWzX/AMlqn0YpaLorSYthtVVRxS1jXUgYXvMYvl9Em7mgW01uOor9TUU8dE6vpH1I
h3tmfd89s+o9LL+7jZCIfn82F1TOjdW2lwaWPDajExJDRy0xlfTQ5LF4gvrd9yGHQXvZYaDAK6bo
5PQT0NVuz8agkZEYNh+Y9DM4MafQbxuBw14FfqawzVEUBZtpWRmR4YzO4DM48AO0+5SJoOQrcEFL
0gqGUtDPHhowWSBoomBpDjJctZwAdYkgLSU2G1f5OTU8ODTCgjrYXzRx0xpZa2EN9MGK/EG17WzA
cF+mskY++RzXWNjY3sexe1SX5nUYRJUYX0ifgeC1dBh9Rh4iZSuhMTppwTdzYur0SBewv+5b3D+j
8ODdMaKTC6J1PSyUEjal7Acr3hzMuc9bvpanXiuwRAREQEREBERAREQEREBERAREQEREBERAREQE
REEuJfVtR9wqpS4l9W1H3Cs9n9o+CDBSfpqv/G/gaqlJSACWrAFhtur7jVWgIiICIiAiIgIiICIi
AiIgIiICIiAiIgIiICIiAvnV2L6iD88/LDE6d9JDPJE6TD6h7cYcWAWi2gY147Lhwfp1Aquoxeux
TotkEhE2N1j6aiDWgGOnJIze+0bXOv7wupfg2Hyuq3SUdO51a0MqSWD880CwDu3RYhglK3E6Srbd
oo4HQQQtsI4wbXIFuNgB9ifU+jQSy1suNVOD4ZikODU2F00RaDCyR0oIOvpcGNAtp131W66L4pNj
XRyir6lrGyzMJdkByusSMwv1G1x7is+I4DhWMPjfiWH0tU+P6BmiDi37Lq5kbY2BjGhrWiwAFgB2
J9Rq+lNdPhfRfE62kcGzwU75I3EXAcBpotHPL0ghkwaiGLxmoxJ8jpZ90baNojzZWN9xvYm/HW66
2ppoaymkp6mJksMrS17Hi4cD1EL46jp5JYJXQxl8F9k4t1juLG3Zpog4SPGekdNS77U4pTzR0mKD
D3wilDd4btAwvcb+i70r2Gmi/Q1E7C6J0L4nUkJjfLt3NLBYyXvm+24ButRJg/SR0jizpNG1pJIb
8msNh2XzINNjPSbGaCoxLC6V0cuJMqRNSgsHpUuQvdp12yOZftIX2o6XVlXS1Nbh1TDHQz1dPQ0t
RIwFkRcAZJT22Lg0Am1wuujw2nNRFV1EUUtdHDsTUGMBxb1j3AnWy+R4Nh0WGHD46GmbREEGnEY2
Zubn0eHFBx9fjuMYGzGqU4pFiE1Lh29xVBga10T82XI8N9Eg8R18Vh6Q1WK4LVYFW1EnyrWt3mQB
sQjawGIXs0alrdT1uIXZU3R3CKKgmoqXDqWKmn/SxMiAa/7R1qp9HBJPBM+GN0tPfZPLdWXFjbsu
NEEmF1DvkCKodVtxBxh2m2jaGiXS/ogcB1BcMa3EMUi6L4lW4xTTx12IxStomQtbsTZ2jXA5jl4G
99exfolJRU1DBsaSCOCPMXZI2houTcmw96jj6N4NDWOqocLomVLniQythaHZh13tx1TrU6Ucl8rY
lFSzx4dJS0s0/SJ9HtN3bbIb6kC2Z2nE6nrXcUcM0NJFHU1BqZmts+YsDS89thoP3LGMJoRwpINJ
95+gP0vr/e96tUJ51fURFQREQEREBERAREQEREBERAREQEREBERAREQEREEuJfVtR9wqm47QpsS+
raj7hVGRvqt+CCakuZau4sdt/A1VqSkIMtWQbjbdX3GqtAUWIYnBhkbH1ReGvdlBawut9tlatbie
FtxWERSzSRxi9w0NOa/vINj2EWIQe6XFaatqKmGEvJpnFkjiwhoI4i6lHSShcPQ3hzjYsYIH5pGk
EhzRbVtgdR2L03BImYhNWCWTayNLODRZpIJBsLuvYC7rkdSwM6MxRmJ7K2rE0DRHBJdhMTACMoGW
xFidSCeGqDcQTx1VPHPC4PjkaHNcOsFfTNECQZGAjqLgvFLTR0dLFTxX2cTQ1tzc2HaVgoaeF9Lm
dFG5xe+5LQSfSKCrbxe1Z3gm3i9qzvBed0p/YRdwJulP7CLuBB628XtWd4Jt4vas7wXndKf2EXcC
bpT+wi7gQetvF7VneCbeL2rO8F53Sn9hF3Am6U/sIu4EHrbxe1Z3gm3i9qzvBed0p/YRdwJulP7C
LuBB628XtWd4Jt4vas7wXndKf2EXcCbpT+wi7gQetvF7VneCbeL2rO8F53Sn9hF3Am6U/sIu4EHr
bxe1Z3gm3i9qzvBed0p/YRdwJulP7CLuBB628XtWd4Jt4vas7wXndKf2EXcCbpT+wi7gQetvF7Vn
eCbeL2rO8F53Sn9hF3Am6U/sIu4EHrbxe1Z3gm3i9qzvBed0p/YRdwJulP7CLuBB628XtWd4Jt4v
as7wXndKf2EXcCbpT+wi7gQetvF7VneCbeL2rO8F53Sn9hF3Am6U/sIu4EHrbxe1Z3gm3i9qzvBe
d0p/YRdwJulP7CLuBB628XtWd4Jt4vas7wXndKf2EXcCbpT+wi7gQetvF7VneCbeL2rO8F53Sn9h
F3Am6U/sIu4EHrbxe1Z3gm3i9qzvBed0p/YRdwJulP7CLuBB628XtWd4Jt4vas7wXndKf2EXcCbp
T+wi7gQetvF7VneCbeL2rO8F53Sn9hF3Am6U/sIu4EHrbxe1Z3gm3i9qzvBed0p/YRdwJulP7CLu
BB628XtWd4IJonEASMJPUHBed0p/YRdwL62mgaQWwxgjgQ0aIMyIiAiIgIiICIiAiIgIiICIiAiI
gIiIJcS+raj7hWfM/wBT/NYMS+raj7hVGdvrN+KCel/TVf8AjfwNVSkpBaWr1J/Pdf3GqtAU1TW0
1EGmqnihDzlaZHBtyqVqcawyXFaZkMc0cYucznNcSPeLOGo7DcHrCC2KvpZ6qSmiqYnzxfTja8Fz
ftCwHG8NEckprqbZxuyPdtRZp7D8D8FFTYLUQVQc6pY+OMybIbMh/wCccC7Mb69drAe/gpo+jlXD
LTzsroDPSRiGG8Bylga5vpDNcu9LqIHu1QdGx7ZGB7HBzXC4INwQsGHf0Qfff/uKUFKKGggpWuLh
CwMzEWvYdinoqUSU+Yyzi736NkIA9IoKaqp3WMP2U0tzbLEzMVL8sHkK/wAH/tfavCGVcWzNXWx6
3vFOWlSfkvH/AFni3/1lZnDM/wCqfYoq+WDyFd4P/a+fLHbQ1wHbsVL+S8f9Z4t/9ZX38l4/6zxb
/wCspkn1eCndWMcoeD5Hxnskjc3/AIVMddSy/o6iJ32OC1LuisLxZ+JYq4e+qJ/4WE9B8Pcbmpry
e0z/APSUxX8e5R0YNxovq56PodSxfoq7E2H+7Ukf8L6ejtdG21Pj9ezsEmV/+q3SLjoEXM/I/SGF
xMeMxzjsljLf9pXzJ0ihFpKWGo98dW5hPxTL3Wjp0XMHE6yAnesHxVoHEwziUf5FG9I8KDstRNiF
MeydsjUyyUl1C+LSwYlhNV+gxcO9282/1VzaaJwBbUzEHrExUmKc0WIpN0ZzM/jFN1j5mfxipWBY
ij3WPmZ/GKbrHzM/jFWosRR7rHzM/jFN1j5mfxilRYij3WPmZ/GKbrHzM/jFKixFHusfMz+MU3WP
mZ/GKVFiKPdY+Zn8YpusfMz+MUqLEUe6x8zP4xTdY+Zn8YpUWIo91j5mfxim6x8zP4xSosRR7rHz
M/jFN1j5mfxilRYij3WPmZ/GKbrHzM/jFKixFHusfMz+MU3WPmZ/GKVFiKPdY+Zn8YpusfMz+MUq
LEUoomkaT1B//lK+sowx4dtpzY3sZCQUFKIiAiIgIiICIiAiIgIiICIiAiIgIiIJcS+raj7hVNh2
KbEvq2o+4Vnyn1nf5IJ6Qky1dxb89w/9GqtS0hvNV29t/A1VICLXTY5hVPWijnxOijqjoIHzsDz/
AOpN1Lj8FRUwwR01NNKdoCZIpQwwgfrAFwzHqCDdouepKOspsYrpmMlfBMCc8rmkhxItks76IFzq
AdBa61keEYiBHtaSpfAGtFTCKoZp5crryNObQXIPEfZog7RS4d/RB99/+4rzhsU0OG00dU7NOyNr
Xuve5trr1/asNFDO6nuyoLGl77NyA29IoNkil2FTzZ8MJsKnmz4YQVIpdhU82fDCbCp5s+GEFSKX
YVPNnwwmwqebPhhBUil2FTzZ8MJsKnmz4YQVIpdhU82fDCbCp5s+GEFS8ua1zS1wBB6iLqfYVPNn
wwmwqebPhhBgqMDw2qvt6GmeT1mMX+Khk6GYK76FM6I/s5XN/wCVtNhU82fDCbCp5s+GFc0x1Wst
E/oPS/8A7FdWxe4vDh/mFi/JGsh/Q18Eo7J6e9/3grothU82fDCbvU82fDCzMRPOI2RzzcCxNosa
TB3e+8ov+5ffkPEuSwbvSroNhU82fDCbCp5s+GFMuC0bGlnP/IeJclg3elXx2BYn+rR4MPtdMV0O
wqebPhhNhU82fDCZcFo2NLOd+QcV5XBfjN5p8g4ryuC/GbzXRbCp5s+GE2FTzZ8MK5MFo2NLOd+Q
cV5XBfjN5p8g4ryuC/GbzXRbCp5s+GE2FTzZ8MJkwWjY0s535BxXlcF+M3mnyDivK4L8ZvNdFsKn
mz4YTYVPNnwwmTBaNjSznfkHFeVwX4zeafIOK8rgvxm810WwqebPhhNhU82fDCZMFo2NLOd+QcV5
XBfjN5p8g4ryuC/GbzXRbCp5s+GE2FTzZ8MJkwWjY0s535BxXlcF+M3mnyDivK4L8ZvNdFsKnmz4
YTYVPNnwwmTBaNjSznfkHFeVwX4zeafIOK8rgvxm810WwqebPhhNhU82fDCZMFo2NLOd+QcV5XBf
jN5p8g4ryuC/GbzXRbCp5s+GE2FTzZ8MJkwWjY0s535BxXlcF+M3mnyDivK4L8ZvNdFsKnmz4YTY
VPNnwwmTBaNjSyfBaWoo6N0dVHSxvLyQKYuy2/8AbW62ak3ep5s+GF6ZDUBwLqkuA4jZgXVpEchS
iIgIiICIiAiIgIiICIiAiIgIiICIiCXEvq2o+4VnzO9Q/ELBiX1bUfcKozDtHxQT0gAmq7C357+B
qqUlICJau5v+e4/+jVWg/L6iOth6XNp5ajDG0dTWuY2nfUQ2laXjM3Z7PMTldwzfSN79S/TGMbGw
NYA1rRYAcAFxNV0Yxw486eCWkdQun3jZOme1okvcOLMhJ1DSWh4BIvYLe49iEmH01MGVTYZ5ZA0X
ju1567k/RbxPb2JHKIJ5y3qLmqTF6p+KysllzNBlD6cxZdjZwEfpdeYdvG+i18ePV7hGJK7Zwva1
09Ru/wDRZMriYrWsdQBrr8Qg7VS4d/RB99/+4rzhss1RhtNLUsyzPja57bWsSNdOr7FhopKgU9mQ
RubnfYmW1/SPVZBskUu0q+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8KbS
r5aLxvwoKkUu0q+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8KbSr5aLxvw
oKkUu0q+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8KbSr5aLxvwoKkUu0q
+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8K
bSr5aLxvwoKkUu0q+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8KbSr5aLx
vwoKkUu0q+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8KbSr5aLxvwoKkUu0q+Wi8b8KbSr5aLxvwoKkUu
0q+Wi8b8K+tkqS4B0EYbfUiW9v8AJBSiIgIiICIiAiIgIiICIiAiIgIiICIiCXEvq2o+4VRlb6o+
CnxL6tqPuFZ8rvXPwCCekN5avQj891/caq1LS/pqv/G/gaqkHAY9iRi6eUrG4pLDFeCF0WV5a5zp
LhrC05bm1jmF7Xtfgu+C5HEcCiPSSnq4GYHE2KWN7jNTsM5cXE2BtcEkkg3vcfat/iddJQxwyRti
c18zI3535bBxA07TqnQnm2CLS0mK1HyrVUlbE2EMDnwAC5kY0gZr3t1jSw4rXRdJayaSCFraMSVU
bZonF7skbS1zsr/73o/69iDq1Lh39EH33/7ivmHVe/YdT1RZk20bX5b3tcdqw0VSyOnylkxIe/Vs
TiPpHrAQbFFPvsfqT+A/yTfY/Un8B/kgoRT77H6k/gP8k32P1J/Af5IKEU++x+pP4D/JN9j9SfwH
+SChFPvsfqT+A/yTfY/Un8B/kgoRT77H6k/gP8k32P1J/Af5IKEU++x+pP4D/JN9j9SfwH+SChFP
vsfqT+A/yTfY/Un8B/kgoRT77H6k/gP8k32P1J/Af5IKEU++x+pP4D/JN9j9SfwH+SChFPvsfqT+
A/yTfY/Un8B/kgoRT77H6k/gP8k32P1J/Af5IKEU++x+pP4D/JN9j9SfwH+SChFPvsfqT+A/yTfY
/Un8B/kgoRT77H6k/gP8k32P1J/Af5IKEU++x+pP4D/JN9j9SfwH+SChFPvsfqT+A/yTfY/Un8B/
kgoRT77H6k/gP8k32P1J/Af5IKEU++x+pP4D/JN9j9SfwH+SChFPvsfqT+A/yTfY/Un8B/kgoRT7
7H6k/gP8kbVsc/KGTAnTWJwHxsgoREQEREBERAREQEREBERAREQEREBERBLiX1bUfcKz5j6rv8lg
xL6tqPuFU3HaglpABLVgCw23V9xqrUlJcS1dzc7b+BqrQfluJx4TH/8AqDQuLcRrKwVLckr6h+SK
7yC0DIRoeq/C5uF+k1NHT1jGtqqeKdrTcCRgcAe3VcvU9FMQ/KSKtocSqG0hlZLLHLW1BLSHEuDW
ZspDhYWOgtoumq62OiERkZI4SSNjBY2+Uk2BPYEjkTzq+toaZskj208LXSEF7hGAXEG4JPWvPyZR
GN8ZoqYxyOzvbsm2c7tItqfep4MYp6isMGSZoGfLK5oDJMhs6xv1HtA9ymb0mgeWtZSVbpZAHxRh
gzSsIJzN1tazTxIPDTVBuwAAABYDgAp8O/og++//AHFe6Wpjq6WOohJMcrQ5pIsbFS0NXTspcr54
muD33BeAR6RQbFFNv1LzMHiBN+peZg8QIKUU2/UvMweIE36l5mDxAgpRTb9S8zB4gTfqXmYPECCl
FNv1LzMHiBN+peZg8QIKUU2/UvMweIE36l5mDxAgpRTb9S8zB4gTfqXmYPECClFNv1LzMHiBN+pe
Zg8QIKUU2/UvMweIE36l5mDxAgpRTb9S8zB4gTfqXmYPECClFNv1LzMHiBN+peZg8QIKUU2/UvMw
eIE36l5mDxAgpRTb9S8zB4gTfqXmYPECClFNv1LzMHiBN+peZg8QIKUU2/UvMweIE36l5mDxAgpR
Tb9S8zB4gTfqXmYPECClFNv1LzMHiBN+peZg8QIKUU2/UvMweIE36l5mDxAgpRTb9S8zB4gTfqXm
YPECClFNv1LzMHiBN+peZg8QIKUU2/UvMweIF9bWUz3BrZ4nOOgAeCSgzqLEcRGHxsdutVPmNrU8
ecj7VaiRRJ7NJ+Uo/qnFf/m/7QdJQSB8lYr/APN/2t3YJYLVYszTFdo3Y3JBV1ME8LY8jm7IEm8j
S4NLr2txPbcdaU3SaCprIKbc61skwv8Aow5rG3IDiWkixLTYrZfJtHtJXmlgzzfpHbMXf9vavMOF
UFOYjDR08ZhvsyyMDJfjbsWYbQ1/SFlEaljKaaR8ILQ70QwyZC8M434ddre9BjU1O2kFXSu/OUj6
iaRhaBHlAJGXMSePUSti+gpJKk1D6aF0xbkMhjBcW9l+xfZaSnmyGWGN5jBDMzQcoIsQPtGiDUDp
XBle6SkrI9n1Oaz0j6Ogs7jZ7T2a+5UuxuMUjJd3nMr5nQCAZc2cXuL3y6ZSb3VVThdFVQvhlp4y
x5BcA0C/D+UfBenYbROpW0zqSA07TdsRjGUH7OCDWYd0h3s0kT4HmaoiZJ+btZl2BxJueAv1XWZu
N/8AmyU5he//AMgwMyWv6LA5znXI01WwjpKeNzXRwRNc0WBa0AgWtb4LyyjgjqJJmsG0kdmJOutr
XHZoLJI1tB0jgr6mKFlNVRGS2V8jW5TmaXt4OJ1aCf3aqrEcYpsNmZHUCQGQAtLW3B9IA/C9z7rr
M/Dqd8RYyMRGwAfFZjm2FhYjhpp9i8R4ZA2IMlD6ixdZ1Qdo4XFiAT1EaII/ykpczPzNRs3BhMmV
tm57ltxe+tuoHiFFH0rMu+sZTvZJBTipYyQAHZ5A67rG1zwsOHXZb12H0jpmTOpYDLG3Kx5jF2js
B6gvM2G0k8To3wR5XDKcrbG1rWuPdp9iDXYv0j+Sw7LSSzDdtuCwaDW1ndg96sjr5nYw+kMUToms
z52PJLDpYOFrAnW2vUq300MocJIY3hzchzNBu3s+z3LHHQUkVY+pjpoWVEn05WsAc77TxPAfBB9x
L6tqPuFZ9m31W/BYMS+raj7hWfK/1/8AJBPSG8tWbEfnuv7jVWpaX9NV/wCN/A1VICixDDmYjEyN
808QY8PBhflJINxf96tRBqo8EpYql8zHT3JcWsMl2szG7so6sxGv7+CwjoxRtylktS2RlmxSCY5o
mgEZWnqFiVsoq6lnqJYIaiKSWLSRjXgln2jqWE4zhoiklNfS7ON2R7tq2zXdh14oKaenjpaaOCFu
WONoa0XvYBYsOA3MaD6b/wDcVQxzZGBzSHNcLgg3BCwYd/Qx99/+4oPtTV09HGH1U0ULCbB0jg0E
/vUvy9hH9Y0fitWesw6kr4xHWU8czGnMGvF7HtUf5L4L/VtN3E+zWGMFNZnZl+XsI/rGj8VqfL2E
f1jR+K1Y/wAl8F/q2m7ifkvgv9W03cUrNvPs1T4d5292T5ewj+saPxWp8v4R/WVH4rVjHRjBmm4w
2l8ML23o9hTeGH03hhKzYpgvO3uflDg/9ZUfitQY/hJNhiNJf/FasgwPDQLCgpbf4TfJeTgGFuFj
h9LY/sgmp8vu9NxnDXmza+lNv2rfNe24jQvF21dOR7ntUx6M4O7jhtN4YXk9FcFPHDKXwwp/I+Xe
WxjqIJdI5Ynnsa4FZdPctI7ofgbjfcWMP7Nzm/6FYvyOomA7vVYhBf2dS4D4JqU+Hedvd0Fh2JYd
i54dG66MDYY/Xtt1SZXhZfkjHAAPyg//AKbPNKzYyYfVHn8N5YdiWHYFoTgmMuNz0im/dTMC8jo9
ih+l0iq7e6NoVrNjJh9Uefw6DTsC+ZfsXPfIuNUvp0eOSSv9SqjDmn4ahPl3FMPFsWwiRzBxnpDt
G/bl4hM1zh1/rMT+93RWHYEsOwLWUHSDDcROWnq4zJ1xuOVw/cdVsx9qsTVicMxNJh9sOwJYdgRf
UR8sOwJYdgX1EHyw7Alh2BfUQfLDsCWHYF9RB8sOwJYdgX1EHyw7Alh2BfUQfLDsCWHYF9RB8sOw
JYdgX1EHyw7Alh2BfUQfLDsCWHYF9RB8UGJVtVRsa6koZKtzjYta9rco7dVeviGGYiazFWi+W8X/
ALO1Hjx+a+jGsXuL9Hqi3+PH5reos0m7pnw+mPP5c67H5Ya6shmdB+ac0sDNQ1hcGnM7NodeBA91
15oulbq2tpIGUYO8Au2kdQ1zQ25AI4ZuFyOIBC6IRsu45W3dxNuK8iGJtrRsGXUWaNFqHOWmnxuo
p66sg3aKQxyxRwtE1nOzgau00F7668FIel5bTRSSUbInSjM0SVIa3LkLtXW46EW+xdNkbmzZRm7b
LFJSwSvjfJExzoySwkXy/Yg0mL9IXUu7RUzA2SoEcl5XBpDXPa0gN/WdqbjqVmG4tLXVM8WwAZCP
SkzWJOYgAN+wcbraFjXEFzQS3gSOC+gAcAAg52DpDUiiZK6lExMEUznCQM9KR1msAt1dZVeD4vJi
Mj2S0mwc0ZhaQPBs5zD1C2rT+632LZw08UEQiijaxg1DRw43/wBSsdVh9PXMaypjzNabizi3/QoN
ZWdI20lfJRmlkfIwhujhrmAyd45h/wCpWGDpO6oildFSte9pjyNbOD9N+QB5t6DhxI1W9igjhiZG
xtmsAAvrYDhqV7axjb5WgXNzYcT2oOaw/pDU1MUJfGGyCrFPIDxeCXC4Hqiwseux4Kk43V/LDKTd
RsHVhp9vcWsIi+1r3vccbWW5fTxSSRvcxpdGbsJHA2I/5KyWHYO1CWtwbETiMdTnlp5HwzujOwNw
AOF9TqtosbI2R3yMa2/GwtdZEEuJfVtR9wrPn/uu+CwYl9W1H3CqkElIA2WrAFhtv4GqtSUl9rV3
Nztv4GqtAREQaSDB54MQqaiKdsUU+b803PZxcQS4gusHWBtYDjrdRx9HKyGanmZVU5mpYxDCDCcj
mBrm3eM1y70urT4rp0QS0FKKDD6elDswhjDM1rXsOxT0VJFJTZ3bS5e+9pHD9Y9QK2Slw7+iD77/
APcUH3cYP2viv803GD9r4r/NUogm3GD9r4r/ADTcYP2viv8ANUogm3GD9r4r/NNxg/a+K/zVKIJt
xg/a+K/zTcYP2viv81SiCbcYP2viv803GD9r4r/NUogm3GD9r4r/ADTcYP2viv8ANUogm3GD9r4r
/NNxg/a+K/zVKIJtxg/a+K/zTcYP2viv81SiCbcYP2viv803GEe18V/mqUQair6NYVXEuqKRrnn9
YuOYfvute/olKw2o8axGnjHBm0zAfYumRSkNx8TFEUro5c9FcSvp0jr7e/8A/K8Hori2tuklX7rg
/wAy6tEovFxWjaHJfkrjX9pKjuu/mT8lca/tJUd138y62yJTucWbRtDkvyVxr+0lR3XfzJ+SuNf2
kqO67+ZdaiU7nFm0bQ5L8lca/tJUd138yfkrjX9pKjuu/mXWolO5xZtG0OS/JXGv7SVHdd/Mn5K4
1/aSo7rv5l1qJTucWbRtDkvyVxr+0lR3XfzJ+SuNf2kqO67+ZdaiU7nFm0bQ5L8lca/tJUd138yf
krjX9pKjuu/mXWolO5xZtG0OS/JXGv7SVHdd/Mn5K41/aSo7rv5l1qWSnc4s2jaHKjorit/S6R1l
vcD5r0OiuJfrdI6/93/5XUIlDi4rRtDVYbgzqOncyqramrcXXD5HuBA7NCrW0ULHBw2lwbi8rj/y
qEVc5ms1kUtY+qYxu6RRyOJ9LO7LYKtfFJisUGs2+L8pS+MfJBPi99aSlt/jHyWzRY4c+qfCUc2/
FK2HEK6MvfK2NzXMyRejE3MAQfRvexJ4m44WWKg6RYjV1tFE6mhMM9y6UZ2aXIAAI+kAASD2rql8
XSFaCoxHEoq6thiZDJaWJlO0xvGVrgLucRxAN+Cik6TYlT08BqKWGKWb0m3bIQBkLstgLl1xb94X
WLwWNc4OLQXN4EjUIOfxnF6+N9JBTQuidO2N7iWOc65e0OYLCwIBJN+pWYZW11TWTsniDIIhYOcD
neS4+4CwAHxW4RByBxfFI6dz8RzU8e6Me18Ee0cZC+2oLLNPDTUDiukw+SSXD6eSV7ZJHRtLnMFg
421IVaICIiAiIgIiIJcS+raj7hWfZs9UfBYMS+raj7hWez+0fD/tBPSG8tWdf03X9xqrUtL+mq/8
b+BqqQEREHN0mE1lNij59jEHXlzTtk9KYPcC24t+qO3s0UEfRytYYy+hpnxxtayanMvo1Tw1w2p0
te7gddfgF2aIJMNp5KXDaeCZ+eSKNrXOBJuQPevMdLNE0tiqrMzEgGMG1zf/AJVq8lwbbMQLmwv2
oJthVc2PCCbCq5seEFrPl90VbIyalkNMJWRMnis5pzaXJv6xtlFyLXK3yCTYVXNjwgmwqubHhBUu
cGtLnEAAXJPUtFWdKKeGg3uljNVE2XZPIcGWOnDNxuDcdRHXwuG02FVzY8IJsKrmx4QWWCZs8DJW
hwa9ocA5pabHtB4LMgk2FVzY8IJsKrmx4QUGIYpOIJJsNNPUMpXE1IzZnDKfSYAODrX49nDVbaKV
k0TZGODmPAc0jrB4IMGwqubHhBNhVc2PCCrWtxWpqoKV3yeyGWpsXCORx1AHUBqb6D96DPsKrmx4
QTYVXNjwgseF4gMSpNsI3xOa4sex9jlcOIuNCPeFegk2FVzY8IJsKrmx4QU+J4xDhrXBwfNK1m1d
DDZ0gj4F4bxIB7EwnFmYtHKWMyOicGuDXh7TcAghw0IsUFGwqubHhBNhVc2PCCrUtRUGNskcGWWo
EZe2HOGl3UPsF+tB82FVzY8IJsKrmx4QUuGYpvUstLU7NldA4iSONxcLaWcOwG44+9bVBJsKrmx4
QTYVXNjwgvtRVw0oZtngOkeGxt4l7uwD/wD3atXhGPS4hVGnqKQwlzDJE8XsbGzmm4BuLjUXBvoU
Gz2FVzY8IJsKrmx4QVaw1NTDRwOmqJGxRN4ucbAIMWwqubHhBNhVc2PCC10GNg17GVAgZDUtLqSS
ObOZLOAtoOJuDpfTjwW8QSbCq5seEE2FVzY8IKkkDiQOrVaifHGUlW5tVHkoy4Rsq2vDmmTra4DV
pvoO06dlwu2FVzY8IJsKrmx4QVa8khoJJAA1JKCbYVXNjwgmwqubHhBaep6WUsJvBG6oicXZZmva
GOy/SAcT9IdTeviNFvoZWzwxysvkkaHNuLGxF0GHYVXNjwgmwqubHhBVrQYn0h2E4p8OZHVztJzs
BJII4N0Btc6ZjoCNUG02FVzY8IJsKrmx4QX3D6xmIUENVG1zWytDg13Ee5VIJNhVc2PCCbCq5seE
FgxKoqo4msw9lPJUvzFgmksNOOg1PZp26rPh9ZHiFDDVRfQlaHWPEHrB94On7kDYVXNjwgmwqubH
hBVrWYjisNA7ZgbepLc7aaNw2j2jiWg8Ta+nXZBRsKrmx4QXpkNQHguqczQdRswLqDBccZjAlyxZ
HMDXei8PBDr21HBwsbtOoW4QfFDiLMRkjZ8my00b7+kZ2FwI91ir0SNBoNh0m5zDPBf5oIOk19av
DLf4L/Nb5Fc3Zauac/E4q+u2bauVhcxzXEEBnpC7WtvZ2lzcH3FeMPrsdlrKJssdqeQEyukpnMdx
PokC4aQMuvAkldSvikI5+Z2Ltr62OnkcWSSxCEuhBZEwgB5BvqRroVFLimOwQU7JmASzel+bpS4g
5CcuXN6wGvv/AHrrUQc5jE2LvdSQwxSMa8RukMTM3pZ25ml1/RAF9etWYY7EXVc+9+hA3SNpbq4l
x1zX7LaLcIg5C2OtpJjVyTk7gNnu0ZziXNwOpu7hci2i6ekkMtJE9zXtc5gJD25XA26x1KhEBERA
REQEREEuJfVtR9wrPnHqu+CwYl9W1H3CqkElIA2WrA4bb+BqrUlJfa1d7X23V9xqrQEREBEXzq7U
GGeoipYtrNIGMzBtz2k2A+JXG1mMz43NPDFBHJSuprsp5Mzi91+ALNQ/6PWCzjrfT7Jic3SIVkUT
WSB0LGyYZUMLnNu7Q+iQMrvXv6NuC6iiw5lKGOe5000bSxskhu4NJvb39WvE2F0EmDYBHhgLpHbW
Q5cuZjRkDQQOHF1jYu4nRbeSRkMbpJXtaxou5zjYALzNNHTQSTTODY42l7nHqAFyVyuI4rLie+Rs
gE1LEI/zO0MUzJLgjSxOY+iW/q9qD3iOOisnqqKGWqpp6cO2TWtH/kSellabg2BLTYH6QIW3w6nE
5dXTU76eSpjYJKd9iPRvlJHU6x4e4dixUGAQ0tZLVzZpZTJeLPI5+zbb+8dTxPuJNluibAk8Ag+E
gAkmwC57E8XNS6SmpJZoGte2M1ceUtD3NuwHiQ0kt9KxB4KTF8dGJQNhwtm+RPLo6ilDSJJWubdp
af1QfWOnbZV4f0dhFYK6qbI8mOMMZM9zngjW7uq9z9ECwtdB6wnD5qiWKuqg6nqIy5kmxaY21Qvo
57TqNbmx117DZb8AAWAsAvS53F8ZfJTTRYYS+eF7TI10D3CSPNldltqddCW3sgyYlj9O1ktHTOnf
UyteyN9O0Ps4A5rG9szeJbx7AVq8MwmsxeqpMQrnNiihYx8TogLv7Mr75strfSsTmcCFscOwaCrp
3Pq8PbT087GF9DKA7ZSMJAcCNNRbh2Bb5rQxoa0ANAsABYAIEcbImBkbWtaOAaLAKHFMRGHQsIEc
kj3hrYTIGvkHWGA/Sd7utY8VxKehybvSbybgvY19n5bgei2xJOvuGnFaSkwypxvE9+qamV1GGl0E
gyscb2uALaAG/HUEAg6lBjgoajpLiwqKsuFNCM0U8DTE4m4IaCdbA3vwOhDhrZddBBFTR5II2Rsu
TlY0AXOpNgsjWhrQGjRa6txeCmn3UGR1S9jixsbb+llJDbnQONjYHjZBlra11LFeGnkqZb/o4yAQ
LE3JJ0Gh/foufEVbi3SOOtjBZDEwGmmaGkNa5oJDxe5PVlPaCCNb4cHZV4lUxVUTKeKrjcW1VVlc
RMxwHo2NvTGUAtOg4jsXU0OH02HU4go4mxRAk5WjiT1k9aDIyCKN8jo42NfIbvc1oBcbWue3ReKu
oNPAXsjdNIPoxsIu7W3XwGup6lixTEmYXQuqZGuLQQLNFzr124n7BquUon4jimINeIad1dHI2RtZ
clrY8ouBYWLTmdax1trqLoLadsWO1cVSTLV08pInp5xl3Y2zRkN004tJF82brC3mGYZDhsGSMNz3
JLg0N4kmwA4NudAs9PSx02ctF5JDmkf1vPb/ANcAvlbX0+G0xqKyQRQg2dI4HK33k9Q95QUucGtL
nEADUk9S4/FqibHsRiiwiV73wayQSuMTRqC2T1uogFvWRfQpXVFXjGKSQ0oqN1cYmujdGRlIObOc
w9EjT0SLPB7eHQ4dhjKEySutJVTEulmy2Lj7h1D3e7rQY8LweDC4i1rGF20fIz0f0ea1w29zra57
TcrZOc1gu4gDhqsVVUx0dLLPKXCONpc4hpJsOwDUrnMRr6XGq2HD3wbWkmjzRVDXG5J0uwWIJHA9
bdTogwYvic+JVApIqaRhbmbJTyC5e0gEPaAQHOaP1MwIvfqWy6PYG7DaZslWWGZ7GBzBG0Bhbe17
fSdqRm4nRWYfhzoIopK1xnqow4Ne5xdkaTewJ4kCwzWubLaIC5zFJ58QM1Ewz0JDXOjkka3JPYhp
uNTa5+jYZgVFjmPb7Ruiods2WKbZvMUlpWO1ALQLhwIvx0PDQ8NhhOACIRS4k2OSWF5fBGHOc2C4
ANsxJN7X14E6IMuFYe6WOSorYGNdOWuMBj9EOYSGvAN8pLQ3Tqst1wC+rnOlOJQxUYon5jvLtk6R
kgbsTYOvc6XtqAeNj9hDxiuKyYjRVMWEuZJGz0Kh4cWOAP6zHGwsBc5ibejZYsAwiWohpKuqleY2
l0rI3Mb6Ze30ndrQ65JZqL8DZbPDKB7hHUVbw+XY7AuaLNmjvdrnNI0dx06rlbhB4a1rGhrQGtAs
ABYALT4pjUFK51I11QJ5WnZugiznS+Yt6iWgajiNNCo8Z6RyMimGFNErqY5p3OFhl1F2kkXFwQXC
+VTYL0ep6lrJ5GOdSSR5XRSkXc5rvQcMoANgD6fFwdrogxYdgm/Yi+cGZsDZWyCpe1pNQNHscw8W
nUguFr8Dc6rsmNaxtmNDR2AWRjGxsDGNDWtFgALABavGcSfRRhrIZBG6zZakWAgDjlDtfpEEg27N
UHvEMTbSwuMTZJcjskjom59j6N8zhxsNNBrqtBR0c2Oxuhqi+VuUPFQ8NcGSDS7HNIDwQ5xbfVv+
SrwnB62j6Q1E753uYWhr5Xgkyi5ytJPEgW9IAdmvV0NLSwUVOyCliZFEzRrGCwCBBAyCPLEAATcm
2rj1k9pPas6IgIiICIiAiIgIiICIiAiIgIiICIiAiIglxL6tqPuFZ9m3sWDEvq2o+4Vns/tb8EGC
kN5asj238DVUpaX9NV/438DVUgIiixGsGH0UtSWl4jAOQGxdraw9/YOsoK3ODGlzuAFyuWqMaqcS
dC+hpHy0jSyZzL2fLFexc3qNtDa4cCLEarBUzVXSHFYIY4mvom3fqHtaOIIk4ekLdVnNdbQi5XTU
VDFQw7OK5ucznH6T3dbj7z1nrQfaOiio2HIyMPc5znvbGGlxJuSbKlzg1pc4gAC5J6lilqIoXRtl
e1hkOVgcbZja9h79FzVbiEuP1TqGjcRAGlk0MkWpJ4F4OuzIuLtNwePYgrm6QQzV1NTwnPDUF7Wy
ZbxyuAuGZrEWOo7bjhqtjRYXTUUpmghbC50YZs22DWAXNhb3k6r5R4ZDSQkOaJJXZXSPcAS8t+iT
pqRpra+gVcs0dO0Ome1jS4NBcbAk6AIMy0Nd0ipoKiGGGUZZJ2wvmDczGknhcaXvYEEgjNdYMRxe
StrG0WHSFpBImBiu4t4BzQbZmX+lY3tYhW4VgcFDS7OWNkjnMETgdQGDgzX6QHUTrZAo8DpYK817
INlM67tkCMjHEAOIsOJAC25Nhqvq08eIYZj8FXQv9IDPHNBKCxxaDYm3HL7wgjxDHZm4q+hpMkdR
T2eY6htm1bS2+WN4OjuPEdXC11TS0QxF9HXyiqhbGwmOCUlr/SIP5zU3sQCB1dawYFgtHTF1RHNJ
VBv5qJzyS3K03aQDpcEkZhYFdEgLmMf6SQwRy01HUU5qopWR1EUz3RHI7jld26jUXtqqscxyTBaq
kc6mM9NNmDhHcy5hawa39brNuOnuWWanp8QxSJzqMyNZH6crxZpBFw2xHp9vu+1BFg+FyfnGls7M
PkF2wz6PYS65YOsM0sQSb8RouhZG2NjWRtDWtFg0CwA7FkWuOL0YxV+HOlLKprWvDXggPB9U8CdO
A1QS9IMZbhkYga50VRURSbCZ0eaNrwBYOPVckcdFPhwq8Zo82JU8lO4SsfckjNlsWvYOLLkatOvE
LBS9HKOPGpYoqmV8EbtuabO5wY51wWuvcFpBOnH9y6djWsYGsADWiwA6gg9qPEMSpsMpTNVSNY39
UE2Lj2BY8UxSnwulM1Q62hsLE3+2wNh2nqXP4fR1ONTvkq3SmFsolDnSawvLeELm3a5mvA/56WDb
RZMew+IzNcGvO0BY7K+me23ok8cwN+r3H37Cho4sPpWU1O3LG2511JJNyT7ySSskMLKeFsTLhrRY
XNyftJ4la/HMYGEUgdZpnmJZAJLhhfYkBzuDRpxNkF9TURUlPJPM7LHG0uJ9wF/+Fz9PUVNTWGln
c+qFRAJWXiAjgzBwLXgGxbYt9Ekk/wCntrpsZqImSxSUtXQvZIHlwIs5pBDmi4uRe7SdAQQVu6Wi
pqKNzKSCOFjjmLY2hoJ/cgw4dhlPhcTo6ZhAcbuJcXE9guSTYcAOoKx72xsc95Aa0XJPUFDiuKQY
VSCadzQXuyRNc7KHvINm5uAvbidFqnVM2MxwwOgqKath2dSMwDWHWxu25JAN9DYniECPE66XEaa5
bLS1dnwGO7HMHpG5bxcy2W5NtTotrRYbFRzT1DWgT1BDpcpOXNbXKOrt7T1r3Q4ZSYfn3WnbFntm
y3t9gvwGp0GiscQ1pJIAAvcoPhe1pAc4Anhc8Vzs/SA1mIikw4NmjA9NzH5XuPHK08AbC/paOHAq
KuxWXHKFu70b3CFzJpImvyzBtz+cjuPSaRq1wNyRa3ELe4ZhMNCX1GYzVMwG0mcLEjjoP1R12HWg
84fglPQVJqWstLZzWAOJbE1xuQwHgCbEjt4Lboue6TOxCMU7qDbhtnh+ya52c2FmG2rb9T/1SPeg
nxnpG5tFLHRNeyXOYZHC20icb2LW/rXsSNRfgDdbPCaCaCBjqqSQnqidIXhnaMx1cNLjNqOCw4Lg
z6GaaadwmL/TjLwNpFm1ewkAAjML/aSt4gLUYti4oJY4I4ZZJ5WPeCxoOUN4kAkZiL3yjUi61mMd
JYd3O6zTQyU9QGTSCMlsJvYh4F9Nb2NrjUG4VGC4C6knlqqnL+dcHtp2nMxjh+vc8Xf3tCQdblBs
YqaOpqIK0teySJrmMykAPY63EdmgIHELYry5wa0ucQABck9S0uP4rLh9NTTUhjcZZLF0jg1hblJ+
mdAezqJ060HvEsep6GlmkjLpXxuMbgxpcI3D1gNQNRw1I4ArBg8dVX0hlr3MkiqGAPvGAZBYgt00
Ldbhw4jipMMwt+I1L6vEoWywzsbNG+xZnBH0JGEm1jZw42ubG2i6kANAAFgOACA0BrQALACwXpEQ
EREBERAREQEREBERAREQEREBERAREQEREEuJfVtR9wrPnHv7pWDEvq2o+4VUgkpABLVge2/gaq1J
SX2tXe19t1fcas0zXvgkbE7I9zSGvtfKbaGyDFWOnbSvNKxjpuDQ8nLx4m2unGwXPUc1TiDnRVVP
K+CRwjrKWU5jC5wuHscDfLwu06t0OltfdHBVnE8zM9JVPdevjkzPimba2eI8AeA4iw4g2C6CCmjp
ogyJgaBr7ye0nrPvKDxR0cNFBs4GkAuLnFxLnOceJJOpPvK8YhiFPh0LX1EzIhI/Zsc++XMQbXtw
GnFZn1EYlNOyWMVJYXtjc7W3C9uNrrT0kuJOrKjDqzYVLS0uExboG6Ate0aa3dbW9hqgw18MuOZa
CpYyCrpnCbZPJdDO3gHNIsdDYjgWm3uK2+GYZFh0LgPzk7wDLO4AOld2myYfhdPhtLHBAHkRAhrp
HFzhfjqerQacNAqXTxslZG6RjXvvlaXAF1uNh1oMVZWw0MO2qHuDb5QGsLnOPYAAST9i0dVMcdpB
h8uzjdOBNCbl0NXGNS2+hGh1HEcdVRHWYrBippZ2wztnBdG9gtsSAeI623sLkg3PBWYZhMOH07Yy
58zmuLg6U3LTro3sABI0QeMJwaPD2iSY7asLbPmJJNupoJ7BYX4kAXW2REGoxWTEaSRtZSgVEEbQ
JKRrPTkueLXdo00Oh14L1R4PSxzS1ctNHvNRmLiW3c1ruLL3OnbbQnVbVEHhrQxoa0ANAsABYALD
WUcVdSSU84cY5BZwa4tJHZcaqlEGqw+iq4C4VdRt44nkU51z5LW9M8HH93V2raoiCDEm1xp2nDXw
sma7MRKCWvaAfR04X016lBBRQY1LT4nW0LonsA2cc30mOaSQ4AG3bY2vY+9b5EGGGCOHOIo2sD3F
7sotdx4k+9JzIyCQwNa+UNJY1xsCbaAnqCzIg5bDsLq8REkmKSTlkjrvicXM1HBuW/olpGjmmzgd
V0kMMcELIoWNZGxoa1rRYADgFlUtdve6u3DYbxcZdtfJa+t7a8LoPD8SpYsQjoZJmtqZGGRkZ0zN
BsbHh+5aOr6PmXGnNGIzbCd+8mnfJnLXAi9muBGQ6gjS1+sGyzGjpelDopa2kmjbTl0ckb3FoLwR
axH0gCCQQeP71vI6aOKaSVjQJJbZ3dZsLBB9p6eKlgbDAwMjYLBo6gvElbTxVkVLJPG2omDnRxud
ZzwLXsOu1wlaaltJIaJkb6i3oNkcWtJ95C0M9PS9LNlHURTxPpXuZUta7K6N1r5Q8DXUA3aR1dtk
HnFMErKrE3RsxNwpqohwilyvETmWPotI1abagEWv1gre0lDBQwtipow1gFu02HAXOunAdgX2Oiii
qTUWL5iwMzvNyGjqHZ2m3FeMUxCPCqB9XLHLIxhaHNibmdqQL2917oKpJWQsL5HtY0dbjYLlG4lX
VVdJNh73SPu9zYC4ek1hsY5GfqOOuVwt1ByUtbVdIIXUVVTCSN13if0gA5rrte0gWt2WOYFuo4rp
6emZAy4AMjgBJIQA6QgWubdaDBQ4ZSUOZ1LT7IvGoJJyj1Rc6D3DRXoiAiLBU1DKSllqJiRHEwvd
YXNgLlBnXOy4tWPqHmCIxlrQ9lNMW/8AksJOrHDVr9Dob9XDiPtdXjEYWRUcrJYy/ZVdOxw2uVzS
LBw0BHH32IBVVBgsVJLHPUP3ioiZsopHRtbs2dgA0+0oMWG4JRxuFXFtXxyRERxSgARsecxba1yL
9Tr26luPQij6msaPsAAXyWVkMT5JHBrGNLnOPUBxK19bBTY/g1oakbGUCSKWMhzbjUEg6OF+IOh4
FBNU11RiDaoUdRFSCkmDC6WzhKbfRc3qacw1Buer3sFopf07qXc6eoaTLRPOYMeDo5o4C+tx9hsD
dYej+A00NJT1E5iqpGNAjkFnNbYnVpsDbrAN8vUV0iAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIg
IiICIiCXEvq2o+4VnyN9/wASsGJfVtR9wrP6f91BPSEOlqyOG2/gaq1LS/pqv/G/gaqkBERBzVZg
9RLV7J4eQX5qaviI21NrctN+LdSBxFjYjTXfxQtgjyN+0nrcesntJWZEBc7imGTyVUmeI1MEhzQz
N/TUUhtq3UEtuAdDcaixB06JEE1JTbtCA55klIG0lcAHSEC1zbRUoiAiIgIiICIiAiIgIiICIiAi
IgIiIC8gBvAAdei9LW4tXuoaQPvka85DMRdsJI9Fzh2Xtfsug9Yhi1LhRp97LmNneWB+UlrTa93H
qGnErU4xgtDiGIxTipdHNVs2LxE915o7HUZTpa/Hh29SyR09RioNBi1O2VtO9rjUNbaKpaR1C9wS
D6Q1b1a3W5hoqenDNjCxmRgjaWjgwcG/Z7kH2npo6WIRxiw4k21cesntJ6yqERARFHX4hDQU7pZB
I/La7ImF77E2vlGtkFi47GIcUxDFI6SakbaGcTUs8MhYdmfRde4ILgHag8ewi6rr6apxLEqLEMEr
2xl0J9Mlz43MuD9EaG9yLmxHVwIW7ZBLvj5pJ3FlsscTdGtHWT2n/RBLhODU+ERARNJkyNjLrmwa
L2DQScrbkmw4XWxfKyIAyOa0EhoJNrk8Asi0eNUT5pGvkpt+o3NyzUxtcEXIey/WLnS/YRqEHjEc
QxGjxyKJlE6ropY2hzWM9JhzEOdmOhABHo8TfS+qpgwWESVT5m6VX6SBrzsh2kN01Olz1/6+8Kop
KSmaameSpl1DZJW2c1hNw09ZtpqdSVs0HlrQ1oa0AACwA6l6REBERAREQEREBERAREQEREBERARE
QEREBERAREQEREEuJfVtR9wrPnb2n4FYMS+raj7hVSCSkFpasa/puv7jVWoGx1YmnfA6DK9+azwb
g5QOr7F6+cPWpe67zQWoovnD1qXuu80+cPWpe67zQWoovnD1qXuu80Lq8C+am7rvNBaii+cPWpe6
7zT5w9al7rvNBaii+cPWpe67zT5w9al7rvNBaii+cPWpe67zS9fmIzU2n913mgtRRfOHrUvdd5p8
4etS913mgtRRfOHrUvdd5p84etS913mgtRQk14aTmptNfou819+cPWpe67zQWoovnD1qXuu80+cP
Wpe67zQWoovnD1qXuu80+cPWpe67zQWooc1fmtmpuF/ou819+cPWpe67zQWoovnD1qXuu80+cPWp
e67zQWrw5rXtLXAOaRYgi4IUvzh61L3XeafOHrUvdd5oMtLSQUUIhpo2xRAkhjeAv2DqVChaa9zQ
c1NqL/Rd5r784etS913mgtRRfOHrUvdd5p84etS913mgtWtxHDpKmWOppZjBWQ3DJMt2uaeLHDra
bD3g6hZfnD1qXuu818zV+YDNTa/3XeaBhuHxUED9nDFFLM8yzbO9nPPE66q5RfOHrUvdd5p84etS
913mgtRRfOHrUvdd5p84etS913mgtRRfOHrUvdd5oDXkXzU3dd5oLUUXzh61L3XeafOHrUvdd5oL
UUXzh61L3XeafOHrUvdd5oLUURNeCPSptTb6LvNPnD1qXuu80FqKL5w9al7rvNPnD1qXuu80FqKL
5w9al7rvNPnD1qXuu80FqKEOrzf0qbQ2+i7zX35w9al7rvNBaii+cPWpe67zT5w9al7rvNBaii+c
PWpe67zQmvA+lTcbfRd5oLUUXzh61L3XeafOHrUvdd5oLUUXzh61L3XeafOHrUvdd5oLUUXzh61L
3Xea+B1eSRmptP7rvNBcii+cPWpe67zT5w9al7rvNBaii+cPWpe67zT5w9al7rvNB7xL6tqPuFZ8
g7Xd4qGoirZ4JI3Ppg1wsSGuvb4q30/Vb3v+kH//2Q==

--_011_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_--

--_012_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Build Performance Comparison 1.4.1.xlsx"
Content-Description: Build Performance Comparison 1.4.1.xlsx
Content-Disposition: attachment;
	filename="Build Performance Comparison 1.4.1.xlsx"; size=29127;
	creation-date="Wed, 19 Jun 2013 11:52:09 GMT";
	modification-date="Wed, 19 Jun 2013 11:57:18 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQCvffoqrAEAAHwIAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
lt9OwjAUxu9NfIelt4YV0BhjGF7451JNwAco64E1bG3Tc1R4e8/KNMYgZIxEb9Zt7fl+32nXno1u
VlWZvEFA42wmBmlfJGBzp41dZOJl+tC7EgmSslqVzkIm1oDiZnx6MpquPWDC0RYzURD5aykxL6BS
mDoPlnvmLlSK+DEspFf5Ui1ADvv9S5k7S2CpR7WGGI/uYK5eS0ruV/x642RmrEhuN+NqVCaU96XJ
FbFR+Wb1D0jPzecmB+3y14qlU/QBlMYCgKoy9cEwMUyAiBNDIbcyA5TYDtpklXJkNIaF8XjGqf9C
qHt+z6qJe+LlCEZD8qwCPaqKc5erUr67sJw5t0x3i7SdmjhFaaWM/fS9gx8Ho4zN4MhG6vyicEsf
w3/i4/yPfBDvOZDx2n1JosyeBUBal4BHznYjuo9cqAB6QrybF0c38F17jw8d1HttQTY33ee9EdrD
zdkjoYzN0Zh8PEbBFuzuW67J9wB29212OPui80ffgs2l7Dk4z8vtArQHf5amOrrnWQgCGfgqTtsO
+S8il9r2wB8FGOparkFvYcv47zD+AAAA//8DAFBLAwQUAAYACAAAACEAtVUwI/UAAABMAgAACwAI
Al9yZWxzLy5yZWxzIKIEAiigAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAIySz07DMAzG70i8Q+T76m5ICKGlu0xIuyFUHsAk7h+1jaMkQPf2
hAOCSmPb0fbnzz9b3u7maVQfHGIvTsO6KEGxM2J712p4rZ9WD6BiImdpFMcajhxhV93ebF94pJSb
Ytf7qLKLixq6lPwjYjQdTxQL8exypZEwUcphaNGTGahl3JTlPYa/HlAtPNXBaggHeweqPvo8+bK3
NE1veC/mfWKXToxAnhM7y3blQ2YLqc/bqJpCy0mDFfOc0xHJ+yJjA54m2lxP9P+2OHEiS4nQSODz
PN+Kc0Dr64Eun2ip+L3OPOKnhOFNZPhhwcUPVF8AAAD//wMAUEsDBBQABgAIAAAAIQDeCf0oAgEA
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
ofVTeXk9do7rY3n6tP0LHk2BUVenLTzhIp9guuseq9PltN5eoLOb7eNd9zR7lJYr1WOpsrPebZ8P
f24vL2ikfjToTT+Tdf83AAAA//8DAFBLAwQUAAYACAAAACEAO20yS8EAAABCAQAAIwAAAHhsL3dv
cmtzaGVldHMvX3JlbHMvc2hlZXQyLnhtbC5yZWxzhI/BisIwFEX3A/5DeHuT1oUMQ1M3IrhV5wNi
+toG25eQ9xT9e7McZcDl5XDP5Tab+zypG2YOkSzUugKF5GMXaLDwe9otv0GxOOrcFAktPJBh0y6+
mgNOTkqJx5BYFQuxhVEk/RjDfsTZsY4JqZA+5tlJiXkwyfmLG9Csqmpt8l8HtC9Ote8s5H1Xgzo9
Uln+7I59Hzxuo7/OSPLPhEk5kGA+okg5yEXt8oBiQet39p5rfQ4Epm3My/P2CQAA//8DAFBLAwQU
AAYACAAAACEAFa+qPL0AAAArAQAAIwAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQzLnhtbC5y
ZWxzhI/NCsIwEITvgu8Q9m7SehCRpl5E8Cr1AZZk+4NtErLxp29vLoKC4G1nl/1mpto/p1HcKfLg
nYZSFiDIGW8H12m4NMfVFgQndBZH70jDTAz7ermozjRiyk/cD4FFpjjW0KcUdkqx6WlClj6Qy5fW
xwlTlrFTAc0VO1Lrotio+MmA+ospTlZDPNkSRDOH7Pyf7dt2MHTw5jaRSz8slI34yM0yEmNHSYOU
7x2/h1LmyKDqSn1VrF8AAAD//wMAUEsDBBQABgAIAAAAIQAdpR2l0wAAAL0CAAAjAAAAeGwvZHJh
d2luZ3MvX3JlbHMvZHJhd2luZzEueG1sLnJlbHO8ks2qAjEMRveC71Cyt50ZRUSm40YuuL3oA4RO
5gdn2tL0ir79LYigILqbVUhCzncWKXfXcRAXCtw7qyGXGQiyxtW9bTWcjj+LDQiOaGscnCUNN2LY
VfNZ+UsDxnTEXe9ZJIplDV2MfqsUm45GZOk82bRpXBgxpja0yqM5Y0uqyLK1Cs8MqF6Y4lBrCId6
CeJ48yn5O9s1TW9o78zfSDa+iVCmwxATEENLUYOU9wnfy1ImWVDvPYrpPIpPHvl0Hvknj9V0HquH
h3p5uuofAAD//wMAUEsDBBQABgAIAAAAIQDi28OlSQsAADAwAAAYAAAAeGwvd29ya3NoZWV0cy9z
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

--_012_1FFB62CE8AEB0D4298B51122D8903E9619F05B73IRSMSX104gercor_--
