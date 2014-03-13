Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE80DE00AC1
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 05:28:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Mar 2014 05:28:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,647,1389772800"; 
	d="gif'147?jpg'147,145?png'147,145,150?scan'147,145,150,208,217,147,150,145";
	a="471594112"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga001.jf.intel.com with ESMTP; 13 Mar 2014 05:27:51 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 13 Mar 2014 12:27:45 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.221]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.144]) with mapi id
	14.03.0123.003; Thu, 13 Mar 2014 12:27:45 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Full Pass report for  Yocto 1.4.3 rc3 build
Thread-Index: Ac8+tlMzxVurqhLOTT2+L4RZuBwfVA==
Date: Thu, 13 Mar 2014 12:27:44 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E961A004476@IRSMSX101.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Full Pass report for Yocto 1.4.3 rc3 build
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
X-List-Received-Date: Thu, 13 Mar 2014 12:28:16 -0000
X-Groupsio-MsgNum: 18525
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_1FFB62CE8AEB0D4298B51122D8903E961A004476IRSMSX101gercor_";
	type="multipart/alternative"

--_006_1FFB62CE8AEB0D4298B51122D8903E961A004476IRSMSX101gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E961A004476IRSMSX101gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E961A004476IRSMSX101gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the full pass QA report for 1.4.3 rc3.
Issue summary:

-          #5941<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5941> =
- Hob cannot launch in Build Appliance.

-          #5942<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5942> =
- Kernel panic on qemux86-64 when using runqemu kvm option on Ubuntu 13.10

-          #5946<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5946> =
- LSB_Test.sh does not install some of the downloaded packages on 1.4.3 RC3

-          #5952<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5952> =
- ADT-installer: using gcc to build c projects failed under ppc architectur=
e with build 1.4.3
There are no High issues found in this build. The full pass report is avail=
able here: https://wiki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_Full_Pass=
_Release_1.4.3.rc3.

Testing data

 Test type:  Full Pass Release Test

 Branch: master

 Milestone: rc3

 Build name: 1.4.3

 poky commit: 7ab82abcad9ede847c42c01d2a4f4c2c18877e6f

 Eclipse Plugin commit - Juno:  dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20140306-3

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

2026<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2026> 2028<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2028>

ADT: dylan branch

Fedora 20 i686

94.0%

none

6.0%

5952<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5952>

0.0%

none

100.0%

2025<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2025> 2027<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2027>

ADT: dylan branch

Ubuntu 13.10 x86_64

94.0%

none

6.0%

5952<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5952>

0.0%

none

100.0%

2004<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2004>

BSP/QEMU: dylan branch

Atom PC

97.2%

none

2.8%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005> 4395<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4395>

0.0%

none

100.0%

2020<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2020>

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

2019<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2019>

BSP/QEMU: dylan branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

2017<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2017>

BSP/QEMU: dylan branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

2015<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2015>

BSP/QEMU: dylan branch

qemu-x86

97.2%

5937<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5937> 5938<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5938>

2.8%

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

0.0%

none

100.0%

2021<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2021>

BSP/QEMU: dylan branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

2022<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2022>

BSP/QEMU: dylan branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

2023<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2023>

BSP/QEMU: dylan branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

2016<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2016>

BSP/QEMU: dylan branch

qemux86-64

97.2%

5937<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5937> 5938<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5938>

2.8%

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

0.0%

none

100.0%

2018<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2018>

BSP/QEMU: dylan branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

2006<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2006> 2007<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2007>2008<https:=
//bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2008>

Eclipse Plugin: dylan branch

Ubuntu 13.10 x86_64

85.7%

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760> 5163<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163> 5720<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5720>5640<https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5640>

3.6%

none

10.7%

none

100.0%

2014<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2014>

Meta-yocto: dylan branch

Ubuntu 13.10 x86-64

90.0%

none

10.0%

5942<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5942> 5948<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5948>

0.0%

none

100.0%

2011<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2011> 2012<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2012>

Hob: dylan branch

Ubuntu 13.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2005<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2005> 2009<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2009>

