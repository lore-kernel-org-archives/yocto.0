Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56C8DE01482
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 06:48:39 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jul 2013 06:48:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,778,1367996400"; 
	d="xml'?bin'?scan'208,72,48,145,147,150,217?rels'208,72,48,145,147,150,217?jpg'208,72,48,145,147,150,217,145?gif'208,72,48,145,147,150,217,145,147?xlsx'208,72,48,145,147,150,217,145,147,72,48?png'208,72,48,145,147,150,217,145,147,72,48,150";
	a="378372753"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jul 2013 06:47:50 -0700
Received: from irsmsx105.ger.corp.intel.com (163.33.3.28) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 30 Jul 2013 14:47:32 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.157]) by
	IRSMSX105.ger.corp.intel.com ([169.254.7.64]) with mapi id
	14.03.0123.003; Tue, 30 Jul 2013 14:47:31 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Full Pass Report for 1.5_M3 - 2013-07-24-2 build
Thread-Index: Ac6NK1UmhXQCjmncRh6WiELWLEyWgg==
Date: Tue, 30 Jul 2013 13:47:31 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F22726@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Yocto Full Pass Report for 1.5_M3 - 2013-07-24-2 build
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
X-List-Received-Date: Tue, 30 Jul 2013 13:48:44 -0000
X-Groupsio-MsgNum: 15243
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_009_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_"

--_009_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_
Content-Type: multipart/related;
	boundary="_008_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_";
	type="multipart/alternative"

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the Full pass for Yocto Project 1.5 M3.


Known issues:

- nightly-arm appears to have a hung bitbake process due to a timed out san=
ity test.

- nightly-qa-systemd sanity tests failed to start qemu

Issue Summary

-          Because of a hang issue for bitbake process on autobuilder, the =
beagleboard and arm toolchain did not build out in this build, reported as =
bug 4904.

-          Sudoku failed to compile on qemux86 and qemux86-64 images: 4952<=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4952>, 4953<https://bug=
zilla.yoctoproject.org/show_bug.cgi?id=3D4953>.

-          X cannot start because of the read-only file system: 4940<https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D4940>


Testing data

 Test type: Full Pass

 Branch: master

 Milestone: M3

 Build name: 2013-07-24-2

 poky commit: 67864ca79da08df752487a3a4e1a975546da123d

 poky commit date:  Fri Jul 19 16:53:25 2013 +0500

 Eclipse Plugin commit: 76df60597ae7cce069a5f1fd45089ea04c7394cd

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20130724-2



 Distributions tested: Ubuntu 13.04 64bit, Ubuntu 12.04 64bit, Fedora 17 64=
bit, Fedora 18 64bit, Fedora 18 32bit, Opensuse 12.2, 12.3 64bit

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

942<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D942> 962<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D962>

ADT: master branch

Fedora 18 i686

87.1%

4849<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4849>

0.0%

none

12.9%

4904<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4904>4849<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4849>

100.0%

943<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D943> 963<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D963>

ADT: master branch

Ubuntu 13.04 x86_64

87.1%

4849<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4849>

0.0%

none

12.9%

4904<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4904>4849<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4849>

100.0%

951<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D951>

BSP/QEMU: master branch

Atom PC

97.2%

none

2.8%

4940<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4940>4005<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

0.0%

none

100.0%

949<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D949> 950<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D950>

BSP/QEMU: master branch

Beagleboard

0.0%

none

1.4%

4904<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4904>

98.6%

4904<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4904>

100.0%

937<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D937> 959<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D959>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

925<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D925>

BSP/QEMU: master branch

P1022ds

100.0%

4910<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4910>

0.0%

none

0.0%

none

100.0%

938<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D938> 956<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D956>

BSP/QEMU: master branch

qemu-x86

98.1%

none

1.9%

4952<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4952>

0.0%

none

100.0%

931<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D931> 940<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D940>955<https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D955>

BSP/QEMU: master branch

qemuarm

97.6%

none

2.4%

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

0.0%

none

100.0%

933<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D933> 934<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D934>960<https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D960> 934<https://bugzilla.y=
octoproject.org/tr_show_run.cgi?run_id=3D934>960<https://bugzilla.yoctoproj=
ect.org/tr_show_run.cgi?run_id=3D960>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

932<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D932>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

939<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D939> 957<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D957>

BSP/QEMU: master branch

qemux86-64

98.1%

none

1.9%

4953<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4953>

0.0%

none

100.0%

936<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D936> 958<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D958>

BSP/QEMU: master branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

930<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D930> 941<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D941>

Eclipse Plugin: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

944<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D944> 948<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D948>

Meta-yocto: master branch

Ubuntu 13.04 x86-64

85.7%

none

14.3%

4938<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4938>4940<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4940>3908<https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D3908>

0.0%

none

100.0%

946<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D946> 947<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D947>

Hob: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

929<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D929> 945<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D945>

OE-Core: master branch

Multiple environments

95.2%

none

4.8%

4529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529>4863<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4863>

0.0%

none

100.0%

928<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D928>

BitBake: master branch

Fedora 18 X86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

926<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D926>

BitBake: master branch

Ubuntu 12.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

964<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D964>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 19



Test Case Status Report

Status

Count

BLOCKED

98

FAILED

12

PASSED

871

Total: 981


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:98,12,871&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(98)+10%25|FAILED(12)+1=
%25|PASSED(871)+89%25]



Bug Status Report

