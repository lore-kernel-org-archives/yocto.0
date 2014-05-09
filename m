Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5757FE00B6A; Fri,  9 May 2014 06:32:34 -0700 (PDT)
Received: from mga03.intel.com (unknown [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97F25E00B66
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:32:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 May 2014 06:32:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1018,1389772800"; 
	d="jpg'145?scan'145,208,217,145";a="429961364"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by azsmga001.ch.intel.com with ESMTP; 09 May 2014 06:31:38 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.98]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.173]) with mapi id
	14.03.0123.003; Fri, 9 May 2014 14:29:57 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.5.2.rc3 Full Pass QA Report
Thread-Index: AQHPa4ldruIz0lY1/EyAFQB9WIXIXZs4PZ8A
Date: Fri, 9 May 2014 13:29:56 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E961B6A4BD5@IRSMSX104.ger.corp.intel.com>
References: <CF92AC83.C45%alexandru.c.georgescu@intel.com>
	<CF92B09F.C75%alexandru.c.georgescu@intel.com>
In-Reply-To: <CF92B09F.C75%alexandru.c.georgescu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: FW: Yocto 1.5.2.rc3 Full Pass QA Report
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
X-List-Received-Date: Fri, 09 May 2014 13:32:34 -0000
X-Groupsio-MsgNum: 19511
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_1FFB62CE8AEB0D4298B51122D8903E961B6A4BD5IRSMSX104gercor_";
	type="multipart/alternative"

--_006_1FFB62CE8AEB0D4298B51122D8903E961B6A4BD5IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E961B6A4BD5IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E961B6A4BD5IRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Resending with better formatting:

Here is the full pass report for 1.5.2.rc3 release.The QA report summary, t=
esting data and issue summary are available below, and the full pass report=
 is available on https://wiki.yoctoproject.org/wiki/WW18_-_2014-04-28_-_Ful=
l_Pass_Release_Dora_1.5.2_rc3  wiki.

Issue summary:

  *   There were no release blocker issues found in this release. We have f=
ound:
     *   6269 - gtk 2.24.20 fails at do_compile  on Ubuntu 13.10 which have=
 been addressed.
     *   6264 -  repository 'http://git.pingu.fi/xf86-video-omapfb/' not fo=
und which was fixed
     *   6301 - nightly-world build hangs on AB machine having OpenSuse 13.=
1


Testing data

 Test type: Full Pass Release

 Branch: Dora

 Build name: 1.5.2 rc3

 poky commit: b626e109e83384558f45dc2e30e7caec677ce1db

 Eclipse Plugin commit Kepler:  e842d41f05066df1533a2788e650f0be213ad5b5

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rel=
eases/yocto-1.5.2.rc3/

 Distributions tested: Ubuntu 14.04 64bit, Ubuntu 13.10 64bit, Fedora 19 64=
bit, Fedora 20 32bit,  OpenSuse 13.1 64bit, CentOS 6.5 64bit,  Debian 7 64b=
it



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

2318<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2318>2320<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2320>

ADT: dora branch

Fedora 20 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

1751<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1751>1753<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1753>

ADT: dora branch

Ubuntu 13.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2321<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2321>2322<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2322>

BSP/QEMU: dora branch

Beagleboard

71.0%

none

4.3%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>3936<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

24.6%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

100.0%

2297<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2297>2300<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2300>

BSP/QEMU: dora branch

generic-x86 on AtomPC

97.1%

none

2.9%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>5834<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834>

0.0%

none

100.0%

2303<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2303>2307<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2307>

BSP/QEMU: dora branch

genericx86-64 on Sugarbay

98.6%

none

1.4%

5834<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834>

0.0%

none

100.0%

2327<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2327>2328<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2328>

BSP/QEMU: dora branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

2323<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2323>2324<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2324>

BSP/QEMU: dora branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

2339<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2339>2340<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2340>

BSP/QEMU: dora branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

2311<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2311>2312<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2312>

BSP/QEMU: dora branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

2315<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2315>2316<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2316>

BSP/QEMU: dora branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

2313<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2313>2314<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2314>

BSP/QEMU: dora branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

2336<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2336>2337<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2337>

BSP/QEMU: dora branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

2325<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2325>2326<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2326>

BSP/QEMU: dora branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

2301<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2301>2302<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2302>2304<https:/=
/bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2304>2305<https://bugzi=
lla.yoctoproject.org/tr_show_run.cgi?run_id=3D2305>2306<https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D2306>2332<https://bugzilla.yoctopro=
ject.org/tr_show_run.cgi?run_id=3D2332>

Eclipse plugin: Dora branch

Ubuntu 13.10 x86_64

100.0%

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>5163<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

0.0%

none

0.0%

none

100.0%

2329<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2329>2330<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2330>

Meta-yocto: dora branch

Ubuntu 13.10 x86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

2309<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2309>2310<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2310>

Hob: dora branch

Ubuntu 14.04 x86_64

97.8%

none

2.2%

5892<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5892>

0.0%

none

100.0%

2298<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2298>2299<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2299>

OE-Core: dora branch

Multiple environments

100.0%

none

0.0%

none

0.0%

none

100.0%

2333<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2333>2334<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2334>

Bitbake: dora branch

Ubuntu 13.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2335<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2335>

Runtime: dora branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

2331<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2331>

Build Appliance: dora branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 20



Test Case Status Report

Status

Count

BLOCKED

17

FAILED

7

PASSED

1015

Total: 1039


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:17,7,1015&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(17)+2%25|FAILED(7)+1%2=
5|PASSED(1015)+98%25]



Bug Status Report

[Bug Status]

ID[?]<https://wiki.yoctoproject.org/wiki/WW18_-_2014-04-28_-_Full_Pass_Rele=
ase_Dora_1.5.2_rc3>

Priority[?]<https://wiki.yoctoproject.org/wiki/WW18_-_2014-04-28_-_Full_Pas=
s_Release_Dora_1.5.2_rc3>

Status[?]<https://wiki.yoctoproject.org/wiki/WW18_-_2014-04-28_-_Full_Pass_=
Release_Dora_1.5.2_rc3>

Resolution[?]<https://wiki.yoctoproject.org/wiki/WW18_-_2014-04-28_-_Full_P=
ass_Release_Dora_1.5.2_rc3>

Test Runs[?]<https://wiki.yoctoproject.org/wiki/WW18_-_2014-04-28_-_Full_Pa=
ss_Release_Dora_1.5.2_rc3>

Description[?]<https://wiki.yoctoproject.org/wiki/WW18_-_2014-04-28_-_Full_=
Pass_Release_Dora_1.5.2_rc3>

Version[?]<https://wiki.yoctoproject.org/wiki/WW18_-_2014-04-28_-_Full_Pass=
_Release_Dora_1.5.2_rc3>

Target Milestone[?]<https://wiki.yoctoproject.org/wiki/WW18_-_2014-04-28_-_=
Full_Pass_Release_Dora_1.5.2_rc3>

Age (days)[?]<https://wiki.yoctoproject.org/wiki/WW18_-_2014-04-28_-_Full_P=
ass_Release_Dora_1.5.2_rc3>

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

ACCEPTED

2321<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2321>

[beagleboard xM] Some error message with usbhs_omap in dmesg

1.4

1.6

426

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

2297<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2297>

dmesg log errors in Atom-PC

1.3.1

1.7

413

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

Medium

ACCEPTED

2305<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2305>2301<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2301>

no external tools displayed when first trying to run QEMU - test case 48 fa=
iled on Ubuntu 12.04 x86-64 host(build 1.5 M4 rc2)

1.5

1.7

229

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

Medium+

RESOLVED

WONTFIX

2322<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2322>2321<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2321>

[Beagleboard xM]X can not startup with 3.10 kernel

1.5

1.5.1

227

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>

Low

NEW

2305<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2305>2301<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2301>

headless build takes took long

1.6

1.6

91

5834<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5834>

Medium

NEW

2300<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2300>2307<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2307>

Cannot wake from suspend state using the USB mouse or keyboard

1.6

1.6

70

5892<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5892>

Medium

RESOLVED

FIXED

2310<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2310>

Deploy image does not always write correctly to USB

1.6

1.6 M4

60

Total: 7




Distro testing
Here are the distro testing results for 1.5.2.rc3 release. The distribution=
 hosts used are Fedora 20, OpenSuse 13.1, CentOS 6.5 and Ubuntu 13.10. We h=
ave also performed manual distro tests on Ubuntu 14.04.