OE-Core: dylan branch

Multiple environments

100.0%

none

0.0%

none

0.0%

none

100.0%

2010<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2010>

BitBake: dylan branch

Ubuntu 13.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2024<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2024>

Runtime: dylan branch

Multiple Environments

100.0%

5945<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5945> 5946<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5946>

0.0%

none

0.0%

none

100.0%

2013<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2013>

Build Appliance: dylan branch

qemu-kvm on Ubuntu 12.04 libvirt

25.0%

none

25.0%

5941<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5941>

50.0%

5941<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5941>

100.0%

Total: 19



Test Case Status Report

Status

Count

BLOCKED

5

FAILED

17

PASSED

756

Total: 778


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:5,17,756&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(5)+1%25|FAILED(17)+2%25=
|PASSED(756)+97%25]



Bug Status Report


ID[?]<https://wiki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_Full_Pass_Rele=
ase_1.4.3.rc3>

Priority[?]<https://wiki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_Full_Pas=
s_Release_1.4.3.rc3>

Status[?]<https://wiki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_Full_Pass_=
Release_1.4.3.rc3>

Resolution[?]<https://wiki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_Full_P=
ass_Release_1.4.3.rc3>

Test Runs[?]<https://wiki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_Full_Pa=
ss_Release_1.4.3.rc3>

Description[?]<https://wiki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_Full_=
Pass_Release_1.4.3.rc3>

Version[?]<https://wiki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_Full_Pass=
_Release_1.4.3.rc3>

Target Milestone[?]<https://wiki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_=
Full_Pass_Release_1.4.3.rc3>

Age (days)[?]<https://wiki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_Full_P=
ass_Release_1.4.3.rc3>

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

Medium

ACCEPTED

2016<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2016> 2015<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2015>

Windows switching failure

1.2

1.6

622

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

ACCEPTED

2020<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2020>

[beagleboard xM] Some error message with usbhs_omap in dmesg

1.4

1.6

373

3937<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3937>

Medium

REOPENED

2020<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2020>

[beagleboard xM] Watchdog doesn't work

1.4

1.6

373

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

2004<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2004>

dmesg log errors in Atom-PC

1.3.1

1.5

360

4395<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4395>

Medium

VERIFIED

WORKSFORME

2004<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2004>

[FRI2] ssh keys cannot be loaded

1.4

1.5

317

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

Medium

REOPENED

2006<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2006>

no external tools displayed when first trying to run QEMU - test case 48 fa=
iled on Ubuntu 12.04 x86-64 host(build 1.5 M4 rc2)

1.5

1.6

176

5291<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5291>

Medium

NEW

2007<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2007>

eclipse console doesn't display parsing results for bitbake recipes

1.5

1.6

157

5640<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5640>

Medium

NEW

2007<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2007>

systemtap output is useless in Juno

1.6

1.6

90

5720<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5720>

Undecided

RESOLVED

NOTABUG

2006<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2006>

error when creating a local Bitbake Commander project with an existing git =
clone

1.5

---

52

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>

Low

NEW

2006<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2006>

headless build takes took long

1.6

1.6

38

5937<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5937>

Medium

RESOLVED

INVALID

2016<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2016> 2015<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2015>

[QEMUX86]g++ project compilation fails

1.4.3

1.4.3

NEW

5938<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5938>

Medium

RESOLVED

INVALID

2015<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2015> 2016<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2016>

[QEMUX86]gcc project compilation fail

1.4.3

1.4.3

NEW

5939<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5939>

Undecided

RESOLVED

INVALID

2007<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2007>

Error found when launching Hob from Eclipse

1.4.3

---

NEW

5941<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5941>

Medium+

IN PROGRESS REVIEW

2013<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2013>

[1.4.3] [Build-Appliance] Hob can not startup

1.4.3

1.4.3

NEW

5942<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5942>

Medium+

IN PROGRESS REVIEW

2014<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2014>

[1.4.3] Kernel panic on qemux86-64 when using runqemu kvm option on Ubuntu =
13.10

1.4.3

1.4.3