[Bug Status]

ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW30_-_2013-07-24-2_-_F=
ull_Pass_Yocto_1.5_M3>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW30_-_2013-07-24=
-2_-_Full_Pass_Yocto_1.5_M3>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW30_-_2013-07-24-2=
_-_Full_Pass_Yocto_1.5_M3>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW30_-_2013-07-=
24-2_-_Full_Pass_Yocto_1.5_M3>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW30_-_2013-07-2=
4-2_-_Full_Pass_Yocto_1.5_M3>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW30_-_2013-07=
-24-2_-_Full_Pass_Yocto_1.5_M3>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW30_-_2013-07-24-=
2_-_Full_Pass_Yocto_1.5_M3>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW30_-_20=
13-07-24-2_-_Full_Pass_Yocto_1.5_M3>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW30_-_2013-07-=
24-2_-_Full_Pass_Yocto_1.5_M3>

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

Medium+

IN PROGRESS REVIEW

948<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D948>

Kernel panic on qemux86-64 when using runqemu kvm and cpu host

1.4

1.5 M2

155

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

951<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D951>

dmesg log errors in Atom-PC

1.3.1

1.5

135

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

Undecided

RESOLVED

FIXED

940<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D940> 931<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D931>

start qemuarm with "core-image-sato", use "dmesg | grep -i error" shows 2 e=
rrors

1.4

---

131

4529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529>

Medium

NEW

929<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D929>

x32 build fails with gmp_5.1.1 do_configure

1.5

1.5

63

4849<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4849>

Medium

RESOLVED

FIXED

943<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D943> 942<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D942>

Some error messages when install toolchain sdk

1.5

1.5

9

4863<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4863>

Medium+

NEW

929<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D929>

systemd failed proc-sys-fs-binfmt_misc.mount service

1.5

1.5 M3

7 (Recent)

4904<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4904>

Medium

ACCEPTED

949<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D949> 942<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D942> 950<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D950> 943<https://bugzilla.=
yoctoproject.org/tr_show_run.cgi?run_id=3D943> 963<https://bugzilla.yoctopr=
oject.org/tr_show_run.cgi?run_id=3D963>962<https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D962>

Autobuilder built beagleboard 20130724-2 image failed

1.5

1.5 M3

NEW

4910<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4910>

Medium

ACCEPTED

925<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D925>

[p1022ds]urandom: segmentation fault

1.5

1.5

NEW

4938<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4938>

Undecided

RESOLVED

FIXED

944<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D944>

bitbake build failed when apply patch with cli "yocto-kernel patch add"

1.5

---

NEW

4940<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4940>

Undecided

RESOLVED

FIXED

944<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D944> 951<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D951>

XServer could not start with meta-intel layer, error msg is: "Read-only fil=
e system"

1.5

---

NEW

4952<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4952>

Undecided

NEW

956<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D956>

[Test Case 207] sudoku-savant project compile in sdk image

1.5

---

NEW

4953<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4953>

Undecided

NEW

957<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D957>

[Test Case 207] sudoku-savant project compile in sdk image

1.5

---

NEW

Total: 12




Here is the updated performance chart with the latest milestones including =
the current Full Pass. As you can see there are no big differences between =
the last milestones, and the trend is slowly going down which is a good thi=
ng for us. The xlsx file used to compile the data is attached. The data use=
d is populated from Performance_test wiki page: https://wiki.yoctoproject.o=
rg/wiki/Performance_Test.


[cid:image003.jpg@01CE8D28.71C9C560]


Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_
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
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
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
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:403066438;
	mso-list-type:hybrid;
	mso-list-template-ids:-1789110866 -560006628 67698691 67698693 67698689 67=
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
<p class=3D"MsoNormal">Here is the Full pass for Yocto Project 1.5 M3. <o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Known issues:<o:p></o:p></p>
<p class=3D"MsoPlainText">- nightly-arm appears to have a hung bitbake proc=
ess due to a timed out sanity test.<o:p></o:p></p>
<p class=3D"MsoPlainText">- nightly-qa-systemd sanity tests failed to start=
 qemu<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issue Summary<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Because of a hang issue for bitbake process on auto=
builder, the beagleboard and arm toolchain did not build out in this build,=
 reported as bug 4904.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Sudoku failed to compile on qemux86 and qemux86-64 =