BRANCH

sgw/dora-next

dora

COMMIT

9b7d43963f54d25e087a4cc55623a4cfeac121a9

6a92f7ede3be3edd58d7819aa611b0c5270756bf

RELEASE

1.5.2 RC3

1.5.2 RC3

Fedora 20





* nighlty-world

FAILED - 6264

PASS

* buildtools

PASS



* nightly-arm

FAILED - 6264

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



FAILED - 6301

* buildtools

PASS



* nightly-arm

FAILED - 6264

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

FAILED - 6269

FAILED - 6269

* buildtools

PASS



* nightly-arm

FAILED - 6264

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

FAILED - 6264

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





Performance test

The build performance test data is available on the 1.5.2 performance_test =
wiki. The below charts reflects the data tables in the wiki which shows an =
overall similar build performance, even though there are slight degradation=
s observed from the trend.

Trend for building core-image-sato (rm_work):

[cid:image001.jpg@01CF6BA3.E84B1630]

The trend for building the virtual/kernel:

[cid:image002.jpg@01CF6BA3.E84B1630]


The trend for building the rootfs:

[cid:image003.jpg@01CF6BA3.E84B1630]


Regards,

--

Alexandru Georgescu

Yocto QA Engineer

SSG/SSD Open Source Technology Center Romania