NEW

5945<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5945>

Medium

IN PROGRESS REVIEW

2024<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2024>

lsbtest recipe will incorrectly pass do_install if host system has dash lin=
ked to /bin/sh

1.4

1.6 M4

NEW

5946<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5946>

Medium+

IN PROGRESS REVIEW

2024<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2024>

LSB_Test.sh does not install some of the downloaded packages on 1.4.3 RC3

1.4.3

1.4.3

NEW

5948<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5948>

Undecided

NEW

2014<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2014>

[1.4.3] crosstap doesn't work on qemuppc

1.4.3

---

NEW

5952<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5952>

Medium

NEW

2028<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2028> 2026<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2026>

ADT-installer: using gcc to build c projects failed under ppc architecture =
with build 1.4.3(2014-03-06)

1.4.3

1.4.3

NEW

Total: 19


On the performance side, 1.4.3 shows slight improvements against 1.4.1 and =
1.4.2. As a comparison, I included only 1.4.1, 1.4.2 and 1.4.3 builds, but =
all the data is available also on the Performance_test wiki<https://wiki.yo=
ctoproject.org/wiki/Performance_Test#1.4.1_.26_1.4.2_.26_1.4.3_Build_Time_r=
esults>.
[cid:image003.jpg@01CF3EC8.64D4E950]


Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E961A004476IRSMSX101gercor_
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
	{mso-list-id:804547475;
	mso-list-type:hybrid;
	mso-list-template-ids:-305524770 -472199236 67698691 67698693 67698689 676=
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the full pass QA report for 1.4.3 rc3.<o:p><=
/o:p></p>
<p class=3D"MsoNormal">Issue summary:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>#<a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5941">5941</a> &#8211; Hob cannot launch in Build Appliance.
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>#<a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5942">5942</a> - Kernel panic on qemux86-64 when using runqemu=
 kvm option on Ubuntu 13.10<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>#<a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5946">5946</a> - LSB_Test.sh does not install some of the down=
loaded packages on 1.4.3 RC3<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>#<a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5952">5952</a> - ADT-installer: using gcc to build c projects =
failed under ppc architecture with build 1.4.3<o:p></o:p></p>
<p class=3D"MsoNormal">There are no High issues found in this build. The fu=
ll pass report is available here:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_Full_Pass=
_Release_1.4.3.rc3">
https://wiki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_Full_Pass_Release_1.=
4.3.rc3</a>.<o:p></o:p></p>
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
;word-spacing:0px"><span style=3D"color:black"> Test type:&nbsp; Full Pass =
Release Test<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Milestone: rc3<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.4.3 <o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black">&nbsp;poky commit: 7ab82abcad9ede847c42c01d2a=
4f4c2c18877e6f<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit - Juno:&nbsp; dc9a609c=
68fe4a6bbbf34d418fd6611489c1d6f7<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/nightly/20140306-3<o:p></o:p></span></pre>
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
<span class=3D"mw-headline"><span style=3D"font-size:17.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p>=
&nbsp;</o:p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in">
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
n style=3D"font-size:9.5pt">Testing Summary Report</span></b><b><span style=
=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quo=
t;"><o:p></o:p></span></b></p>
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
g/tr_show_run.cgi?run_id=3D2026"><span style=3D"color:#5A3696">2026</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2028"><span style=3D"color=
:#5A3696">2028</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: dylan branch<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">94.0%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">6.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5952"><span style=3D"color:#5A3696">5952</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D2025"><span style=3D"color:#5A3696">2025</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2027"><span style=3D"color=
:#5A3696">2027</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: dylan branch<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">94.0%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">6.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5952"><span style=3D"color:#5A3696">5952</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D2004"><span style=3D"color:#5A3696">2004</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
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
g/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D4395"><span style=3D"color:#5A3696">4395=
</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D2020"><span style=3D"color:#5A3696">2020</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.0%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">3.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D3937"><span style=3D"color:#5A3696">3937=
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
g/tr_show_run.cgi?run_id=3D2019"><span style=3D"color:#5A3696">2019</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
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
g/tr_show_run.cgi?run_id=3D2017"><span style=3D"color:#5A3696">2017</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
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
g/tr_show_run.cgi?run_id=3D2015"><span style=3D"color:#5A3696">2015</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
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
<span style=3D"font-size:9.5pt">97.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5937"><span style=3D"color:#5A3696">5937</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5938"><span style=3D"color:#5A3696">5938=
</span></a><o:p></o:p></span></p>
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
g/show_bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D2021"><span style=3D"color:#5A3696">2021</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
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
g/tr_show_run.cgi?run_id=3D2022"><span style=3D"color:#5A3696">2022</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
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
g/tr_show_run.cgi?run_id=3D2023"><span style=3D"color:#5A3696">2023</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
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
g/tr_show_run.cgi?run_id=3D2016"><span style=3D"color:#5A3696">2016</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
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
<span style=3D"font-size:9.5pt">97.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5937"><span style=3D"color:#5A3696">5937</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5938"><span style=3D"color:#5A3696">5938=
</span></a><o:p></o:p></span></p>
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
g/show_bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D2018"><span style=3D"color:#5A3696">2018</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
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
g/tr_show_run.cgi?run_id=3D2006"><span style=3D"color:#5A3696">2006</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2007"><span style=3D"color=
:#5A3696">2007</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2008"><span style=3D"color:#5A3696">2008</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Eclipse Plugin: dylan branch<o:p></o:p></sp=
an></p>
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
<span style=3D"font-size:9.5pt;color:black">85.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5163"><span style=3D"color:#5A3696">5163=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5720"><span style=3D"colo=
r:#5A3696">5720</span></a><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5640"><span style=3D"color:#5A3696">5640</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">3.6%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">10.7%<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D2014"><span style=3D"color:#5A3696">2014</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Meta-yocto: dylan branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">90.0%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">10.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5942"><span style=3D"color:#5A3696">5942</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5948"><span style=3D"color:#5A3696">5948=
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
g/tr_show_run.cgi?run_id=3D2011"><span style=3D"color:#5A3696">2011</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2012"><span style=3D"color=
:#5A3696">2012</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Hob: dylan branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D2005"><span style=3D"color:#5A3696">2005</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2009"><span style=3D"color=
:#5A3696">2009</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">OE-Core: dylan branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D2010"><span style=3D"color:#5A3696">2010</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BitBake: dylan branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D2024"><span style=3D"color:#5A3696">2024</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Runtime: dylan branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5945"><span style=3D"color:#5A3696">5945</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5946"><span style=3D"color:#5A3696">5946=
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
g/tr_show_run.cgi?run_id=3D2013"><span style=3D"color:#5A3696">2013</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Build Appliance: dylan branch<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemu-kvm on Ubuntu 12.04 libvirt<o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">25.0%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">25.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5941"><span style=3D"color:#5A3696">5941</span></a><o:p=
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
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5941"><span style=3D"color:#5A3696">5941</span></a><o:p=
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
<span style=3D"font-size:9.5pt">5<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">17<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">756<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 778</span></b><span style=3D"font=
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
dth=3D"432" height=3D"120" id=3D"Picture_x0020_20" src=3D"cid:image001.png@=
01CF3EC6.7787A9E0" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;c=
hs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:5,17,756&amp;chco=3DFFFF66|FF9933|00F=
F00&amp;chl=3DBLOCKED(5)&#43;1%25|FAILED(17)&#43;2%25|PASSED(756)&#43;97%25=
"></span><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
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
ct.org/wiki/WW10_-_2014-03-06_-_Full_Pass_Release_1.4.3.rc3"><b><span style=
=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" w=
idth=3D"12" height=3D"14" id=3D"Picture_x0020_19" src=3D"cid:image002.gif@0=
1CF3EC6.7787A9E0" alt=3D"&#8595;"></span></b></a><b><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o=
:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW10_-_2014-03-06_-_Full_Pass_Release_1.4.3.rc3"><b><span=
 style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_18" src=3D"cid:image0=
02.gif@01CF3EC6.7787A9E0" alt=3D"&#8595;"></span></b></a><b><span style=3D"=
font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/WW10_-_2014-03-06_-_Full_Pass_Release_1.4.3.rc3"><b><span s=
tyle=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"=
0" width=3D"12" height=3D"14" id=3D"Picture_x0020_17" src=3D"cid:image002.g=
if@01CF3EC6.7787A9E0" alt=3D"&#8595;"></span></b></a><b><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW10_-_2014-03-06_-_Full_Pass_Release_1.4.3.rc3"><b><sp=
an style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_16" src=3D"cid:image0=
02.gif@01CF3EC6.7787A9E0" alt=3D"&#8595;"></span></b></a><b><span style=3D"=
font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW10_-_2014-03-06_-_Full_Pass_Release_1.4.3.rc3"><b><spa=
n style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_15" src=3D"cid:image0=
02.gif@01CF3EC6.7787A9E0" alt=3D"&#8595;"></span></b></a><b><span style=3D"=
font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW10_-_2014-03-06_-_Full_Pass_Release_1.4.3.rc3"><b><s=
pan style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_14" src=3D"cid:image=
002.gif@01CF3EC6.7787A9E0" alt=3D"&#8595;"></span></b></a><b><span style=3D=
"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW10_-_2014-03-06_-_Full_Pass_Release_1.4.3.rc3"><b><span =
style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D=
"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_13" src=3D"cid:image002.=
gif@01CF3EC6.7787A9E0" alt=3D"&#8595;"></span></b></a><b><span style=3D"fon=
t-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/WW10_-_2014-03-06_-_Full_Pass_Release_1.4.3.rc3">=
<b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img =
border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_12" src=3D"cid:=
image002.gif@01CF3EC6.7787A9E0" alt=3D"&#8595;"></span></b></a><b><span sty=
le=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW10_-_2014-03-06_-_Full_Pass_Release_1.4.3.rc3"><b><sp=
an style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_11" src=3D"cid:image0=
02.gif@01CF3EC6.7787A9E0" alt=3D"&#8595;"></span></b></a><b><span style=3D"=
font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2016"><span style=3D"colo=
r:#5A3696">2016</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D201=
5"><span style=3D"color:#5A3696">2015</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Windows switching fa=
ilure<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">622<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2020"><span style=3D"colo=
r:#5A3696">2020</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[beagleboard xM] Som=
e error message with usbhs_omap in dmesg<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">373<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3937"><span style=3D"color:#5A3696">3937</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2020"><span style=3D"colo=
r:#5A3696">2020</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[beagleboard xM] Wat=
chdog doesn't work<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">373<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2004"><span style=3D"colo=
r:#5A3696">2004</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">360<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4395"><span style=3D"color:#5A3696">4395</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">VERIFIED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">WORKSFORME<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2004"><span style=3D"colo=
r:#5A3696">2004</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[FRI2] ssh keys cann=
ot be loaded<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">317<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2006"><span style=3D"colo=
r:#5A3696">2006</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">176<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5291"><span style=3D"color:#5A3696">5291</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2007"><span style=3D"colo=
r:#5A3696">2007</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">eclipse console does=
n't display parsing results for bitbake recipes<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">157<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5640"><span style=3D"color:#5A3696">5640</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2007"><span style=3D"colo=
r:#5A3696">2007</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">systemtap output is =
useless in Juno<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">90<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5720"><span style=3D"color:#5A3696">5720</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">NOTABUG<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2006"><span style=3D"colo=
r:#5A3696">2006</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">error when creating =
a local Bitbake Commander project with an existing git clone<o:p></o:p></sp=
an></p>
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
tyle=3D"font-size:9.5pt">52<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2006"><span style=3D"colo=
r:#5A3696">2006</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">38<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5937"><span style=3D"color:#5A3696">5937</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">INVALID<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2016"><span style=3D"colo=
r:#5A3696">2016</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D201=
5"><span style=3D"color:#5A3696">2015</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[QEMUX86]g&#43;&#43;=
 project compilation fails<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
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
bug.cgi?id=3D5938"><span style=3D"color:#5A3696">5938</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">INVALID<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2015"><span style=3D"colo=
r:#5A3696">2015</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D201=
6"><span style=3D"color:#5A3696">2016</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[QEMUX86]gcc project=
 compilation fail<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
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
bug.cgi?id=3D5939"><span style=3D"color:#5A3696">5939</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">INVALID<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2007"><span style=3D"colo=
r:#5A3696">2007</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Error found when lau=
nching Hob from Eclipse<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
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
bug.cgi?id=3D5941"><span style=3D"color:#5A3696">5941</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2013"><span style=3D"colo=
r:#5A3696">2013</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[1.4.3] [Build-Appli=
ance] Hob can not startup<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
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
bug.cgi?id=3D5942"><span style=3D"color:#5A3696">5942</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2014"><span style=3D"colo=
r:#5A3696">2014</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[1.4.3] Kernel panic=
 on qemux86-64 when using runqemu kvm option on Ubuntu 13.10<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
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
bug.cgi?id=3D5945"><span style=3D"color:#5A3696">5945</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2024"><span style=3D"colo=
r:#5A3696">2024</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">lsbtest recipe will =
incorrectly pass do_install if host system has dash linked to /bin/sh<o:p><=
/o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M4<o:p></o:p></span></p>
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
bug.cgi?id=3D5946"><span style=3D"color:#5A3696">5946</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2024"><span style=3D"colo=
r:#5A3696">2024</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">LSB_Test.sh does not=
 install some of the downloaded packages on 1.4.3 RC3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
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
bug.cgi?id=3D5948"><span style=3D"color:#5A3696">5948</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2014"><span style=3D"colo=
r:#5A3696">2014</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[1.4.3] crosstap doe=
sn't work on qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
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
bug.cgi?id=3D5952"><span style=3D"color:#5A3696">5952</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2028"><span style=3D"colo=
r:#5A3696">2028</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D202=
6"><span style=3D"color:#5A3696">2026</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">ADT-installer: using=
 gcc to build c projects failed under ppc architecture with build 1.4.3(201=
4-03-06)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 19</span><=
/b><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"margin-top:12.0pt">On the performance side,=
 1.4.3 shows slight improvements against 1.4.1 and 1.4.2. As a comparison, =