images:
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4952">4952</=
a>, <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4953">
4953</a>.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>X cannot start because of the read-only file system=
: <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4940">
4940</a><br>
<br>
<o:p></o:p></p>
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
;word-spacing:0px"><span style=3D"color:black"> Test type: Full Pass<o:p></=
o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Milestone: M3<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 2013-07-24-2<o:p></o:p></span></=
pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 67864ca79da08df752487a3a4e1a975=
546da123d<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit date:&nbsp; Fri Jul 19 16:53:25 =
2013 &#43;0500<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit: 76df60597ae7cce069a5f=
1fd45089ea04c7394cd<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/nightly/20130724-2<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 13.04 64bit, Ub=
untu 12.04 64bit, Fedora 17 64bit, Fedora 18 64bit, Fedora 18 32bit, Opensu=
se 12.2, 12.3 64bit <o:p></o:p></span></pre>
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
g/tr_show_run.cgi?run_id=3D942"><span style=3D"color:#5A3696">942</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D962"><span style=3D"color:#5=
A3696">962</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4849"><span style=3D"color:#5A3696">4849</span></a><o:p=
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
<span style=3D"font-size:9.5pt">12.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4904"><span style=3D"color:#5A3696">4904</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4849"><span styl=
e=3D"color:#5A3696">4849</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D943"><span style=3D"color:#5A3696">943</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D963"><span style=3D"color:#5=
A3696">963</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4849"><span style=3D"color:#5A3696">4849</span></a><o:p=
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
<span style=3D"font-size:9.5pt">12.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4904"><span style=3D"color:#5A3696">4904</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4849"><span styl=
e=3D"color:#5A3696">4849</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D951"><span style=3D"color:#5A3696">951</span></a=
><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">97.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">2.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4940"><span style=3D"color:#5A3696">4940</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005"><span styl=
e=3D"color:#5A3696">4005</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D949"><span style=3D"color:#5A3696">949</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D950"><span style=3D"color:#5=
A3696">950</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
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
<span style=3D"font-size:9.5pt">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4904"><span style=3D"color:#5A3696">4904</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">98.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4904"><span style=3D"color:#5A3696">4904</span></a><o:p=
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D937"><span style=3D"color:#5A3696">937</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D959"><span style=3D"color:#5=
A3696">959</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D925"><span style=3D"color:#5A3696">925</span></a=
><o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4910"><span style=3D"color:#5A3696">4910</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D938"><span style=3D"color:#5A3696">938</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D956"><span style=3D"color:#5=
A3696">956</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">qemu-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">98.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4952"><span style=3D"color:#5A3696">4952</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D931"><span style=3D"color:#5A3696">931</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D940"><span style=3D"color:#5=
A3696">940</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D955"><span style=3D"color:#5A3696">955</span></a><o:p></o:p=
></span></p>
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
<span style=3D"font-size:9.5pt">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.6%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">2.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4024"><span style=3D"color:#5A3696">4024</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D933"><span style=3D"color:#5A3696">933</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D934"><span style=3D"color:#5=
A3696">934</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D960"><span style=3D"color:#5A3696">960</span></a><span clas=
s=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctop=
roject.org/tr_show_run.cgi?run_id=3D934"><span style=3D"color:#5A3696">934<=
/span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_=
id=3D960"><span style=3D"color:#5A3696">960</span></a><o:p></o:p></span></p=
>
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
g/tr_show_run.cgi?run_id=3D932"><span style=3D"color:#5A3696">932</span></a=
><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D939"><span style=3D"color:#5A3696">939</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D957"><span style=3D"color:#5=
A3696">957</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">98.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4953"><span style=3D"color:#5A3696">4953</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D936"><span style=3D"color:#5A3696">936</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D958"><span style=3D"color:#5=
A3696">958</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D930"><span style=3D"color:#5A3696">930</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D941"><span style=3D"color:#5=
A3696">941</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D944"><span style=3D"color:#5A3696">944</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D948"><span style=3D"color:#5=
A3696">948</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Ubuntu 13.04 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">85.7%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">14.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4938"><span style=3D"color:#5A3696">4938</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4940"><span styl=
e=3D"color:#5A3696">4940</span></a><a href=3D"https://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D3908"><span style=3D"color:#5A3696">3908</span></a><=
o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D946"><span style=3D"color:#5A3696">946</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D947"><span style=3D"color:#5=
A3696">947</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D929"><span style=3D"color:#5A3696">929</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D945"><span style=3D"color:#5=
A3696">945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">OE-Core: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Multiple environments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">95.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">4.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4529"><span style=3D"color:#5A3696">4529</span></a><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4863"><span styl=
e=3D"color:#5A3696">4863</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D928"><span style=3D"color:#5A3696">928</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BitBake: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fedora 18 X86_64<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D926"><span style=3D"color:#5A3696">926</span></a=
><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D964"><span style=3D"color:#5A3696">964</span></a=
><o:p></o:p></span></p>
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
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 19</span></b><span style=3D"font-=
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
<span style=3D"font-size:9.5pt">98<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">12<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">871<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 981</span></b><span style=3D"font=
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
dth=3D"432" height=3D"120" id=3D"Picture_x0020_23" src=3D"cid:image005.png@=
01CE8D43.D60C0400" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;c=
hs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:98,12,871&amp;chco=3DFFFF66|FF9933|00=
FF00&amp;chl=3DBLOCKED(98)&#43;10%25|FAILED(12)&#43;1%25|PASSED(871)&#43;89=
%25"></span><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><=
img border=3D"0" width=3D"372" height=3D"120" id=3D"Picture_x0020_22" src=
=3D"cid:image002.png@01CE8D3E.ED21FF00" alt=3D"Bug Status"></span><span sty=
le=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
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
ct.org/wiki/WW30_-_2013-07-24-2_-_Full_Pass_Yocto_1.5_M3"><b><span style=3D=
"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" widt=
h=3D"12" height=3D"14" id=3D"Picture_x0020_21" src=3D"cid:image003.gif@01CE=
8D3E.ED21FF00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-s=
ize:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW30_-_2013-07-24-2_-_Full_Pass_Yocto_1.5_M3"><b><span st=
yle=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0=
" width=3D"12" height=3D"14" id=3D"Picture_x0020_20" src=3D"cid:image003.gi=
f@01CE8D3E.ED21FF00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"=
font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/WW30_-_2013-07-24-2_-_Full_Pass_Yocto_1.5_M3"><b><span styl=
e=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" =
width=3D"12" height=3D"14" id=3D"Picture_x0020_19" src=3D"cid:image003.gif@=
01CE8D3E.ED21FF00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"fo=
nt-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW30_-_2013-07-24-2_-_Full_Pass_Yocto_1.5_M3"><b><span =
style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D=
"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_18" src=3D"cid:image003.=
gif@01CE8D3E.ED21FF00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW30_-_2013-07-24-2_-_Full_Pass_Yocto_1.5_M3"><b><span s=
tyle=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"=
0" width=3D"12" height=3D"14" id=3D"Picture_x0020_17" src=3D"cid:image003.g=
if@01CE8D3E.ED21FF00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D=
"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW30_-_2013-07-24-2_-_Full_Pass_Yocto_1.5_M3"><b><span=
 style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_16" src=3D"cid:image0=
03.gif@01CE8D3E.ED21FF00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span styl=
e=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW30_-_2013-07-24-2_-_Full_Pass_Yocto_1.5_M3"><b><span sty=
le=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0"=
 width=3D"12" height=3D"14" id=3D"Picture_x0020_15" src=3D"cid:image003.gif=