--_000_1FFB62CE8AEB0D4298B51122D8903E961B6A4BD5IRSMSX104gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
@font-face
	{font-family:Consolas;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
p.xl63, li.xl63, div.xl63
	{mso-style-name:xl63;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#95B3D7;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl64, li.xl64, div.xl64
	{mso-style-name:xl64;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#DA9694;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl65, li.xl65, div.xl65
	{mso-style-name:xl65;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#8DB4E2;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl66, li.xl66, div.xl66
	{mso-style-name:xl66;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl67, li.xl67, div.xl67
	{mso-style-name:xl67;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#95B3D7;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl68, li.xl68, div.xl68
	{mso-style-name:xl68;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#8DB4E2;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl69, li.xl69, div.xl69
	{mso-style-name:xl69;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#DA9694;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.xl70, li.xl70, div.xl70
	{mso-style-name:xl70;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#DA9694;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl71, li.xl71, div.xl71
	{mso-style-name:xl71;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#DA9694;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl72, li.xl72, div.xl72
	{mso-style-name:xl72;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#DA9694;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.xl73, li.xl73, div.xl73
	{mso-style-name:xl73;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#DA9694;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl74, li.xl74, div.xl74
	{mso-style-name:xl74;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#95B3D7;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.xl75, li.xl75, div.xl75
	{mso-style-name:xl75;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#95B3D7;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl76, li.xl76, div.xl76
	{mso-style-name:xl76;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl77, li.xl77, div.xl77
	{mso-style-name:xl77;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl78, li.xl78, div.xl78
	{mso-style-name:xl78;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#8DB4E2;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.xl79, li.xl79, div.xl79
	{mso-style-name:xl79;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#8DB4E2;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl80, li.xl80, div.xl80
	{mso-style-name:xl80;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl81, li.xl81, div.xl81
	{mso-style-name:xl81;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl82, li.xl82, div.xl82
	{mso-style-name:xl82;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Cambria","serif";
	color:#365F91;
	font-weight:bold;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas","serif";}
span.sortarrow
	{mso-style-name:sortarrow;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle44
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
	{mso-list-id:975380565;
	mso-list-template-ids:1106930244;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Resending with better formatting:<o:p><=
/o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Here is the full pass repor=
t for 1.5.2.rc3 release.The QA report summary, testing data and issue summa=
ry are available below, and the full pass report is available
 on&nbsp;<a href=3D"https://wiki.yoctoproject.org/wiki/WW18_-_2014-04-28_-_=
Full_Pass_Release_Dora_1.5.2_rc3">https://wiki.yoctoproject.org/wiki/WW18_-=
_2014-04-28_-_Full_Pass_Release_Dora_1.5.2_rc3</a>&nbsp;&nbsp;wiki.<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Issue summary:<o:p></o:p></=
span></p>
</div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;mso-list:l0 level1 lfo1">
<span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">There were no release blocker issues found in this release. We=
 have found:
<o:p></o:p></span>
<ul type=3D"circle">
<li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;mso-list:l0 level2 lfo1">
<span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">6269 - gtk 2.24.20 fails at do_compile &nbsp;on Ubuntu 13.10 w=
hich have been addressed.<o:p></o:p></span></li><li class=3D"MsoNormal" sty=
le=3D"color:black;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-li=
st:l0 level2 lfo1">
<span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">6264 - &nbsp;repository '<a href=3D"http://git.pingu.fi/xf86-v=
ideo-omapfb/">http://git.pingu.fi/xf86-video-omapfb/</a>' not found which w=
as fixed<o:p></o:p></span></li><li class=3D"MsoNormal" style=3D"color:black=
;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l0 level2 lfo1=
">
<span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">6301 -&nbsp;nightly-world build hangs on AB machine having Ope=
nSuse 13.1<o:p></o:p></span></li></ul>
</li></ul>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testi=
ng data</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p><=
/span></h1>
</div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Test type: Full Pass Release<o:p></o:p></spa=
n></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: Dora<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.5.2 rc3<o:p></o:p></span></pre=
>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: b626e109e83384558f45dc2e30e7cae=
c677ce1db<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Kepler:&nbsp; e842d41f=
05066df1533a2788e650f0be213ad5b5<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: <a href=3D"ht=
tp://autobuilder.yoctoproject.org/pub/releases/yocto-1.5.2.rc3/">http://aut=
obuilder.yoctoproject.org/pub/releases/yocto-1.5.2.rc3/</a><o:p></o:p></spa=
n></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 14.04 64bit, Ub=
untu 13.10 64bit, Fedora 19 64bit, Fedora 20 32bit,&nbsp; OpenSuse 13.1 64b=
it, CentOS 6.5 64bit,&nbsp; Debian 7 64bit<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> <o:p></o:p></span></pre>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Summa=
ry Report</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p=
></span></h1>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"4" cellpadding=
=3D"0" style=3D"background:white;background-position:initial initial;backgr=
ound-repeat:initial initial">
<tbody>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"background:transparent;padding:.=
75pt .75pt .75pt .75pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Testing Summary Report<o:p></o:p></span></b></=
p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;border-collapse:collapse;border:none">
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
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2318"><span style=3D"color:#5A3696;text-decoration:none=
">2318</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2320"><span style=3D"color:#5A3696;text-decoration:none">2320</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">ADT: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Fedora 20 i686<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D1751"><span style=3D"color:#5A3696;text-decoration:none=
">1751</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D1753"><span style=3D"color:#5A3696;text-decoration:none">1753</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">ADT: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2321"><span style=3D"color:#5A3696;text-decoration:none=
">2321</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2322"><span style=3D"color:#5A3696;text-decoration:none">2322</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">BSP/QEMU: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Beagleboard<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:#DDDD00;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">71.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">4.3%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5182"><span style=3D"color:#5A3696;text-decoration:none">5182<=
/span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D39=
36"><span style=3D"color:#5A3696;text-decoration:none">3936</span></a><o:p>=
</o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">24.6%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5182"><span style=3D"color:#5A3696;text-decoration:none">5182<=
/span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2297"><span style=3D"color:#5A3696;text-decoration:none=
">2297</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2300"><span style=3D"color:#5A3696;text-decoration:none">2300</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">BSP/QEMU: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">generic-x86 on AtomPC<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">97.1%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">2.9%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4005"><span style=3D"color:#5A3696;text-decoration:none">4005<=
/span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D58=
34"><span style=3D"color:#5A3696;text-decoration:none">5834</span></a><o:p>=
</o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2303"><span style=3D"color:#5A3696;text-decoration:none=
">2303</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2307"><span style=3D"color:#5A3696;text-decoration:none">2307</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">BSP/QEMU: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">genericx86-64 on Sugarbay<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">98.6%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">1.4%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5834"><span style=3D"color:#5A3696;text-decoration:none">5834<=
/span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2327"><span style=3D"color:#5A3696;text-decoration:none=
">2327</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2328"><span style=3D"color:#5A3696;text-decoration:none">2328</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">BSP/QEMU: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">MPC8315e-rdb<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2323"><span style=3D"color:#5A3696;text-decoration:none=
">2323</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2324"><span style=3D"color:#5A3696;text-decoration:none">2324</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">BSP/QEMU: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">P1022ds<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2339"><span style=3D"color:#5A3696;text-decoration:none=
">2339</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2340"><span style=3D"color:#5A3696;text-decoration:none">2340</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">BSP/QEMU: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">qemu-x86<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2311"><span style=3D"color:#5A3696;text-decoration:none=
">2311</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2312"><span style=3D"color:#5A3696;text-decoration:none">2312</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">BSP/QEMU: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">qemuarm<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2315"><span style=3D"color:#5A3696;text-decoration:none=
">2315</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2316"><span style=3D"color:#5A3696;text-decoration:none">2316</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">BSP/QEMU: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">qemumips<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2313"><span style=3D"color:#5A3696;text-decoration:none=
">2313</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2314"><span style=3D"color:#5A3696;text-decoration:none">2314</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">BSP/QEMU: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">qemuppc<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2336"><span style=3D"color:#5A3696;text-decoration:none=
">2336</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2337"><span style=3D"color:#5A3696;text-decoration:none">2337</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">BSP/QEMU: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">qemux86-64<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2325"><span style=3D"color:#5A3696;text-decoration:none=
">2325</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2326"><span style=3D"color:#5A3696;text-decoration:none">2326</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">BSP/QEMU: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Routerstationpro<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2301"><span style=3D"color:#5A3696;text-decoration:none=
">2301</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2302"><span style=3D"color:#5A3696;text-decoration:none">2302</=
span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_i=
d=3D2304"><span style=3D"color:#5A3696;text-decoration:none">2304</span></a=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2305=
"><span style=3D"color:#5A3696;text-decoration:none">2305</span></a><a href=
=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2306"><span =
style=3D"color:#5A3696;text-decoration:none">2306</span></a><a href=3D"http=
s://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2332"><span style=3D=
"color:#5A3696;text-decoration:none">2332</span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Eclipse plugin: Dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5760"><span style=3D"color:#5A3696;text-decoration:none">5760<=
/span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D51=
63"><span style=3D"color:#5A3696;text-decoration:none">5163</span></a><o:p>=
</o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2329"><span style=3D"color:#5A3696;text-decoration:none=
">2329</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2330"><span style=3D"color:#5A3696;text-decoration:none">2330</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Meta-yocto: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Ubuntu 13.10 x86-64<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2309"><span style=3D"color:#5A3696;text-decoration:none=
">2309</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2310"><span style=3D"color:#5A3696;text-decoration:none">2310</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Hob: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">97.8%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">2.2%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5892"><span style=3D"color:#5A3696;text-decoration:none">5892<=
/span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2298"><span style=3D"color:#5A3696;text-decoration:none=
">2298</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2299"><span style=3D"color:#5A3696;text-decoration:none">2299</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">OE-Core: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Multiple environments<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2333"><span style=3D"color:#5A3696;text-decoration:none=
">2333</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D2334"><span style=3D"color:#5A3696;text-decoration:none">2334</=
span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Bitbake: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2335"><span style=3D"color:#5A3696;text-decoration:none=
">2335</span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Runtime: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Multiple Environments<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2331"><span style=3D"color:#5A3696;text-decoration:none=
">2331</span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">Build Appliance: dora branch<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">qemu-kvm on Ubuntu 12.04 libvirt<o:p></o:p></span>=
</p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">0.0%<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;padding=
:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">none<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:lime;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" colspan=3D"10" valign=3D"bottom" style=3D"border:solid #AAA=
AAA 1.0pt;border-top:none;background:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4p=
t">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:black">Total: 20</span></b><span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black"><o=
:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"background:transparent;padding:.=
75pt .75pt .75pt .75pt">
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
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:white;padding:2.4pt 2.4pt 2.4pt 2.4pt">
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
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">BLOCKED<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">17<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">FAILED<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">7<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">PASSED<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black">1015<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" colspan=3D"2" valign=3D"bottom" style=3D"border:solid #AAAA=
AA 1.0pt;border-top:none;background:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt=
">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:black">Total: 1039</span></b><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:white;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><img border=3D"0" id=3D"_x0=
000_i1025" src=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;chs=3D432=
x120&amp;chd=3Dt:&amp;chd=3Dt:17,7,1015&amp;chco=3DFFFF66|FF9933|00FF00&amp=
;chl=3DBLOCKED(17)&#43;2%25|FAILED(7)&#43;1%25|PASSED(1015)&#43;98%25"><o:p=
></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black;display:none"><o:p>&nbsp;</o=
:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
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
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:white;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black=
"><img border=3D"0" id=3D"_x0000_i1026" src=3D"http://chart.apis.google.com=
/chart?cht=3Dbvg&amp;chs=3D372x120&amp;chbh=3Da&amp;chds=3D0,3&amp;chxt=3Dy=
&amp;chxr=3D0,0,3,1&amp;chd=3Dt:&amp;chd=3Dt:2,3,2&amp;chco=3D3366FF|FF0000=
|33FF33&amp;chdl=3DACCEPTED(2)29%25|NEW(3)43%25|RESOLVED(2)29%25&amp;chtt=
=3DBug&#43;Status" alt=3D"Bug Status"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:white;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none;background-position:initial initial;background-repeat:initia=
l initial" id=3D"sortable_table_id_0">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">ID<a href=3D"https://wiki.yoctoproject.org/wik=
i/WW18_-_2014-04-28_-_Full_Pass_Release_Dora_1.5.2_rc3"><span style=3D"colo=
r:#5A3696;text-decoration:none"><img border=3D"0" id=3D"_x0000_i1027" src=
=3D"https://wiki.yoctoproject.org/wiki/skins/common/images/sort_none.gif" a=
lt=3D"?"></span></a><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Priority<a href=3D"https://wiki.yoctoproject.o=
rg/wiki/WW18_-_2014-04-28_-_Full_Pass_Release_Dora_1.5.2_rc3"><span style=
=3D"color:#5A3696;text-decoration:none"><img border=3D"0" id=3D"_x0000_i102=
8" src=3D"https://wiki.yoctoproject.org/wiki/skins/common/images/sort_none.=
gif" alt=3D"?"></span></a><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status<a href=3D"https://wiki.yoctoproject.org=
/wiki/WW18_-_2014-04-28_-_Full_Pass_Release_Dora_1.5.2_rc3"><span style=3D"=
color:#5A3696;text-decoration:none"><img border=3D"0" id=3D"_x0000_i1029" s=
rc=3D"https://wiki.yoctoproject.org/wiki/skins/common/images/sort_none.gif"=
 alt=3D"?"></span></a><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Resolution<a href=3D"https://wiki.yoctoproject=
.org/wiki/WW18_-_2014-04-28_-_Full_Pass_Release_Dora_1.5.2_rc3"><span style=
=3D"color:#5A3696;text-decoration:none"><img border=3D"0" id=3D"_x0000_i103=
0" src=3D"https://wiki.yoctoproject.org/wiki/skins/common/images/sort_none.=
gif" alt=3D"?"></span></a><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Runs<a href=3D"https://wiki.yoctoproject.=
org/wiki/WW18_-_2014-04-28_-_Full_Pass_Release_Dora_1.5.2_rc3"><span style=
=3D"color:#5A3696;text-decoration:none"><img border=3D"0" id=3D"_x0000_i103=
1" src=3D"https://wiki.yoctoproject.org/wiki/skins/common/images/sort_none.=
gif" alt=3D"?"></span></a><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Description<a href=3D"https://wiki.yoctoprojec=
t.org/wiki/WW18_-_2014-04-28_-_Full_Pass_Release_Dora_1.5.2_rc3"><span styl=
e=3D"color:#5A3696;text-decoration:none"><img border=3D"0" id=3D"_x0000_i10=
32" src=3D"https://wiki.yoctoproject.org/wiki/skins/common/images/sort_none=
.gif" alt=3D"?"></span></a><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Version<a href=3D"https://wiki.yoctoproject.or=
g/wiki/WW18_-_2014-04-28_-_Full_Pass_Release_Dora_1.5.2_rc3"><span style=3D=
"color:#5A3696;text-decoration:none"><img border=3D"0" id=3D"_x0000_i1033" =
src=3D"https://wiki.yoctoproject.org/wiki/skins/common/images/sort_none.gif=
" alt=3D"?"></span></a><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Target Milestone<a href=3D"https://wiki.yoctop=
roject.org/wiki/WW18_-_2014-04-28_-_Full_Pass_Release_Dora_1.5.2_rc3"><span=
 style=3D"color:#5A3696;text-decoration:none"><img border=3D"0" id=3D"_x000=
0_i1034" src=3D"https://wiki.yoctoproject.org/wiki/skins/common/images/sort=
_none.gif" alt=3D"?"></span></a><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Age (days)<a href=3D"https://wiki.yoctoproject=
.org/wiki/WW18_-_2014-04-28_-_Full_Pass_Release_Dora_1.5.2_rc3"><span style=
=3D"color:#5A3696;text-decoration:none"><img border=3D"0" id=3D"_x0000_i103=
5" src=3D"https://wiki.yoctoproject.org/wiki/skins/common/images/sort_none.=
gif" alt=3D"?"></span></a><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D3936"><span style=3D"color:#5A3696;text-decoration:none">3936</span><=
/a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">Medium<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">ACCEPTED<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><a href=3D"https://bugzilla=
.yoctoproject.org/tr_show_run.cgi?run_id=3D2321"><span style=3D"color:#5A36=
96;text-decoration:none">2321</span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">[beagleboard xM] Some error=
 message with usbhs_omap in dmesg<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.4<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.6<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">426<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D4005"><span style=3D"color:#5A3696;text-decoration:none">4005</span><=
/a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">Low<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">NEW<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><a href=3D"https://bugzilla=
.yoctoproject.org/tr_show_run.cgi?run_id=3D2297"><span style=3D"color:#5A36=
96;text-decoration:none">2297</span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">dmesg log errors in Atom-PC=
<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.3.1<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.7<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">413<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D5163"><span style=3D"color:#5A3696;text-decoration:none">5163</span><=
/a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">Medium<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">ACCEPTED<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><a href=3D"https://bugzilla=
.yoctoproject.org/tr_show_run.cgi?run_id=3D2305"><span style=3D"color:#5A36=
96;text-decoration:none">2305</span></a><a href=3D"https://bugzilla.yoctopr=
oject.org/tr_show_run.cgi?run_id=3D2301"><span style=3D"color:#5A3696;text-=
decoration:none">2301</span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">no external tools displayed=
 when first trying to run QEMU - test case 48 failed on Ubuntu 12.04 x86-64=
 host(build 1.5 M4 rc2)<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.5<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.7<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">229<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D5182"><span style=3D"color:#5A3696;text-decoration:none">5182</span><=
/a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">Medium&#43;<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">RESOLVED<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">WONTFIX<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><a href=3D"https://bugzilla=
.yoctoproject.org/tr_show_run.cgi?run_id=3D2322"><span style=3D"color:#5A36=
96;text-decoration:none">2322</span></a><a href=3D"https://bugzilla.yoctopr=
oject.org/tr_show_run.cgi?run_id=3D2321"><span style=3D"color:#5A3696;text-=
decoration:none">2321</span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">[Beagleboard xM]X can not s=
tartup with 3.10 kernel<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.5<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.5.1<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">227<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D5760"><span style=3D"color:#5A3696;text-decoration:none">5760</span><=
/a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">Low<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">NEW<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><a href=3D"https://bugzilla=
.yoctoproject.org/tr_show_run.cgi?run_id=3D2305"><span style=3D"color:#5A36=
96;text-decoration:none">2305</span></a><a href=3D"https://bugzilla.yoctopr=
oject.org/tr_show_run.cgi?run_id=3D2301"><span style=3D"color:#5A3696;text-=
decoration:none">2301</span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">headless build takes took l=
ong<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.6<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.6<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">91<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D5834"><span style=3D"color:#5A3696;text-decoration:none">5834</span><=
/a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">Medium<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">NEW<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><a href=3D"https://bugzilla=
.yoctoproject.org/tr_show_run.cgi?run_id=3D2300"><span style=3D"color:#5A36=
96;text-decoration:none">2300</span></a><a href=3D"https://bugzilla.yoctopr=
oject.org/tr_show_run.cgi?run_id=3D2307"><span style=3D"color:#5A3696;text-=
decoration:none">2307</span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Cannot wake from suspend st=
ate using the USB mouse or keyboard<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.6<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.6<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">70<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid #AAAAAA 1.0pt;borde=
r-top:none;background:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D5892"><span style=3D"color:#5A3696;text-decoration:none">5892</span><=
/a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">Medium<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">RESOLVED<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">FIXED<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><a href=3D"https://bugzilla=
.yoctoproject.org/tr_show_run.cgi?run_id=3D2310"><span style=3D"color:#5A36=
96;text-decoration:none">2310</span></a><o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Deploy image does not alway=
s write correctly to USB<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.6<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">1.6 M4<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid #AAAAAA 1.0pt;border-right:solid #AAAAAA 1.0pt;backgro=
und:transparent;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">60<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td nowrap=3D"" colspan=3D"9" valign=3D"bottom" style=3D"border:solid #AAAA=
AA 1.0pt;border-top:none;background:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt=
">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:=
black">Total: 7</span></b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:18.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:black">Distro testing</span>=
</u></b><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Here are the distro testing=
 results for 1.5.2.rc3 release. The distribution hosts used are Fedora 20, =
OpenSuse 13.1, CentOS 6.5 and Ubuntu 13.10. We have also
 performed manual distro tests on Ubuntu 14.04.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"1796" style=3D"width:677.0pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:14.0pt">
<td width=3D"475" nowrap=3D"" valign=3D"bottom" style=3D"width:179.0pt;bord=
er:solid windowtext 1.0pt;background:#DA9694;padding:.75pt .75pt 0in .75pt;=
height:14.0pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">BRANCH<o:p></o:p></span>=
</b></p>
</td>
<td width=3D"661" nowrap=3D"" valign=3D"bottom" style=3D"width:249.0pt;bord=
er:solid windowtext 1.0pt;border-left:none;background:#DA9694;padding:.75pt=
 .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">sgw/dora-next<o:p></o:p></s=
pan></p>
</td>
<td width=3D"661" nowrap=3D"" valign=3D"bottom" style=3D"width:249.0pt;bord=
er:solid windowtext 1.0pt;border-left:none;background:#DA9694;padding:.75pt=
 .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">dora<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;background:#DA9694;padding:.75pt .75pt 0in .75pt;height:14.0p=
t">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">COMMIT<o:p></o:p></span>=
</b></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#DA9694;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">9b7d43963f54d25e087a4cc5562=
3a4cfeac121a9<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#DA9694;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">6a92f7ede3be3edd58d7819aa61=
1b0c5270756bf<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;background:#DA9694;padding:.75pt .75pt 0in .75pt;height:14.0p=
t">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">RELEASE<o:p></o:p></span=
></b></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#DA9694;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">1.5.2 RC3<o:p></o:p></span>=
</p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#DA9694;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">1.5.2 RC3<o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;background:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0p=
t">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Fedora 20<o:p></o:p></sp=
an></b></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">FAILED - 6264<o:p></o:p></s=
pan></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">FAILED - 6264<o:p></o:p></s=
pan></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;background:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0p=
t">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">OpenSuSE 13.1<o:p></o:p>=
</span></b></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">FAILED - 6301<o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">FAILED - 6264<o:p></o:p></s=
pan></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;background:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0p=
t">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Ubuntu 13.10<o:p></o:p><=
/span></b></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">FAILED - 6269<o:p></o:p></s=
pan></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">FAILED - 6269<o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">FAILED - 6264<o:p></o:p></s=
pan></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;background:#8DB4E2;padding:.75pt .75pt 0in .75pt;height:14.0p=
t">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">CentOS 6.5<o:p></o:p></span></b></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#8DB4E2;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#8DB4E2;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">FAILED - 6264<o:p></o:p></s=
pan></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:18.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:black">Performance test</spa=
n></u></b><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">The build performance test =
data is available on the 1.5.2 performance_test wiki. The below charts refl=
ects the data tables in the wiki which shows an overall
 similar build performance, even though there are slight degradations obser=
ved from the trend.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Trend for building core-ima=
ge-sato (rm_work):<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><img border=3D"0" width=3D"=
1208" height=3D"917" id=3D"_x0000_i1036" src=3D"cid:image001.jpg@01CF6BA3.E=
84B1630"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">The trend for building the =
virtual/kernel:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><img border=3D"0" width=3D"=
1310" height=3D"839" id=3D"_x0000_i1037" src=3D"cid:image002.jpg@01CF6BA3.E=
84B1630"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">The trend for building the =
rootfs:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><img border=3D"0" width=3D"=
1166" height=3D"1072" id=3D"_x0000_i1038" src=3D"cid:image003.jpg@01CF6BA3.=
E84B1630"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Regards,<o:p></o:p></span><=
/p>
</div>
<div>
<pre style=3D"white-space:pre-wrap"><span style=3D"color:black">--<o:p></o:=
p></span></pre>
<pre><span style=3D"color:black">Alexandru Georgescu<o:p></o:p></span></pre=
>
<pre><span style=3D"color:black">Yocto QA Engineer<o:p></o:p></span></pre>
<pre><span style=3D"color:black">SSG/SSD Open Source Technology Center Roma=
nia<o:p></o:p></span></pre>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E961B6A4BD5IRSMSX104gercor_--

--_006_1FFB62CE8AEB0D4298B51122D8903E961B6A4BD5IRSMSX104gercor_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=83060;
	creation-date="Fri, 09 May 2014 13:29:55 GMT";
	modification-date="Fri, 09 May 2014 13:29:55 GMT"
Content-ID: <image001.jpg@01CF6BA3.E84B1630>
Content-Transfer-Encoding: base64

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
6OjTcrXIqb8jtF9x5w/yfSTuSxmZl3nc1jauqr9qnSu2Zx1Wo5KtSFqtavNzdVX71OX9yvXZ64jg
7Ok5rn6Q4XZ/bKXA01rcKk0Kvc/Xe3V1VefM63HbfYu+qMnc6rIviJ6PvNPYbG17uD354YpGpPIm
jmouvM3MrsFjLyOdWbw0i9rPoqvrQlNNyIiYnLVy5wlyqaa6ZpnxiXTRyMmYj43Ne1epWrqinrnr
2Hy3TPbEWE65Kir9sbv8lO42f2mp56H9UvR2ET0onLzT7O9DdF6Kp5Z0l5r/AAdVunnonmp8Y/de
gA7PGAAAAAAAAAAAAAAAAAADkJv/AJnwf4Jf6nWnJTf/ADPg/wAEv9TrTFHX1d73w+kPQANuAAAA
AAx2HL312w46b9HpjOF1/V9Jvb2nrOo0POnqExlqivknOIn1cFkszthi5qcdluLV1yZIIt1HL6S9
/qLDXbruw3/7xtv/ALS2b/8AUW/0OuQ5xTmZjL0VXIiimqKY1z082lieP4CP9K9BxfPf6HXd+7U3
gDo8szmcsgAAAAABgDIMaoNQMgwZAAAAAAMFbl87Swkcb7z3NbIqo3daqlkRSwRzInSMa5E6t5EX
Qk56LTjOuznvn/g/Hl/5ShPlAwKpqlh6p3pGpa5GnWTHWFSCJFSN37CdxTbC1YZNlqrnwxuX0uas
RV6zH5s4y9ERZmiasT9f+LDFbVY3MWVr05HOkRu9orFTkXSEMdaGFdY4mNXva1EJTcZ6vPVNMzpD
0ACoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABgyYAwimllMrXxFN1i29GsTqTtcvch4
y+XrYai6zafoicmtTrcvch86hhyW3eZWSRXR1mLzX9mNvcnepxru8v5adZezheF7SJuXJxRG8/6e
rFrK7c5PoYGqyqxeTf2WJ3u71O7wWzlPA10SFqPnVPTlcnNf8kNvF4yriKba9SNGMTrXtcvepu6i
3a5fzVayvEcZzx2dqOWiOn+2SOb+wk/4V/oSdhDalZFWkV66Jur/AEOzxxu5v5O/7su/xMv9TqTl
fk8e1NnVYqpv8RIun3nVGaO7Dpf95V6op4IrMTop42yRuTRWuTVFPnm0GyFnDzfpHCvk3GLvKxv0
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
zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4
k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R
0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6
Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm
+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zf
J8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4
Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0d
jxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox
4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T
4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8
R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag
6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djx
m+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4z
fJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k
4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0
djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6Ox4zfJ8R0djxm+T4k4Ag6O
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
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMIRWLEdWvJPO5G
RRtVznL2IhKUu16PXZXIozr6Fdfs7STOIyRrLVx22Va9dggfUtVmWdeHmlZoyXTu7vvNu7tLRpZm
pi1cslqy/d3WaLuetxS5+aCbF7PNqPYr3WYlh3V7ETnp9wzuMp09p8HPXrsjmntudI9Oty6dpfD1
wRr9MuzKentLRv52bFVXLLLDHvvkborE56aa95N+jqrsrZsrNI6aaFI3xLL6KN70b2L6znsfj62M
2+nr0YGQs/R+qNb2rvdYXGjbsbcU4LcjUrWpKkUiRS22N1jY7u7zopZ4oKz7Ej0bExqvV3Yidepx
Faau35M77ZHMRzVlbImvPf31/n1G1ex6M2Vs2kmkdddjWxyRLJ6KNROvd7F9ZJ0pykay3sftnWvX
YIHVLUEVpVSvPI30JVTu7vvPFjbenXtStSrakqQyJFLbY3WNju7v5GjtBLDNs7gm0nsWR88PQbq9
yc9CKtNWb8nOTbI5iPa6Zsqa899XL/PqH7Ea483ctcj2o5q6oqaoqdp6K/BNkbg6TZv7RIGb326F
gWd8JE5jLIK3IVspLM11C/BWjRujmyV+kVV79d5DV4HaH65qfgvzhV4Cj4HaH65qfgvzjgdofrmp
+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2h+uan4L84F4Cj4HaH65qfgvzjg
dofrmp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2h+uan4L84F4Cj4HaH65q
fgvzjgdofrmp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2h+uan4L84F4Cj4
HaH65qfgvzjgdofrmp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2h+uan4L8
4F4Cj4HaH65qfgvzjgdofrmp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2h+
uan4L84F4Cj4HaH65qfgvzjgdofrmp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/
OOB2h+uan4L84F4Cj4HaH65qfgvzjgdofrmp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdof
rmp+C/OOB2h+uan4L84F4Cj4HaH65qfgvzjgdofrmp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXg
KPgdofrmp+C/OOB2h+uan4L84F4Cj4HaH65qfgvzjgdofrmp+C/OBeAo+B2h+uan4L844HaH65qf
gvzgXgKPgdofrmp+C/OOB2h+uan4L84F4Cj4HaH65qfgvzjgdofrmp+C/OBeAo+B2h+uan4L844H
aH65qfgvzgXgKPgdofrmp+C/OOB2h+uan4L84F4Cj4HaH65qfgvzjgdofrmp+C/OBeAo+B2h+uan
4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2h+uan4L84F4Cj4HaH65qfgvzjgdofrmp+C/OBeAo+B
2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2h+uan4L84F4Cj4HaH65qfgvzjgdofrmp+C/O
BeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2h+uan4L84F4Cj4HaH65qfgvzjgdofr
mp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2h+uan4L84F4Cj4HaH65qfgvz
jgdofrmp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2h+uan4L84F4Cj4HaH6
5qfgvzjgdofrmp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2h+uan4L84F4C
j4HaH65qfgvzjgdofrmp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2h+uan4
L84F4Cj4HaH65qfgvzjgdofrmp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+C/OOB2
h+uan4L84F4Cj4HaH65qfgvzjgdofrmp+C/OBeAo+B2h+uan4L844HaH65qfgvzgXgKPgdofrmp+
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
AAAAAAAAAAH/2Q==

--_006_1FFB62CE8AEB0D4298B51122D8903E961B6A4BD5IRSMSX104gercor_
Content-Type: image/jpeg; name="image002.jpg"
Content-Description: image002.jpg
Content-Disposition: inline; filename="image002.jpg"; size=63222;
	creation-date="Fri, 09 May 2014 13:29:55 GMT";
	modification-date="Fri, 09 May 2014 13:29:55 GMT"
Content-ID: <image002.jpg@01CF6BA3.E84B1630>
Content-Transfer-Encoding: base64

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
tmVbA43CqmtptDGNpElnnfK6JZbaysS63evE3NGJXLgMTY53M1J3MV9QnlSbffvIt5Olul7XS/AI
qKqoipdDiW9mpdIqSfD5mytmWVssqSq6Z71vZHNXc1LbxgCQR1mFzU8+tW1LHdtbrXV3fdydyotk
E5l5O4AMHK+/koip61AzBHeXlb1F5eVvUCQEd5eVvUXl5W9QJAR3l5W9ReXlb1AkBHeXlb1F5eVv
UCQEd5eVvUXl5W9QJAR3l5W9ReXlb1AkBHeXlb1F5eVvUCQEd5eVvUXl5W9QJAR3l5W9ReXlb1Ak
BHeXlb1F5eVvUCQEd5eVvUXl5W9QJAR3l5W9ReXlb1AkBHeXlb1F5eVvUCQEd5eVvUXl5W9QJAR3
l5W9ReXlb1AkBHeXlb1F5eVvUCQEd5eVvUXl5W9QJAR3l5W9ReXlb1AkBHeXlb1F5eVvUDJdxT4v
/auFf9df5KWqrJb8repUYsr/AMVwq7W/0y9/qUmXRvh+r6/wuz0jvLyt6i8vK3qVhICO8vK3qLy8
reoEgI7y8reovLyt6gSAjvLyt6i8vK3qBICO8vK3qLy8reoEgI7y8reovLyt6gSAjvLyt6i8vK3q
BICO8vK3qLy8reoEgI7y8reovLyt6gSAjvLyt6i8vK3qBICPWl5W9RrScreoEgItaTlb1PdaTlb1
AkBHrS8reovLyt6gSAjvLyt6i8vK3qBICO8vK3qLy8reoEgI7y8reovLyt6gSAj1peVvUXl5W9QJ
AR60vK3qNaXlb1AkBHeXlb1F5eVvUCQEd5eVvUXl5W9QJAR3l5W9ReXlb1AkBHeXlb1PNaREVVa1
ET1gSA0Pxak8XTfNQfi1J4qm+ahNxfDl7N+wNH8WpPF0vzUJYKxlTfIkiltv1H3sNw8NnZtAjvLy
t6i8vK3qVEgI7y8reovLyt6gSAjvLyt6i8vK3qBICO8vK3qLy8reoEgI7y8reovLyt6gSAjvLyt6
i8vK3qBICO8vK3qLy8reoEgI7y8reovLyt6gSAjvLyt6i8vK3qBICO8vK3qLy8reoEgI7y8reovL
yt6gSAjvLyt6i8vK3qBICO8vK3qLy8reoEgI7y8reovLyt6gSAjvLyt6i8vK3qBICO8vK3qLy8re
oEgI7y8reovLyt6gSAjvLyt6i8vK3qBICO8vK3qLy8reoEgI7y8reovLyt6gSAjvLyt6i8vK3qBI
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
K9FGazivRQJAR5rOK9FGazivRQJAR5rOK9FGazivRQJAR5rOK9FGazivRQJAR5rOK9FGazivRQJA
R5rOK9FGazivRQJAR5rOK9FGazivRQJAR5rOK9FGazivRQJAR5rOK9FGazivRQJAR5rOK9FGaziv
RQJAR5rOK9FGazivRQJAR5rOK9FGazivRQJAR5rOK9FGazivRQJARZzOK9FJEW6XQD0AAAAAKfFM
DTEZ0niqpqWbLWJ74rXexduqt/5lwAKCq0Xhl1Up6melYsbYZWx286xNyLfd37uJaw0uRL5EjkhR
iMZDZNVtu/ibQGxS/s7AmEtomTSty5c6KVLazH3VUVO7vJKHB30UTtWsnfPJIkkszkbrSepUtZE9
xagHVSU2jUMFYyTtMz6aNznxUrrajFdvXiu9d/EYfo5HQ1jJVqp5YoEVKeF9tWFF4W2r+peAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMV3FNo5/xP+Pl/wAi5XcU2jn/
ABP+Pl/yJ3ax9NXYAKyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAMHqqMcrUutthQ6MOkc/EkcnkrWSKq279h0ClLo7/AMT/AI+X/Il6xrH01dgArIAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYOkYy2u5rb7Eu
trgZgwdIxiojnNRV3XW1zMADFFRUuiovuCKipdFRU9QGQMEkYr1Yjmq5N6X2oGyMc5Wtc1VTeiLu
AzAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAGKqjUVVVERN6qa34jSeJg+YhsOaj2q1yXaqWVOJpfgeHeEi6Eu+yzXdL+I0niofjQfiN
J4mD5iFJi+E0MdfhbWUsaI6dUciJvTVUtfwTDvBxdBut3HCSXnzbcVRFOirFIyRE36rkWxKa9LRU
9Ejkp4mxo5brqpvNgrndb5PQAAAAAAAAAAAAAAAAAAAAAxcqo1VRLqibuJkAKX8WxP8AuKo+fH9y
Go0grKRY0mwaobmvSNnnmLdy7k3l8U+PImvh38ZGZssnV1wuNurj/J+LYl/cU/z4/ubdBV1NSj+0
0ElLq7td7Xa3Q3QXV92LlLOUZAArIAAAAAAADFdxTaOf8T/j5f8AIuV3FNo5/wAT/j5f8id2sfTV
2ACsgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
PDk9IWUUuNuZir2tp20LnRa62RJNZdrfasdYQz0sFSjUqIIpdVbt12I6y+q5NLLpws3Z52SuxibV
lZQxLSrItlR11urfa2NOqgSeqo0jfW5cz6dusxrU141VNruJvy0lPOrHTQRSKz8qvYi6vuvuM0iY
kiyIxqPVLK621U95q3e2Zy05DCZayn0MjjoUkmldM+JZd7mJdbv9am5oxJq4BExsz4UZUOZrToiu
k27tvep0jI2Rs1WNa1ODUshisETkRHRsVEXWRFamxeJFriKDIbLRzwSr+LvnlSoai3kVt1/MnBEt
YkwHszKzC5KWVFrpWP7a1Fu5eKv4Le287FlLTsqHTsgibM780iMRHL713iOlp4ZXyxQxMkf+Z7WI
iu9695ZS82wYO17+SjbeszBBF532OqjzvsdVJQBF532OqjzvsdVJQBF532OqjzvsdVJQBF532Oqj
zvsdVJQBF532OqjzvsdVJQBF532OqjzvsdVJQBF532OqjzvsdVJQBF532OqjzvsdVJQBF532Oqjz
vsdVJQBF532OqjzvsdVJQBF532OqjzvsdVJQBF532OqjzvsdVJQBF532OqjzvsdVJQBF532Oqjzv
sdVJQBF532OqjzvsdVJQBF532OqjzvsdVJQBF532OqjzvsdVJQBF532OqjzvsdVJQBF532Oqjzvs
dVJQBF532OqjzvsdVJQBF532OqjzvsdVJD0CLzvsdVHnfY6qSgCLzvsdVHnfY6qSgCLzvsdVHnfY
6qSgCLzvsdVHnfY6qSmKva38zkT3qBh532OqjzvsdVMsxnO3qMxnM3qBj532OqjzvsdVMsxnM3qZ
gRed9jqo877HVSUARed9jqo877HVSUARed9jqo877HVSUARed9jqo877HVSUAUeM6/4jhN0bftC9
/sqW/nfY6qVeNf2lhP8AEL/hUt1MzrW8vTj/AN3Yed9jqo87wZ1UlBphF532OqjzvsdVJQBF532O
qjzvsdVJQBF532OqjzvsdVJQBF532OqjzvsdVJBcCPzvsdVHnfY6qSXFwI/O+x1Ued9jqpKAIvO+
x1Ued9jqpKAIvO+x1Ued9jqpKAIvO+x1Ued9jqpKAIvO+x1UqMezNfDroz+uM7y7Of0kleybD0am
xKljkXipMujeHWLzzvBnVR53gzqpkxVcxFVLKqbjMrCLzvsdVHnfY6qSgCLzvsdVHnfY6qSgCLzv
sdVHnfY6qSgCLzvsdVHnfY6qSngEa5tv3OqlPo7r/wC07I3+vy9/uLtdxTaOf8T/AI+X/IndrH01
bed9jqo877HVSQ9Kyi877HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoAi877HVR532Oqko
Ai877HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoA
i877HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoAi
877HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoAi8
77HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoAi877HVR532OqkoAi87
7HVSRL227z0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHgIppUghfI5r3IxL2Y26r7kKr9p
YfA4l/8AUeS2TquONvSLoFE7SukZKyN9LiDZJL6jVpX3dbfYz/aWHwOJf/UeTxRry8vZdA06DEG4
hE6RkM8SIuraaNWKv6Kbhpiyy6r0AAAAAAAAAAAAAAAAAAAAAI5GufG5rXK1ypZHJ3eskAFN+E4j
/fEvyk+5pV0GJUtXRwtxaRUnkViqsabNlzpLFNi6J+KYV/11/kpmyadcM7bz/iPfwnEf73k+Un3N
2hpZ6ZjkqKp1QqrdFc1EsbiAskjFytmq9ABWQAAAAB53GjW4RR4g9r6qBJHNSyKqrsQ3gOpLZdxU
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
vMnUa7eZOoGQMddvMnUa7eZOoGQMddvMnUa7eZOoGQMddvMnUa7eZOoGQMddvMnUa7eZOoGQMddv
MnUa7eZOoGQMddvMnUa7eZOoGQMddvMnUa7eZOoGQMddvMnUa7eZOoGQMddvMnUa7eZOoGQMddvM
nUa7eZOoGQMddvMnUa7eZOoGQMddvMnUa7eZOoGQMddvMnUa7eZOoGQMddvMnUa7eZOoGQMddvMn
Ua7eZOoGQMddvMnUa7eZOoGQMddvMnUa7eZOoBdxTaOf8T/j5f8AIuFe235k6lNo45P9qbU/r8vf
7id41j6avAY67eZOo128ydSssgY67eZOo128ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZ
Oo128ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZO
o128ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZOo
128ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZOo1
28ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZOo128ydQMgY67eZOo12
8ydQMgY67eZOpkAAAAAACnxTBPxCoSohrJqWVY1he+NEXWYq3tt3e8uABQVOjEcmqlLVz0rFibDK
2Oy5rE3It929dqcS1hpVgk8iV2Q1iMZDZLNt333myBs0pU0dhTCWUTJ5WrHLnRSpbWY+6qi8O8mo
sHfRwqja2Z80kuZNM5EvJ6rbkT3FoAdVHT6NRwVbHrVTPponOfFSrbVYrt633rvXfxPcP0cbRVjJ
XVU00UCKlPC5ERsSLwttX9S8AAwVjXLdWoq+tDMAYZbORvQZbORvQzAGGWzkb0GW3lb0MwBjqN5W
9BqN5W9DIAY6jOVvQ8y2cjehmAMMtnI3oMtnI3oZgDDLZyN6DLZyN6GYAwy2cjegy2cjehmAMMtn
I3oMtnI3oZgDDLZyN6DLZyN6GYAwy2cjegy2cjehmAMMtnI3oMtnI3oZgDDLZyN6DLZyN6GYAwy2
cjegy2cjehmAMMtnI3oMtnI3oZgDDLZyN6DLZyN6GYAwy2cjegy2cjehmAMMtnI3oMtnI3oZgDDL
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

--_006_1FFB62CE8AEB0D4298B51122D8903E961B6A4BD5IRSMSX104gercor_
Content-Type: image/jpeg; name="image003.jpg"
Content-Description: image003.jpg
Content-Disposition: inline; filename="image003.jpg"; size=71905;
	creation-date="Fri, 09 May 2014 13:29:56 GMT";
	modification-date="Fri, 09 May 2014 13:29:56 GMT"
Content-ID: <image003.jpg@01CF6BA3.E84B1630>
Content-Transfer-Encoding: base64

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
N2VMboF8dZclslpYZmq2SNjkXihyarRC0VeVdSsa9f4mjualeLZa+P2XU8dMeyek0ltdaibCrjXP
FcHQbPE/7sjF+CoUyp+zWmVVdTVUrFXwVcIc9dB75RrmjrW6qdyay5HxNSOan4bst/BqY94WDTFc
utmPzH/gszPuN+B8ou1LpDRrTtrpnyIj/wBV/MbzLpphE/tpZnoicOwzGtiZzEuluwTNKxW9evV9
K/uP7nzZdI9KUVUWjkynoPaTSj8nJ0NfHjylz/lup/lH3fSgfN1vel0jPdoZUz4ohGy46ZPejdhO
mfFUHx48pP5dbrev3fTDGT5o92mjnKqSTNTgiHuODTWRud5kb6Kg+N/8yfy/HOpX7vpGcHI0gje6
3zvRFVqRqVHdNNfzbzWrotL4qd6VE8j4lauvhOzBJ1tvDJTsEZj89fusGgsTnWpjkRdVHr2luyfJ
rLXaQ0tE1LbBJJTo5V91OzPidJulektP2y0DnJ/qQldaIjeJb1P4debz3bRP1fR0X1Mr8T5037Ra
+FcVVAjPhk3YPtLo1RNvTyp/Khv4+n5uM/w7tEf259l3BWabT601GMudHnnTB0odJLVPjUrYsr4K
vabjUrPEvPbs2rTmsuqCCKsgm/DlY7PBSfPYbcpiY5RzSbGNX4zgo9uqHN06rJfFWdpd6jV2Dtfu
KHb/AN9qrW7tXtM26OmnO1vZf43a7EdxQ9niPGzbq92Ow9mnIAAAAAAAByp62RZVRi4ROw3KKoWe
Ndb7yEE9vV0iuY5EReJs01OlPHjOVXvUCcAAAAAAMAeURfQgq2QrHrTO1UTuUhuqXDdF/Rey22f+
p3FPvK6UMY19StJqomfdVcGZtjo6V0+9GcxC40TadXK6B+u5Dd+J82ss2klY9stHuydqp7yl0s6X
jVf+lt3/ANOyEWz0LafdjmHXABpzAAAAMAQ1LHSQOa3vKZRMc7S+dqIutqdxeSq0Kf8A17Wf0jNu
jrpRmLey0RNVsTUXvRD2YPLnNYmXKiInippyZ7Rk0J75bqb8Wrhb8XHJrNPLTSouHulxyJkxN6xz
LtTs+rfw1mVlTtBQqn7SmqmKKkc5y9yPRTSfpLpRcU/4WjfGi+LE7jnOvXpu9Nf4brc2xX3l9IdI
xie85E+K4NKqvdBRtVZ6qNuPXJRU0c0oubc1VXqovfrLg3KX7NWuTNZWSKvBFyT4mpPhq1+F7PT5
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
21qPqaV+ssXmt5Tvgep6KhaqC5XG/OutZSJb4XRrHLSvVHLN2d6qWOitFBbXPdRUkMDn/eWNiJk3
EAPdkAAAAAAAGlc6L9I26am1tVXtVGu4L4KU2ai0guVJBaJqHYPpXJqXFXIqdniiF+BI2nI5zbJQ
Omiqaikglq2ImZlYmsqonfk6QBQAAAAADHehkAU2qp7tZLhWNoretxoq7+BrkbsuzC5z3m5Y9Gdn
Zkpb0yGrTaLJHG9uUiRf4U+BZfACNowIqenipYGw08bY4mJhrWphEJgAAAAAADUuMcsluqWU64ld
E5GKnguOw+duSj9nop4mObpDQPxrK1dZ8me1FXxTB9ONdaGmdUJOsLNqn8WO0RtOVzthXYtGVro3
VaSzUb65iLVQo7xx4cCw0NFFb6OOmgRUjjTCZ719VNkDLOPNkABQAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAABpU9zo6qtqKSCdj6inxtWJ3sz3ZM1VzpKKpp6eomayWpdqxNX+JT5pu1zm010ofa
rklA6FjZHe6i6+E/wbNFpTU3iTRqSeJqTSVDoXvVO9UT7yFrGeDjL6FUXOjpIZpZ52MZAmZVVfuJ
6ksFRFVU8c8D0fFI1HNcncqL4nxzd65KrTh01c6SGNqtfG7+JV7l/sdKhut60YorBVTXFtZQ1cbY
1pkanuJjsVFJXeI9cfqdZx0z+j6uaclzo4bjFQSTsbVStVzIl73Inep8u0n00ulvr5a2huM0kEUy
N2DIkWL4K7iTacaQT2bSax3inpFqJ3ULnbNqZ1cp3/AVjOM/vZZiYnD6uD5vVaWXCz/Z7HdX1W+1
VY5NVyNTEOt/D/Ym0Qv939ov0XcJZ6yGaHbJPLHqKxeXHAY/NMeSTxl9CBVtO9IKiwWWN9GiJNPK
2Fr1/gyuMmrap71Zamqhul0guMbafbNyqNkRcd2E8PUztiZ8lxO3quYPlLNJdIG2RmljrgxaR06s
W34TCNzjsXj2G+t0v+kGl8lPbritDRRUsdQ5moir296GsI+jg+Q1Om96q6u4VtJPOyK3ypGlM2LL
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
TIruzWRMIV37QFRYLZ2p/wC7QtcTm7Fnan3UMR4pdrx/SrPumB5128yDXbzIbcXoHnXbzINdvMgH
oHnXbzINdvMgGTlX2dzLbUsb4xOyv9jp67eZDnXuJktqqnI5Ec2Jy/QSteYcTQKdWWWGL+FVXBbS
qaAxMWwRTOVM5XCcC1a7eKGaeGGtX5ls+b2Dzrt5kGu3mQ0w9A867eZBrt5kA9A867eZBrt5kAjn
l2MSuTv8CnUk726Z1Mue1WpkuUiMlYrHKmFKhR0yLpvVRq5MI1FM26OunnFseS4xu142u4pk9nhq
sa1GoqYQzrt5kNOT0Dzrt5kGu3mQD0Dzrt5kGu3mQD0Dzrt5kGu3mQCsaa/h2/8A3CFli/CZ/KhU
tMapJNya3GGTZLNR1LJ6dq5RFREyZjxS7Xn+nWPdtg867eZBrt5kNOL0Dzrt5kGu3mQD0Dzrt5kG
u3mQDJqXT9l1X9J3+DZ128yHOvNUyK3VDEVFc6N3+CTwteYaWhf7Ai+KlgQrGhlS1tnjhcqZyuCy
67eZCV4hvVnN5eweddvMg128yGnN6B5128yDXbzIB6B5128yHlz01V1XJrY7APYwVeVdK1nfspKH
Z593Le3BzYbxpTPdpre1aJJYkyrtXsUxN8dHaNCZ3i0fdeU+BkrFJ7T70zepKLY597VTtLKj24+8
hqJy52p3euXsHnXbzINdvMhWXoHnXbzINdvMgHoHnXbzINdvMgHoHnXbzINdvMgHoHnXbzINdvMg
HoHnXbzINdvMgHoHnXbzINdvMgHoHnXbzINdvMgHoHnXbzINdvMgHoHnXbzINdvMgHoHnXbzINdv
MgHoHnXbzINdvMgGSm2zP/qLXpn/AKZcNdvFCnWtU/8AUa4dv/TMW5h30OL+y54MnnXbzINdvMht
wegeddvMg128yAegeddvMg128yAegeddvMg128yAegeddvMg128yAegeddvMg128yAegeddvMg12
8yAegeddvMg128yAegeddvMg128yAegeddvMg128yAegeddvMg128yAegeddvMg128yAegeddvMg
128yAegeddvMg128yAegeddvMg128yAegeddvMg128yAegeddvMg128yAegeddvMg128yAegeddv
Mg128yAegeddvMg128yAegeddvMhlHIvcuQMgAAAAAAAAAAAAAAA0rrSurLZPDH99zez4lSZU1l2
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
d6CNGUt9RjUXONVFO9aKaupGv/SNybVZ+72ImDapp4Zn6jomo7wNrYx8jegisQ1bVtaMTj7M7aPn
b1G2j529RsI+RvQbCPkb0NORto+dvUbaPnb1Gwj5G9BsI+RvQBto+dvUbaPnb1Gwj5G9DxJCxI3K
yNquROxMAeKieFsDtZzVThkpdC9qaXTuc5FbqdTo1FTpBIr2JbI1ZnsXKdxxobbpDFdH1n6PYuum
NXKHObPTTSmInMxx5r/HNEsbVa9uMcT1to+dvUrtBU3t1THHU26NkP8AE7KdhYtjHyN6G4nLhavd
2lnbR87eo20fO3qNhHyN6DYR8jehWTbR87eo20fO3qNhHyN6DYR8jegDbR87eo20fO3qNhHyN6Eb
0p41w/ZtX1VEApWlkLWTQqjk96X/AOS02pscFP8AfTC48TiaZLTrHRKx0WdsmcKhZWupUaia0Pdz
IZid5dbVxSs+6bbR87eo20fO3qeWxQuTLWsVOKHrYR8jehpyNtHzt6mWva/7rkXHAxsI+RvQy2Nr
M6rUTPAD2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAp+n/4Ns/3aFsh/CZ/KhU9P/wAG2f7t
C2Q/hM/lQxHil3v8qv1SAA24AAAAADByb/TbW21EiJnVid/g6xp3X9kVn9F/+FJPC15hXNBKbXtE
U+O5V7eJbkK19n/7rQfFSykp4Yb1oxqWj1egAacwAAAAAAAAAAAAAAAAwZAGDIAAAAAAAAAGPE1L
p+y6n+k7/Bt+JqXT9l1P9J3+CTw1XxQ5Whf7vRfzKWBO4r+hf7vRfzKWBO4lPDDWt8y3uyADTmAA
AAANS4Z3N+r97wKLSJJ7SVGM6+O0+hOYj2q1yZRSo26naum9c3+FqIpm08OmnGYt7LZT/gR578Ep
hEwiInchk05hhURe8yANWehpqpurNCx6eqHHqtCrPUouKZsbl8WFgM4MzSs8w601tTT8NphQ6r7N
Y0aq0dXIjvBHLhDnrZdK7I3NLUOlanhGucn0tEwDlOhXps9Vf4jq4xfFo9YfJrnf7nI+nS6UqsWF
+tlydri3WrTq11LGxPV0DkREXXTCDTOKN77drMautPhezvPdfoJa66NXMj2Uqp95O7oZiupWZ7s5
d7anZdWlfiV7ufJYoKmGqj14JWyNXxRckzVPms+i1+sEm2tlS6WNnb3/APwbNv8AtAqqR6Q3imci
+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
UWvXwWMxbmHfR4t7LsCHeWeo3lnqbcEwId5Z6jeWeoEwId5Z6jeWeoEwId5Z6jeWeoEwId5Z6jeW
eoEwId5Z6jeWeoEwId5Z6jeWeoEwId5Z6jeWeoEwId5Z6jeWeoEwId5Z6jeWeoEwId5Z6jeWeoEw
Id5Z6jeWeoEwId5Z6jeWeoEwId5Z6jeWeoEwId5Z6jeWeoEwId5Z6jeWeoEwId5Z6jeWeoEwId5Z
6jeWeoEwId5Z6jeWeoEwId5Z6jeWeoEwId5Z6nqOVJM4z2ASAAAAAAAAAAAAAAAA1a6lSuopady4
R7cZ4KViCy3uqdR0lxWBtJRyJI2Vjsvkx3IqFwMiNpydMKnWWq801XVttaQSUlWmHbR2FjynaqHU
pKGstVBQ0dKkcrGe7O564XHFDsGBG0YJ3VGqs96hlrKSg2D6GsXtdI7DokXvwht1Vuu9BS0cdofF
OyFmpJDP2Nf6ljBMbYXKu2e1XC3UlfUq2Hfap+0SFF/VsXgeq7RqG469ZK3UuD4dRXNd2IuPAsAK
kbK1S2Gutui7KSinalYz3su7WuXh8DzbrVc6m9w3K7RU8DqeNY2MgXOtnxUs4HXJPGGQABjCcEGE
4IZAHnCcDiXeK9vqkW2yQthx3O78ncBJjK1t3ZzhRrpo9pFd2QNqZ6fEMm0bhfE3kpdKmsRrZqbs
THeWsGe5Hm7T2i0xjEfZr0bZ20saVWqs2PeVO7JsYTggMm3CZyxhOCDCcEMgDGE4IMJwQyAPOEz3
Iad2RP0RV9ifgv8A8KbviaV1/ZFX/Rf/AIUk8NV8UONoAiey0PZ4qWXCcCs/Z/8AutD8VLMSnhhv
X+Zb3ZwnBBhOCGQacmMJwQYTghkAYwnBBhOCGQBjCcEGE4IZAGMJwQYTghkAYwnBBhOCGQBjCcEG
E4IZAGMJwQYTghkAYwnBBhOCGQBjCcEGE4IZAGMJwQYTghkAYwnBBhOCGQBjCcEGE4IZAGMJwQYT
ghkAYwnBBhOCGQBjCcEGE4IZAGMJwQYTghkAQ7rCq5WGPP8AKg3WHyY/+xCUBcyiSmgauUhjReKN
QlwnBDICMYTggwnBDIAxhOCDCcEMgDGE4IMJwQyAMYTggwnBDIAxhOCDCcEMgDGE4IMJwQyAMYTg
gwnBDIA84Tghp3dE/RFV2f8ASd/g3TSu/wCyKr+k7/BJ4ap4ocXQBE9mmdn/AFHFmwnArWgH7ss/
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

--_006_1FFB62CE8AEB0D4298B51122D8903E961B6A4BD5IRSMSX104gercor_--