I included only 1.4.1, 1.4.2 and 1.4.3 builds, but all the data is availabl=
e also on the
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test#1.4.1_.26_1.=
4.2_.26_1.4.3_Build_Time_results">
Performance_test wiki</a>.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-top:12.0pt"><img border=3D"0" width=
=3D"1244" height=3D"720" id=3D"Picture_x0020_1" src=3D"cid:image003.jpg@01C=
F3EC8.64D4E950"><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-top:12.0pt"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-top:12.0pt"><o:p>&nbsp;</o:p></p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E961A004476IRSMSX101gercor_--

--_006_1FFB62CE8AEB0D4298B51122D8903E961A004476IRSMSX101gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=10116;
	creation-date="Thu, 13 Mar 2014 12:27:43 GMT";
	modification-date="Thu, 13 Mar 2014 12:27:43 GMT"
Content-ID: <image001.png@01CF3EC6.7787A9E0>
Content-Transfer-Encoding: base64

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
SFEU1er/A1edP06vao2dAAAAAElFTkSuQmCC

--_006_1FFB62CE8AEB0D4298B51122D8903E961A004476IRSMSX101gercor_
Content-Type: image/gif; name="image002.gif"
Content-Description: image002.gif
Content-Disposition: inline; filename="image002.gif"; size=462;
	creation-date="Thu, 13 Mar 2014 12:27:43 GMT";
	modification-date="Thu, 13 Mar 2014 12:27:43 GMT"