@01CE8D3E.ED21FF00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"f=
ont-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/WW30_-_2013-07-24-2_-_Full_Pass_Yocto_1.5_M3"><b>=
<span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_14" src=3D"cid:ima=
ge003.gif@01CE8D3E.ED21FF00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span s=
tyle=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW30_-_2013-07-24-2_-_Full_Pass_Yocto_1.5_M3"><b><span =
style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D=
"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_13" src=3D"cid:image003.=
gif@01CE8D3E.ED21FF00" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D948"><span style=3D"color=
:#5A3696">948</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">155<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D951"><span style=3D"color=
:#5A3696">951</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">135<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D940"><span style=3D"color=
:#5A3696">940</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D931">=
<span style=3D"color:#5A3696">931</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">131<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D929"><span style=3D"color=
:#5A3696">929</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">63<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4849"><span style=3D"color:#5A3696">4849</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D943"><span style=3D"color=
:#5A3696">943</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D942">=
<span style=3D"color:#5A3696">942</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Some error messages =
when install toolchain sdk<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">9<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4863"><span style=3D"color:#5A3696">4863</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D929"><span style=3D"color=
:#5A3696">929</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">systemd failed proc-=
sys-fs-binfmt_misc.mount service<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5 M3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">7<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4904"><span style=3D"color:#5A3696">4904</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D949"><span style=3D"color=
:#5A3696">949</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D942">=
<span style=3D"color:#5A3696">942</span></a><span class=3D"apple-converted-=
space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_ru=
n.cgi?run_id=3D950"><span style=3D"color:#5A3696">950</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/tr_show_run.cgi?run_id=3D943"><span style=3D"color:#5A3696">943</=
span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"http=
s://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D963"><span style=3D"=
color:#5A3696">963</span></a><a href=3D"https://bugzilla.yoctoproject.org/t=
r_show_run.cgi?run_id=3D962"><span style=3D"color:#5A3696">962</span></a><o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Autobuilder built be=
agleboard 20130724-2 image failed<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M3<o:p></o:p></span></p>
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
bug.cgi?id=3D4910"><span style=3D"color:#5A3696">4910</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D925"><span style=3D"color=
:#5A3696">925</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[p1022ds]urandom: se=
gmentation fault<o:p></o:p></span></p>
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
bug.cgi?id=3D4938"><span style=3D"color:#5A3696">4938</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D944"><span style=3D"color=
:#5A3696">944</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">bitbake build failed=
 when apply patch with cli &quot;yocto-kernel patch add&quot;<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
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
bug.cgi?id=3D4940"><span style=3D"color:#5A3696">4940</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D944"><span style=3D"color=
:#5A3696">944</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D951">=
<span style=3D"color:#5A3696">951</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">XServer could not st=
art with meta-intel layer, error msg is: &quot;Read-only file system&quot;<=
o:p></o:p></span></p>
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4952"><span style=3D"color:#5A3696">4952</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D956"><span style=3D"color=
:#5A3696">956</span></a><o:p></o:p></span></p>
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
bug.cgi?id=3D4953"><span style=3D"color:#5A3696">4953</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D957"><span style=3D"color=
:#5A3696">957</span></a><o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 12</span><=
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Here is the updated pe=
rformance chart with the latest milestones including the current Full Pass.=
 As you can see there are no big differences between the last milestones, a=
nd the trend is slowly going down which
 is a good thing for us. The xlsx file used to compile the data is attached=
. The data used is populated from Performance_test wiki page:
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test"><span style=
=3D"color:black">https://wiki.yoctoproject.org/wiki/Performance_Test</span>=
</a>.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"1060" height=3D"622" id=
=3D"Picture_x0020_12" src=3D"cid:image004.jpg@01CE8D3F.5CA004D0" alt=3D"cid=
:image003.jpg@01CE8D28.71C9C560"><o:p></o:p></p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_--

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=10204;
	creation-date="Tue, 30 Jul 2013 13:47:30 GMT";
	modification-date="Tue, 30 Jul 2013 13:47:30 GMT"
Content-ID: <image002.png@01CE8D3E.ED21FF00>
Content-Transfer-Encoding: base64

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
gg==

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=462;
	creation-date="Tue, 30 Jul 2013 13:47:30 GMT";
	modification-date="Tue, 30 Jul 2013 13:47:30 GMT"
Content-ID: <image003.gif@01CE8D3E.ED21FF00>
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

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_
Content-Type: image/jpeg; name="image004.jpg"
Content-Description: image004.jpg
Content-Disposition: inline; filename="image004.jpg"; size=84174;
	creation-date="Tue, 30 Jul 2013 13:47:30 GMT";
	modification-date="Tue, 30 Jul 2013 13:47:30 GMT"