Content-ID: <image002.gif@01CF3EC6.7787A9E0>
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

--_006_1FFB62CE8AEB0D4298B51122D8903E961A004476IRSMSX101gercor_
Content-Type: image/jpeg; name="image003.jpg"
Content-Description: image003.jpg
Content-Disposition: inline; filename="image003.jpg"; size=77732;
	creation-date="Thu, 13 Mar 2014 12:27:43 GMT";
	modification-date="Thu, 13 Mar 2014 12:27:43 GMT"
Content-ID: <image003.jpg@01CF3EC8.64D4E950>
Content-Transfer-Encoding: base64

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
I5GTvaiPRc9JqIuTVzTrTLMp0L/b1uC7zDQv9vW4LvMBiq4PUpWpLFaNzZJM+uRzmtzXNdFqrk3N
elcsszwzBarL9i41bKT2NFJF2mTJUauaIiZ5IidPV619ZRoX+3rcF3mGhf7etwXeYDwzCqcdl08U
LYpn6Ok+L2KuRqqqIuXWmarn6/SfKGE1cNfYfWSbSsP1kmsmfJm7qz9kq5dSdXqQyaF/t63Bd5ho
X+3rcF3mAsBHoX+3rcF3mGhf7etwXeYCwEehf7etwXeYaF/t63Bd5gLAR6F/t63Bd5hoX+3rcF3m
AsBHoX+3rcF3mGhf7etwXeYCwEehf7etwXeYaF/t63Bd5gLAR6F/t63Bd5hoX+3rcF3mAsPLk0mq
nR0pl0oS6F/t63Bd5hoX+3rcF3mA19bkvh0FKrXfG92zJki6xzdP2Wlk5EXJyZ9OS5ohnfgdGR0q
q2ZEme2RzWzva1HoqKjmoi5NXNOtMsynQv8Ab1uC7zDQv9vW4LvMBiq4RUpWpLFeNzZXoqdMjnI1
FXNUairk1FXpyTI+Mwaq29PaRbKSz5af/qZMuhc0yTPJP3fGZtC/29bgu8w0L/b1uC7zAeGYXUjn
kmhhbFLJo6bovYK5EVVRFy9HT+884Xg1TB43x00mbG5c9GSd8iIuar0I5Vy6/QZdC/29bgu8w0L/
AG9bgu8wFgI9C/29bgu8w0L/AG9bgu8wFgI9C/29bgu8w0L/AG9bgu8wFgI9C/29bgu8w0L/AG9b
gu8wFgI9C/29bgu8w0L/AG9bgu8wFgI9C/29bgu8w0L/AG9bgu8wFgI9C/29bgu8w0L/AG9bgu8w
FhooOSuHQU4oHtkfq3yPV6SOYr9N2k5HaKpm3PLoXo6ENjoX+3rcF3mGhf7etwXeYCeXA6Mr7DnM
lTaFRz2sme1ukmSo5ERckd7FOlOnoPVbB6lS6+1DG9JX59cjnNaq9LlRqrkiqvWqJ0mbQv8Ab1uC
7zDQv9vW4LvMBh5lrLflu6VlJ5moxypZkRNFFzRETSyT93rX1nvmuolh1hkLY5nIiOfH7BVRHaWS
qnx9frPehf7etwXeYaF/t63Bd5gMMGC0673vYkyveqK5zp3uXJM8m9K+16V9j1dPUeeYqSOhcyOS
NYYkibq5ntzYiZI12S+yRPRnmUaF/t63Bd5hoX+3rcF3mA+UMOgw6N7IEk9m7Se+SR0jnLkidLnK
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
M8jtQBzWMxW58RuRVXSslkpxJC6N2i5MpV1mS+hclb/oSy4LiTrM6st4kjNORI0S27JWJG3V+n4S
L09a9OfQdeAOdsYwy3hqw4bfgmxSJrZFgimarnuaqK5uWfp6U9XSSJVxplKZLG2SNjfGxUhnRJJW
Z6T3NXPoXN2j1ouTes6zI+gcTJhGN2qkr1lstnRa+ytml02xokmkqubnk56Ijc1XPpToNxhySris
WkyRjkook7ZXI5+lp+xzX09T/pN8AOOw3B72GYZXfZis4gseGJEtSTVZI9NH+jTJE6Oj0qvV1m55
OwLWwhrHQS13ukfI6ORqN0XOcrlyRFVEbmvQmZuABHa/XaXzjvuOLCO1+u0vnHfccWAAABJS92u/
P/gaVklL3a78/wDgaVgcNiHJ7kPJyndtdaFuJo1JnsY6RqaKuRM3I32PSrkzRevPpOzjjiqwNZG1
kUUbcka1Ea1qJ9iH5Xj+O4Q/l1DM6CC2qugZA5lt7Vc5XZaTo/avaionxpopnmfouPwrPhuWodZj
bLG+WFqaSyMRyKqZen15enLIDYa+LSRutZpOTNE0k6T3mmeWaZ+o5SngrJ5sN1uGsibHJJYR7426
cTEdnHHn1p0uzyToREVDLM1sfKCpKyhfmRakjJZVjVc0XRVrVVV6F6F/0A6Vj2vbpMcjk9aLmGPa
9FVjkciLkuS59JzeCM0MKuLXw+1SktSro11h1bYVViImWXRl7FM3J6VUycl6iwa5zKD6MKsiYsT2
o1XSNT2Tsk6/QmfpyzA29j30p/syfYhYa66kq4hT1DmNflJ0varkyyT0IqGXQv8Ab1uC7zAWAj0L
/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1u
C7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zD
Qv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8A
b1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC
7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAW
Aj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L
/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1u
C7zDQv8Ab1uC7zAWAj0L/b1uC7zDQv8Ab1uC7zAWAj0L/b1uC7zFTc0amkqKuXTkmSAfRmh5e3TY
5uapmmWadaGp/R9N+ucQxVNUcIuNxmhNeuQ4fUdZsu0YmKmk71Zrln/qQfo83f7vEPFjk/p0Z4WX
JnOk0VRZv6RqK1yOT2Pp6iRVXM76e6b2ablFhcEbJpLsLa79FGT6bVY5XOVqIiovrRfiPUWPYbKk
6pcgYtdV1rXvRFYmeWapn0Iq+kg/RuZWSPW3HtMkkcyuSDJiPbLrPa6WeXoyzz9OZjl5M2ZEmal6
FGqr3RokCt9u9HPR6o5FcnRl0ZL61U6K3UWJ1JZ0iZM1Vcxr2OzTRejs8tFfT1KeosSpTxvfFahe
yN+re5r0VGuzyyX48zTU+SqU5q0zLX9JDAldcmLkrM3KqJmq5L7JMl60y9OZ9wzkuylht2q58KrY
ajEljY9HZIi6Ku0nLmqZ59GSfEBs5cYo13qk1mGNjc0WR0jUajkXJW9fXn6BVxnDrks8da5BI+CR
YpGtembXImap+5DXw8mVZJh0ktnWvqJm9zo+mV6rmruvo6VU8zcnrKyWn1bsUbpbDp2acCu0dOPQ
ci+yTP1p1fHmBsZcbw+Ns6pZjkdAzTeyNyOcjejpy/eh556rpclgkzjbG9Wa1ypoKqNRzun0ZZ5f
KalvJOVtiSV1tsmlXWBmcbtLLJqdPstHL2PoROv0mV3Jp1qnTWabV24ZH2Vdoo5Na7p6U6lRM8vj
A3D8ToxSTRvtwNfC3Tka6REVjfWvqQxxYzhs8urhv1XyavW6LZWquh8LLPq+M08vJBk1+5O+SFyW
dJc3RuV7VcrVVM1do6PR1aOfV09BRf5MR3knRZkYs0r5VcjOlNKNGZZ5/F9HQBsq2J1LU0bK0zZk
kjdI18ao5qoioi9KfGp854w5YZpkv1dVA7QlfrW5MX1KufQpDhXJ1MPRNJ0TVWORj0gY5qOVyoul
7Jzlz6PWY6/J6ViNWzZikWN0KM1cGgmhG7STNM1zd8fo9CAbObFKsUFafXNfDZe2OORiorVVUVUX
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

--_006_1FFB62CE8AEB0D4298B51122D8903E961A004476IRSMSX101gercor_--