Content-ID: <image004.jpg@01CE8D3F.5CA004D0>
Content-Transfer-Encoding: base64

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
VmG8mlmc52xErSxu7RtjbUX37ze+9bXAKSWjwmOCoibE9pdZjSDYFxI3aD1DQdCCuk+0Vnth+Rqq
WtjhmfVVhiqTG3ajxQwH9hvWs/JqvtzuE1BWik5NV9udwmpyar7c7hNQVopOTVfbncJqcmq+3O4T
UFaKTk1X253CanJqvtzuE1BWik5NV9udwmpyar7c7hNQVopOTVfbncJqcmq+3O4TUFaKTk1X253C
anJqvtzuE1BWik5NV9udwmpyar7c7hNQVopOTVfbncJqcmq+3O4TUFaKTk1X253CanJqvtzuE1BW
ik5NV9udwmpyar7c7hNQVopOTVfbncJqcmq+3O4TUFaKTk1X253CanJqvtzuE1BWik5NV9udwmpy
ar7c7hNQVopOTVfbncJqcmq+3O4TUFaKTk1X253CanJqvtzuE1BWik5NV9udwmpyar7c7hNQVopO
TVfbncJqcmq+3O4TUFaKTk1X253CanJqvtzuE1BWik5NV9udwmpyar7c7hNQVopOTVfbncJqcmq+
3O4TUFaKTk1X253CanJqvtzuE1BWik5NV9udwmpyar7c7hNQVopOTVfbncJqcmq+3O4TUFaKTk1X
253CanJqvtzuE1BWik5NV9udwmrLBHJG0iWYyknQloFvcgzIiICIiAiIgIiIJMO+yf3kn53ImHfZ
P7yT87kQfY/1nUeyj/F6qUsf6zqPZR/i9VIC1NZg76yuEwqiyJ2TaxbMHPkdmbY9Gu/ff0LbIg0k
2BPqaoOmqWinNKaZ0MURjJBIJIcHXG7csJ8HZosP5HR15Yx0mZ7potq57bkljiXAka/y9K6FEGqp
cEhpcVkxCOacvlYWujMjiy5INw0nTduWfEImTyUkcjczTMbi9v2HK5S1X2mj9qfyOQeea6TzP+Y9
6c10nmf8x71YiCPmuk8z/mPenNdJ5n/Me9WIgj5rpPM/5j3pzXSeZ/zHvViII+a6TzP+Y96c10nm
f8x71YiCPmuk8z/mPenNdJ5n/Me9WIgj5rpPM/5j3pzXSeZ/zHvViII+a6TzP+Y96c10nmf8x71Y
iCPmuk8z/mPenNdJ5n/Me9WIgj5rpPM/5j3pzXSeZ/zHvViII+a6TzP+Y96c10nmf8x71YiCPmuk
8z/mPenNdJ5n/Me9WIgj5rpPM/5j3pzXSeZ/zHvViII+a6TzP+Y96c10nmf8x71YiCPmuk8z/mPe
nNdJ5n/Me9WIgj5rpPM/5j3pzXSeZ/zHvViII+a6TzP+Y96c10nmf8x71YiCPmuk8z/mPenNdJ5n
/Me9WIgj5rpPM/5j3pzXSeZ/zHvViII+a6TzP+Y96c10nmf8x71YiCPmuk8z/mPenNdJ5n/Me9WI
gj5rpPM/5j3pzXSeZ/zHvViII+a6TzP+Y96c10nmf8x71YiCPmuk8z/mPes0FNFTNIiblB1OpKzI
gIiICIiAiIgIiIJMP+pf7aX85Vakw/6l/tpfzlVoPh+ifUpsP/VlL7Fn4BUn6J9Smw/9WUvsWfgE
FSIiAiIgIiIJaT7RWe2H5GqpS0n2is9sPyNVSAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICI
iAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiIJMO+yf3kn53ImHfZP7
yT87kQfY/wBZ1Hso/wAXqpSx/rOo9lH+L1Ug+Ii0GK4pUUuMQwRVEUY8Qtgcy7qnM6zrHoyjXT79
EHQIuRrsfq46qXZVNNdunJ2tz5WZQdtm3loJ6rfevL8fquQgHEaVjBK9ja3KCJAAS3xdwzEWBB1s
bKZHXqaq+00ftT+Ry0eDYxV12JiOaVl3McZaUMs6mItYk7/Gud/3blu6xsmaCSKMyGOTMWggG2Vw
6fWqZVopOVVPYZeIzvTlVT2GXiM70FaKTlVT2GXiM705VU9hl4jO9BWik5VU9hl4jO9OVVPYZeIz
vQVopOVVPYZeIzvTlVT2GXiM70FaKTlVT2GXiM705VU9hl4jO9BWik5VU9hl4jO9OVVPYZeIzvQV
opOVVPYZeIzvTlVT2GXiM70FaKTlVT2GXiM705VU9hl4jO9BWik5VU9hl4jO9OVVPYZeIzvQVopO
VVPYZeIzvTlVT2GXiM70FaKTlVT2GXiM705VU9hl4jO9BWik5VU9hl4jO9OVVPYZeIzvQVopOVVP
YZeIzvTlVT2GXiM70FaKTlVT2GXiM705VU9hl4jO9BWik5VU9hl4jO9OVVPYZeIzvQVopOVVPYZe
IzvTlVT2GXiM70FaKTlVT2GXiM705VU9hl4jO9BWik5VU9hl4jO9OVVPYZeIzvQVopOVVPYZeIzv
TlVT2GXiM70FaKTlVT2GXiM705VU9hl4jO9BWik5VU9hl4jO9OVVPYZeIzvQVopOVVPYZeIzvTlV
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
S9tqPcz5VUiCXkkvbaj3M+VOSS9tqPcz5VUiCXkkvbaj3M+VOSS9tqPcz5VUiCXkkvbaj3M+VOSS
9tqPcz5VUiCXkkvbaj3M+VOSS9tqPcz5VUiCXkkvbaj3M+VOSS9tqPcz5VUiCXkkvbaj3M+VOSS9
tqPcz5VUiCXkkvbaj3M+VOSS9tqPcz5VUiCXkkvbaj3M+VOSS9tqPcz5VUiCXkkvbaj3M+VOSS9t
qPcz5VUiCXkkvbaj3M+VOSS9tqPcz5VUiCXkkvbaj3M+VOSS9tqPcz5VUiCXkkvbaj3M+VOSS9tq
Pcz5VUiCXkkvbaj3M+VOSS9tqPcz5VUiCXkkvbaj3M+VOSS9tqPcz5VUiCXkkvbaj3M+VOSS9tqP
cz5VUiCXkkvbaj3M+VOSS9tqPcz5VUiCXkkvbaj3M+VG00ocCayc26CGWP8AlVSICIiAiIgIiICI
iAiIgIiICIiAp677BU+yd+BVCnrvsFT7J34FBkg+oj/hH4IkH1Ef8I/BEGCl+2VvtG/kaqHuDWOc
dwF9VPS/bK32jfyNVaDi8GqYq3wrdLHXxvuHuELKrPYEC7cthuOt+jRdmtZFglNFirq9rpTIS5wY
X+I1zgA5wHWQAsOJYxNh9YY8kLouSyTC7yHlzS3eOgeN/JM7Q7t0i5znut5KY9pQcqFQYdt42xtk
z3te9+i19/uXzCvCCoxCthDmQNhmzNDGkmRjmtDi49GU3006R1pNxua76dL7cfgVWocRfsxTPyud
acaNFydCvXL/AOzVXDQWIo+X/wBmquGnL/7NVcNBYij5f/Zqrhpy/wDs1Vw0FiKPl/8AZqrhpy/+
zVXDQWIo+X/2aq4acv8A7NVcNBYij5f/AGaq4acv/s1Vw0FiKPl/9mquGnL/AOzVXDQWIo+X/wBm
quGnL/7NVcNBYij5f/Zqrhpy/wDs1Vw0FiKPl/8AZqrhpy/+zVXDQWIo+X/2aq4acv8A7NVcNBYi
j5f/AGaq4acv/s1Vw0FiKPl/9mquGnL/AOzVXDQWIo+X/wBmquGnL/7NVcNBYij5f/Zqrhpy/wDs
1Vw0FiKPl/8AZqrhpy/+zVXDQWIo+X/2aq4acv8A7NVcNBYij5f/AGaq4acv/s1Vw0FiKPl/9mqu
GnL/AOzVXDQWLw5xawlrcxAuAOleYZtswu2cjNbWe2xWVBqOdMT/AKjm/wARH3pzpif9Rzf4iPvW
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
BF6AyNDRuAsiD//Z

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_
Content-Type: image/png; name="image005.png"
Content-Description: image005.png
Content-Disposition: inline; filename="image005.png"; size=10032;
	creation-date="Tue, 30 Jul 2013 13:47:31 GMT";
	modification-date="Tue, 30 Jul 2013 13:47:31 GMT"
Content-ID: <image005.png@01CE8D43.D60C0400>
Content-Transfer-Encoding: base64

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

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_--

--_009_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Performance Comparison.xlsx"
Content-Description: Performance Comparison.xlsx
Content-Disposition: attachment; filename="Performance Comparison.xlsx";
	size=59478; creation-date="Tue, 18 Jun 2013 12:04:20 GMT";
	modification-date="Tue, 30 Jul 2013 10:16:20 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQA65cwN7gEAAOEOAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
l91O4zAQhe+ReIfIt6hxw/K3qCkX7O7lLhLwACaeNlYT27IHaN+eiRsqhAqVm2jTmyRt7POdcZwT
zeRmWVfJCzivjM5Zlo5ZArowUul5zh4f/oyuWOJRaCkqoyFnK/DsZnp8NHlYWfAJzdY+ZyWivebc
FyXUwqfGgqY7M+NqgfTTzbkVxULMgZ+Oxxe8MBpB4wgbDTad/IKZeK4w+b2kv9dOnpRmye16XIPK
mbC2UoVAMspftPwEGZnZTBUgTfFck3TqrQMhfQmAdZVap4jo7gGRCvOMb2U6qHwctK0qpZnBmC+V
9SdU+heE5s7XVbXz/tHjcEpCcicc/hU11c6XFX81bvFkzCL9XiR2acISpbVQ+t33N/ww2PNwyno2
0tQXhCN9nB6Ijx8H4uPsQHycD+QDKYOAh2P3LRpkdmxIj6sKfM/VrkV3kUvhQN4jpdu8dwMftXf4
kE68NhZ4e9F93VuhHdyCPKLn4dQbkz4XQTCC3T2C2nr3YHePnf3Z3aMmjt2O3uyz3tY94ll3j7W4
mj/u8YvOIbM/+3JA9tWA7J8DsrPxkPAhEzXr7dXeI1KzITM1+6+hSv3SnTOWvqHGQfxme+9/mtkj
S0LgUMGmA9rWSWyI1M/FAz91edA0jBLkFjYPDer0DQAA//8DAFBLAwQUAAYACAAAACEAtVUwI/UA
AABMAgAACwAIAl9yZWxzLy5yZWxzIKIEAiigAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIySz07DMAzG70i8Q+T76m5ICKGlu0xIuyFUHsAk
7h+1jaMkQPf2hAOCSmPb0fbnzz9b3u7maVQfHGIvTsO6KEGxM2J712p4rZ9WD6BiImdpFMcajhxh
V93ebF94pJSbYtf7qLKLixq6lPwjYjQdTxQL8exypZEwUcphaNGTGahl3JTlPYa/HlAtPNXBaggH
eweqPvo8+bK3NE1veC/mfWKXToxAnhM7y3blQ2YLqc/bqJpCy0mDFfOc0xHJ+yJjA54m2lxP9P+2
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
DrspzYK6MFv7FUTNxo5szMcoySsKL/m5tVyvgJ2I50Jx+ALFokvhnKEprTZGoYwiIMiACc6REI2C
VjrjYs5oaooajktFDUomTwwdI0XK8CwM4PAtOi7WVNQwMfMk8rV1NUNu4xbFTpMGynKezDtYc4hw
kszjLVaSB8sV2bOwM+QG4p6LnbjlYsfHFKD0aLEvD4Q6GorwnNCYRqJn6XnDaoZag7qWqWabg1RM
HKAFaE8XurOYBl4nFimQHO6nWemH3LCp6df1c0ImvNEC+JKYwimGtQFdsMlaM+ZlUdzCVJXjnDqp
frIahn1KbZ0a8+kpaDBqv4nhmTA2RIfYbBp4jo45jWoob+t5EzCu1rUsiCRtQ8Ym1v2H++9JiHwD
b2lZyAebBSDDa25rsbkEC8hUDIZSWiuwfEXj/flSuXhYpgbV86oCk0bBLkWc4TIzLBWDhaI4GM81
8DyR2DCD/HHWP35SDJyIkBQkNSVwPCsm4vjMSXVspikK4GXQgma7MiDEEFcUdg/PBvxZNCKX9IsR
dlWMJOsZK5HkLZ3kmHhGiU4FVoJkQ7pOPMu3AbQQDkUiiurvaUVtkISMmA6lWJGGiWMJFgDHzIcF
Dr5+XKKp+R4jYtFguBWsClBFDnQUSoQTQpEPjhqJCPO9/6WzU0lW6dAZOZYJDxJRX91SMEHaz3Gx
W2WI1sSsfMHqgCq7MnSIBHgM/UFvcmO0EfSLOZNCjbJNiF+Qvs9DZkdCgsHtwsCFJLkIqBgX9UwT
TjEOOoDCIIDQGCU0Nfl7mtChFwAGZLjBJK6LONykeSZFohwyjWarALNpoJuTMuvm/8HaPRKheEaM
jYf//Voe7N3RVV0285RhH8xLcFw4e+6SOR0vXDPh13B0+oJwdtnqYy9IlKdqFq+66vkR15eNrr6l
bfeWo7cvKnSf3yH1jOmmifbR5+yfsXSpu7/rnWnG2T0PTuvySrTuFXtuu33VzcvOWpbHvegja/XG
S9L77lZvXXzmDnPcqqrjf6p/4qRzflyz74q1D33TurPt5RXNX8hbQ099iO4eNXasuvnSvom/9N1Z
tbz6zb0732yO1rdNbO+re/aNnt5pK9dubXyxWXps/aKrXiwb1qRljzlh3dVPbj26b/pIp3LcW3dt
enVGVjq747aN8ysXLRA/aHumPZNv3MRfu+D98d4967p7qlv25W/a1dkjkBsnchx3+rkzGrLb71vn
lt9hrVz7Q8fChVX3z/lZ7L7hsklOafnedNWyB659eP2eX0NfJV5Kb/imcBEpr701ZG464bzREal+
wqrO1NNda6bcqzgX9q6+47uS6Xr7+u/LPu2df9nT3y3f8kjbzHF6hT674d2uj6/fuNXY+N4eacn2
pS/tv/i4U8uWbJvc0fnJ2Ed77iSXL071dY568oczFu5e/sC6u8SpJx7/7NtV7eNfX/H1aZ0rN2x2
P9vR93Fs294fX3tl5InbKj/vEz7D6oJvH5/sNl/e7d4+5rnzrlyxsLjWPH7ymClm9f+ghoMnBggE
CAQIBAgECAQIBAgECAQIBAgECAQIBAgECAQIBAgg9DsAAAD//wMAUEsBAi0AFAAGAAgAAAAhADrl
zA3uAQAA4Q4AABMAAAAAAAAAAAAAAAAAAAAAAFtDb250ZW50X1R5cGVzXS54bWxQSwECLQAUAAYA
CAAAACEAtVUwI/UAAABMAgAACwAAAAAAAAAAAAAAAAAnBAAAX3JlbHMvLnJlbHNQSwECLQAUAAYA
CAAAACEAPViAeh8BAADuBAAAGgAAAAAAAAAAAAAAAABNBwAAeGwvX3JlbHMvd29ya2Jvb2sueG1s
LnJlbHNQSwECLQAUAAYACAAAACEA06sfzZEBAAALAwAADwAAAAAAAAAAAAAAAACsCQAAeGwvd29y
a2Jvb2sueG1sUEsBAi0AFAAGAAgAAAAhAK1bhimfFgAARW8AABgAAAAAAAAAAAAAAAAAagsAAHhs
L3dvcmtzaGVldHMvc2hlZXQ0LnhtbFBLAQItABQABgAIAAAAIQDEMOQKKAYAAJ0SAAAVAAAAAAAA
AAAAAAAAAD8iAAB4bC9jaGFydHMvY2hhcnQxNC54bWxQSwECLQAUAAYACAAAACEArcV7plQGAABO
EwAAFQAAAAAAAAAAAAAAAACaKAAAeGwvY2hhcnRzL2NoYXJ0MTMueG1sUEsBAi0AFAAGAAgAAAAh
AF8tP1oHBgAAKhgAABUAAAAAAAAAAAAAAAAAIS8AAHhsL2NoYXJ0cy9jaGFydDEyLnhtbFBLAQIt
ABQABgAIAAAAIQBD8Hp90QYAAOAcAAAVAAAAAAAAAAAAAAAAAFs1AAB4bC9jaGFydHMvY2hhcnQx
MS54bWxQSwECLQAUAAYACAAAACEAoEkYTigGAABMEwAAFQAAAAAAAAAAAAAAAABfPAAAeGwvY2hh
cnRzL2NoYXJ0MTAueG1sUEsBAi0AFAAGAAgAAAAhAN2V4TFxBgAALBQAABQAAAAAAAAAAAAAAAAA
ukIAAHhsL2NoYXJ0cy9jaGFydDkueG1sUEsBAi0AFAAGAAgAAAAhAOYGA2aNBQAAHRsAABgAAAAA
AAAAAAAAAAAAXUkAAHhsL3dvcmtzaGVldHMvc2hlZXQzLnhtbFBLAQItABQABgAIAAAAIQDiQ+9J
Kw4AAHA8AAAYAAAAAAAAAAAAAAAAACBPAAB4bC93b3Jrc2hlZXRzL3NoZWV0Mi54bWxQSwECLQAU
AAYACAAAACEAO20yS8EAAABCAQAAIwAAAAAAAAAAAAAAAACBXQAAeGwvd29ya3NoZWV0cy9fcmVs
cy9zaGVldDIueG1sLnJlbHNQSwECLQAUAAYACAAAACEAKqgjF/wAAADzBQAAIwAAAAAAAAAAAAAA
AACDXgAAeGwvZHJhd2luZ3MvX3JlbHMvZHJhd2luZzIueG1sLnJlbHNQSwECLQAUAAYACAAAACEA
HaUdpdMAAAC9AgAAIwAAAAAAAAAAAAAAAADAXwAAeGwvZHJhd2luZ3MvX3JlbHMvZHJhd2luZzEu
eG1sLnJlbHNQSwECLQAUAAYACAAAACEAPQa0ZL0AAAArAQAAIwAAAAAAAAAAAAAAAADUYAAAeGwv
d29ya3NoZWV0cy9fcmVscy9zaGVldDUueG1sLnJlbHNQSwECLQAUAAYACAAAACEAE8QsE8IAAABC
AQAAIwAAAAAAAAAAAAAAAADSYQAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDQueG1sLnJlbHNQ
SwECLQAUAAYACAAAACEAFa+qPL0AAAArAQAAIwAAAAAAAAAAAAAAAADVYgAAeGwvd29ya3NoZWV0
cy9fcmVscy9zaGVldDMueG1sLnJlbHNQSwECLQAUAAYACAAAACEAIJLGLngMAACiNAAAGAAAAAAA
AAAAAAAAAADTYwAAeGwvd29ya3NoZWV0cy9zaGVldDEueG1sUEsBAi0AFAAGAAgAAAAhAP5FIlJL
BgAAAxQAABQAAAAAAAAAAAAAAAAAgXAAAHhsL2NoYXJ0cy9jaGFydDgueG1sUEsBAi0AFAAGAAgA
AAAhACkx+/6FBgAA5RMAABQAAAAAAAAAAAAAAAAA/nYAAHhsL2NoYXJ0cy9jaGFydDYueG1sUEsB
Ai0AFAAGAAgAAAAhAA6L1w3aBwAA5xsAABQAAAAAAAAAAAAAAAAAtX0AAHhsL2NoYXJ0cy9jaGFy
dDEueG1sUEsBAi0AFAAGAAgAAAAhAFKspoG8AgAATA4AABgAAAAAAAAAAAAAAAAAwYUAAHhsL2Ry
YXdpbmdzL2RyYXdpbmcxLnhtbFBLAQItABQABgAIAAAAIQASSerypwcAAH0YAAAUAAAAAAAAAAAA
AAAAALOIAAB4bC9zaGFyZWRTdHJpbmdzLnhtbFBLAQItABQABgAIAAAAIQDmG8TtrgYAAEk6AAAN
AAAAAAAAAAAAAAAAAIyQAAB4bC9zdHlsZXMueG1sUEsBAi0AFAAGAAgAAAAhAPtipW2UBgAApxsA
ABMAAAAAAAAAAAAAAAAAZZcAAHhsL3RoZW1lL3RoZW1lMS54bWxQSwECLQAUAAYACAAAACEA3sz5
SZgBAADUAgAAGAAAAAAAAAAAAAAAAAAqngAAeGwvd29ya3NoZWV0cy9zaGVldDUueG1sUEsBAi0A
FAAGAAgAAAAhAFi0Hi83BgAAVhMAABQAAAAAAAAAAAAAAAAA+J8AAHhsL2NoYXJ0cy9jaGFydDcu
eG1sUEsBAi0AFAAGAAgAAAAhAJ+GBboFCAAAuBwAABQAAAAAAAAAAAAAAAAAYaYAAHhsL2NoYXJ0
cy9jaGFydDIueG1sUEsBAi0AFAAGAAgAAAAhAIrZS7EPCAAAoSkAABQAAAAAAAAAAAAAAAAAmK4A
AHhsL2NoYXJ0cy9jaGFydDMueG1sUEsBAi0AFAAGAAgAAAAhACF8zLYlBgAAdRMAABQAAAAAAAAA
AAAAAAAA2bYAAHhsL2NoYXJ0cy9jaGFydDUueG1sUEsBAi0AFAAGAAgAAAAhAPkYUAHPCAAAQx4A
ABQAAAAAAAAAAAAAAAAAML0AAHhsL2NoYXJ0cy9jaGFydDQueG1sUEsBAi0AFAAGAAgAAAAhAKr7
kpS4AwAAcSEAABgAAAAAAAAAAAAAAAAAMcYAAHhsL2RyYXdpbmdzL2RyYXdpbmcyLnhtbFBLAQIt
ABQABgAIAAAAIQAIKttFUwEAAH0CAAARAAAAAAAAAAAAAAAAAB/KAABkb2NQcm9wcy9jb3JlLnht
bFBLAQItABQABgAIAAAAIQDB51HasAEAAKcDAAAQAAAAAAAAAAAAAAAAAKnMAABkb2NQcm9wcy9h
cHAueG1sUEsBAi0AFAAGAAgAAAAhACU/VPg0BwAAMB8AACcAAAAAAAAAAAAAAAAAj88AAHhsL3By
aW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3MxLmJpblBLAQItABQABgAIAAAAIQCqSnvfngYA
ABAfAAAnAAAAAAAAAAAAAAAAAAjXAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdz
Mi5iaW5QSwUGAAAAACYAJgBVCgAA690AAAAA

--_009_1FFB62CE8AEB0D4298B51122D8903E9619F22726IRSMSX104gercor_--
