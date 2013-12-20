Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D0C5E00801
	for <yocto@yoctoproject.org>; Fri, 20 Dec 2013 01:24:32 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Dec 2013 01:20:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,519,1384329600"; 
	d="xml'?bin'?xlsx'72,48?rels'72,48?scan'72,48,208,72,48,147,150,217?gif'72,48,208,72,48,147,150,217,147?png'72,48,208,72,48,147,150,217,147,150";
	a="427719430"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2013 01:24:24 -0800
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.135]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.66]) with mapi id
	14.03.0123.003; Fri, 20 Dec 2013 09:24:22 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Full Pass QA Report -  1.5.1 build - WW50
Thread-Index: Ac79ZUI8R6wPmye2Rq+07P8eHpTdHw==
Date: Fri, 20 Dec 2013 09:24:22 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619FB6E7F@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Yocto Full Pass QA Report - 1.5.1 build - WW50
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
X-List-Received-Date: Fri, 20 Dec 2013 09:24:37 -0000
X-Groupsio-MsgNum: 17601
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_009_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_"

--_009_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_
Content-Type: multipart/related;
	boundary="_008_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_";
	type="multipart/alternative"

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the Full pass QA report for Yocto 1.5.1 rc2 build.
Issue summary:

-          5679<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5679> -=
 meta-intel: core-image-sato-sdk builds are failing due to "deadlock in the=
 timekeeping subsystem" error

-          5672<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5672> -=
 yocto-bsp error on 3.10 kernel - dora

-          5473<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5473> -=
 [KEPLER] unable to create new bitbake commander project

-          5403<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5403> -=
 crosstap doesn't work on qemuppc and qemumips

-          5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182> -=
 [Beagleboard xM]X can not startup with 3.10 kernel

As seen below as well, no critical issues have been found. The full pass re=
port is available: https://wiki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_F=
ull_Pass_Release_Dora_1.5.1_rc2

Testing data

 Test type: Full Pass Release

 Branch: Dora

 Build name: 1.5.1 rc2

 poky commit: 8e410e9e46e3335458a7747cdd32e05f5c19ccbb

 Eclipse Plugin commit Kepler:  ad74249895f882a8f00bdeef7a0f7c18998cc43e

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rel=
eases/dora-10.0.1.rc2/

 Distributions tested: Ubuntu 12.10 64bit, Ubuntu 13.10 64bit, Fedora 19 64=
bit, Fedora 19 32bit, Fedora 18 64bit, OpenSuse 12.3 64bit, CentOS 6.5 64bi=
t,  Debian 7 64bit



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

1752<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1752> 1754<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1754>

ADT: dora branch

Fedora 19 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

1751<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1751> 1753<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1753>

ADT: dora branch

Ubuntu 13.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1740<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1740> 1741<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1741>

BSP/QEMU: dora branch

Beagleboard

71.0%

none

4.3%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182> 3936<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

24.6%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

100.0%

1716<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1716> 1717<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1717>

BSP/QEMU: dora branch

generic-x86 on AtomPC

98.6%

none

1.4%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

0.0%

none

100.0%

1714<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1714> 1715<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1715>

BSP/QEMU: dora branch

genericx86-64 on Sugarbay

100.0%

none

0.0%

none

0.0%

none

100.0%

1738<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1738> 1739<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1739>

BSP/QEMU: dora branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

1734<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1734> 1735<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1735>

BSP/QEMU: dora branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

1721<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1721> 1722<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1722>

BSP/QEMU: dora branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

1725<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1725> 1726<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1726>

BSP/QEMU: dora branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

1730<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1730> 1731<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1731>

BSP/QEMU: dora branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

1728<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1728> 1729<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1729>

BSP/QEMU: dora branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

1723<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1723> 1724<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1724>

BSP/QEMU: dora branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

1736<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1736> 1737<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1737>

BSP/QEMU: dora branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

1747<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1747> 1748<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1748> 1749<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1749> 1755<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1755> 1756<https://bugzill=
a.yoctoproject.org/tr_show_run.cgi?run_id=3D1756>1757<https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D1757>

Eclipse plugin: Dora branch

Ubuntu 13.10 x86_64

87.5%

none

5.4%

5672<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5672> 5473<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5473>

7.1%

5473<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5473>

100.0%

1732<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1732> 1733<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1733>

Meta-yocto: dora branch

Ubuntu 13.10 x86-64

96.0%

none

4.0%

5403<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5403>

0.0%

none

100.0%

1742<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1742> 1744<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1744>

Hob: dora branch

Multiple environments

100.0%

none

0.0%

none

0.0%

none

100.0%

1712<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1712> 1713<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1713>

OE-Core: dora branch

Multiple environments

97.1%

none

2.9%

5669<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5669>

0.0%

none

100.0%

1743<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1743>

Bitbake: dora branch

Fedora 19 X86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1750<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1750>

Bitbake: dora branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1761<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1761>

Runtime: dora branch

Multiple Environments

37.5%

none

12.5%

5679<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5679>

50.0%

5679<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5679>

100.0%

1727<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1727>

Build Appliance: dora branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 21



Test Case Status Report

Status

Count

BLOCKED

25

FAILED

10

PASSED

1007

Total: 1042


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:25,10,1007&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(25)+2%25|FAILED(10)+1=
%25|PASSED(1007)+97%25]



Bug Status Report

[Bug Status]

ID[?]<https://wiki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_Full_Pass_Rele=
ase_Dora_1.5.1_rc2>

Priority[?]<https://wiki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_Full_Pas=
s_Release_Dora_1.5.1_rc2>

Status[?]<https://wiki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_Full_Pass_=
Release_Dora_1.5.1_rc2>

Resolution[?]<https://wiki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_Full_P=
ass_Release_Dora_1.5.1_rc2>

Test Runs[?]<https://wiki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_Full_Pa=
ss_Release_Dora_1.5.1_rc2>

Description[?]<https://wiki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_Full_=
Pass_Release_Dora_1.5.1_rc2>

Version[?]<https://wiki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_Full_Pass=
_Release_Dora_1.5.1_rc2>

Target Milestone[?]<https://wiki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_=
Full_Pass_Release_Dora_1.5.1_rc2>

Age (days)[?]<https://wiki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_Full_P=
ass_Release_Dora_1.5.1_rc2>

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

NEW

1740<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1740>

[beagleboard xM] Some error message with usbhs_omap in dmesg

1.4

1.6

290

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

1716<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1716>

dmesg log errors in Atom-PC

1.3.1

1.5

277

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

Medium+

ACCEPTED

1741<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1741> 1740<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1740>

[Beagleboard xM]X can not startup with 3.10 kernel

1.5

1.5.1

91

5403<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5403>

Medium+

ACCEPTED

1733<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1733>

crosstap doesn't work on qemuppc and qemumips

1.5

1.5.1

45

5473<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5473>

Medium

NEW

1749<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1749> 1748<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1748>

[KEPLER] unable to create new bitbake commander project

1.5

1.5.1

38

5669<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5669>

Medium

IN PROGRESS REVIEW

1712<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1712>

Check if the directfb image can be built - rootfs is missing in tmp/deploy/=
images/qemuarm

1.5.1

1.5.2

NEW

5672<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5672>

Medium+

RESOLVED

FIXED

1749<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1749> 1748<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1748>

yocto-bsp error on 3.10 kernel - dora

1.5.1

1.5.2

NEW

5679<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5679>

Medium+

ACCEPTED

1761<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1761>

meta-intel: core-image-sato-sdk builds are failing due to "deadlock in the =
timekeeping subsystem" error

1.5.1

1.5.1

NEW

Total: 8




Performance Test

There are no regressions comparing with the previous release. On the charts=
, there can be seen a slight increase in build time for the Kernel and Root=
fs only on H1 (Ubuntu 12) but not present in H2 (Fedora 19). The data compu=
ted is available on 1.5 Performance Test wiki and the detailed charts are a=
ttached: https://wiki.yoctoproject.org/wiki/Performance_Test#1.5_Milestones=
_results

[cid:image004.png@01CEFD74.5DB045B0]


Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_
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
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
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
	{mso-list-id:1992319867;
	mso-list-type:hybrid;
	mso-list-template-ids:-1631546058 -1831425014 67698691 67698693 67698689 6=
7698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:5473;
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
<p class=3D"MsoNormal">Here is the Full pass QA report for Yocto 1.5.1 rc2 =
build.<o:p></o:p></p>
<p class=3D"MsoNormal">Issue summary:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5679"><b>5679</b></a> - meta-intel: core-image-sato-sdk builds =
are failing due to &quot;deadlock in the timekeeping subsystem&quot; error<=
o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5672"><b>5672</b></a> - yocto-bsp error on 3.10 kernel &#8211; =
dora<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5473"><b>5473</b></a> - [KEPLER] unable to create new bitbake c=
ommander project<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5403"><b>5403</b></a> - crosstap doesn't work on qemuppc and qe=
mumips<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5182"><b>5182</b></a> - [Beagleboard xM]X can not startup with =
3.10 kernel<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As seen below as well, no critical issues have been =
found. The full pass report is available:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_Full_Pass=
_Release_Dora_1.5.1_rc2">
https://wiki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_Full_Pass_Release_Do=
ra_1.5.1_rc2</a><o:p></o:p></p>
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
"><span style=3D"color:black"> Branch: Dora<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.5.1 rc2<o:p></o:p></span></pre=
>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 8e410e9e46e3335458a7747cdd32e05=
f5c19ccbb<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Kepler:&nbsp; ad742498=
95f882a8f00bdeef7a0f7c18998cc43e<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/releases/dora-10.0.1.rc2/<o:p></o:p></span></pre=
>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 12.10 64bit, Ub=
untu 13.10 64bit, Fedora 19 64bit, Fedora 19 32bit, Fedora 18 64bit, OpenSu=
se 12.3 64bit, CentOS 6.5 64bit,&nbsp; Debian 7 64bit<o:p></o:p></span></pr=
e>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> <o:p></o:p></span></pre>
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
g/tr_show_run.cgi?run_id=3D1752"><span style=3D"color:#5A3696">1752</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1754"><span style=3D"color=
:#5A3696">1754</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: dora branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fedora 19 i686<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1751"><span style=3D"color:#5A3696">1751</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1753"><span style=3D"color=
:#5A3696">1753</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1740"><span style=3D"color:#5A3696">1740</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1741"><span style=3D"color=
:#5A3696">1741</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1716"><span style=3D"color:#5A3696">1716</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1717"><span style=3D"color=
:#5A3696">1717</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dora branch<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">98.6%<o:p></o:p></span></p>
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
g/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1714"><span style=3D"color:#5A3696">1714</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1715"><span style=3D"color=
:#5A3696">1715</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1738"><span style=3D"color:#5A3696">1738</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1739"><span style=3D"color=
:#5A3696">1739</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1734"><span style=3D"color:#5A3696">1734</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1735"><span style=3D"color=
:#5A3696">1735</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1721"><span style=3D"color:#5A3696">1721</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1722"><span style=3D"color=
:#5A3696">1722</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1725"><span style=3D"color:#5A3696">1725</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1726"><span style=3D"color=
:#5A3696">1726</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1730"><span style=3D"color:#5A3696">1730</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1731"><span style=3D"color=
:#5A3696">1731</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1728"><span style=3D"color:#5A3696">1728</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1729"><span style=3D"color=
:#5A3696">1729</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1723"><span style=3D"color:#5A3696">1723</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1724"><span style=3D"color=
:#5A3696">1724</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1736"><span style=3D"color:#5A3696">1736</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1737"><span style=3D"color=
:#5A3696">1737</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1747"><span style=3D"color:#5A3696">1747</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1748"><span style=3D"color=
:#5A3696">1748</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1749=
"><span style=3D"color:#5A3696">1749</span></a><span class=3D"apple-convert=
ed-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D1755"><span style=3D"color:#5A3696">1755</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D1756"><span style=3D"color:#5A3696"=
>1756</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cg=
i?run_id=3D1757"><span style=3D"color:#5A3696">1757</span></a><o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Eclipse plugin: Dora branch<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">87.5%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">5.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5672"><span style=3D"color:#5A3696">5672</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5473"><span style=3D"color:#5A3696">5473=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">7.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5473"><span style=3D"color:#5A3696">5473</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1732"><span style=3D"color:#5A3696">1732</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1733"><span style=3D"color=
:#5A3696">1733</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Meta-yocto: dora branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">96.0%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">4.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5403"><span style=3D"color:#5A3696">5403</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1742"><span style=3D"color:#5A3696">1742</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1744"><span style=3D"color=
:#5A3696">1744</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Hob: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1712"><span style=3D"color:#5A3696">1712</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1713"><span style=3D"color=
:#5A3696">1713</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">OE-Core: dora branch<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">97.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">2.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5669"><span style=3D"color:#5A3696">5669</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1743"><span style=3D"color:#5A3696">1743</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Bitbake: dora branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fedora 19 X86_64<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1750"><span style=3D"color:#5A3696">1750</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Bitbake: dora branch<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1761"><span style=3D"color:#5A3696">1761</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Runtime: dora branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Multiple Environments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">37.5%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">12.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5679"><span style=3D"color:#5A3696">5679</span></a><o:p=
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
g/show_bug.cgi?id=3D5679"><span style=3D"color:#5A3696">5679</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1727"><span style=3D"color:#5A3696">1727</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Build Appliance: dora branch<o:p></o:p></sp=
an></p>
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
<span style=3D"font-size:9.5pt">25<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">10<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1007<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 1042</span></b><span style=3D"fon=
t-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><img border=3D"0" wi=
dth=3D"432" height=3D"120" id=3D"Picture_x0020_23" src=3D"cid:image001.png@=
01CEFD76.06AE7D70" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;c=
hs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:25,10,1007&amp;chco=3DFFFF66|FF9933|0=
0FF00&amp;chl=3DBLOCKED(25)&#43;2%25|FAILED(10)&#43;1%25|PASSED(1007)&#43;9=
7%25"></span><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
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
=3D"cid:image002.png@01CEFD76.06AE7D70" alt=3D"Bug Status"></span><span sty=
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
ct.org/wiki/WW50_-_2013-12-13_-_Full_Pass_Release_Dora_1.5.1_rc2"><b><span =
style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D=
"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_21" src=3D"cid:image003.=
gif@01CEFD76.06AE7D70" alt=3D"&#8595;"></span></b></a><b><span style=3D"fon=
t-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:=
p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW50_-_2013-12-13_-_Full_Pass_Release_Dora_1.5.1_rc2"><b>=
<span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_20" src=3D"cid:ima=
ge003.gif@01CEFD76.06AE7D70" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/WW50_-_2013-12-13_-_Full_Pass_Release_Dora_1.5.1_rc2"><b><s=
pan style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_19" src=3D"cid:image=
003.gif@01CEFD76.06AE7D70" alt=3D"&#8595;"></span></b></a><b><span style=3D=
"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW50_-_2013-12-13_-_Full_Pass_Release_Dora_1.5.1_rc2"><=
b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img b=
order=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_18" src=3D"cid:i=
mage003.gif@01CEFD76.06AE7D70" alt=3D"&#8595;"></span></b></a><b><span styl=
e=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW50_-_2013-12-13_-_Full_Pass_Release_Dora_1.5.1_rc2"><b=
><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img bo=
rder=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_17" src=3D"cid:im=
age003.gif@01CEFD76.06AE7D70" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW50_-_2013-12-13_-_Full_Pass_Release_Dora_1.5.1_rc2">=
<b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img =
border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_16" src=3D"cid:=
image003.gif@01CEFD76.06AE7D70" alt=3D"&#8595;"></span></b></a><b><span sty=
le=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW50_-_2013-12-13_-_Full_Pass_Release_Dora_1.5.1_rc2"><b><=
span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_15" src=3D"cid:imag=
e003.gif@01CEFD76.06AE7D70" alt=3D"&#8595;"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/WW50_-_2013-12-13_-_Full_Pass_Release_Dora_1.5.1_=
rc2"><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none">=
<img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_14" src=3D=
"cid:image003.gif@01CEFD76.06AE7D70" alt=3D"&#8595;"></span></b></a><b><spa=
n style=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW50_-_2013-12-13_-_Full_Pass_Release_Dora_1.5.1_rc2"><=
b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img b=
order=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_13" src=3D"cid:i=
mage003.gif@01CEFD76.06AE7D70" alt=3D"&#8595;"></span></b></a><b><span styl=
e=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
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
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1740"><span style=3D"colo=
r:#5A3696">1740</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">290<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1716"><span style=3D"colo=
r:#5A3696">1716</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">277<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1741"><span style=3D"colo=
r:#5A3696">1741</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D174=
0"><span style=3D"color:#5A3696">1740</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">91<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5403"><span style=3D"color:#5A3696">5403</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1733"><span style=3D"colo=
r:#5A3696">1733</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">crosstap doesn't wor=
k on qemuppc and qemumips<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">45<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5473"><span style=3D"color:#5A3696">5473</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1749"><span style=3D"colo=
r:#5A3696">1749</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D174=
8"><span style=3D"color:#5A3696">1748</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[KEPLER] unable to c=
reate new bitbake commander project<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">38<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5669"><span style=3D"color:#5A3696">5669</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1712"><span style=3D"colo=
r:#5A3696">1712</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Check if the directf=
b image can be built - rootfs is missing in tmp/deploy/images/qemuarm<o:p><=
/o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5.2<o:p></o:p></span></p>
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
bug.cgi?id=3D5672"><span style=3D"color:#5A3696">5672</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1749"><span style=3D"colo=
r:#5A3696">1749</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D174=
8"><span style=3D"color:#5A3696">1748</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">yocto-bsp error on 3=
.10 kernel - dora<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5.2<o:p></o:p></span></p>
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
bug.cgi?id=3D5679"><span style=3D"color:#5A3696">5679</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1761"><span style=3D"colo=
r:#5A3696">1761</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">meta-intel: core-ima=
ge-sato-sdk builds are failing due to &quot;deadlock in the timekeeping sub=
system&quot; error<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5.1<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 8</span></=
b><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal">Performance Test<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">There are no regressions comparing with the previous=
 release. On the charts, there can be seen a slight increase in build time =
for the Kernel and Rootfs only on H1 (Ubuntu 12) but not present in H2 (Fed=
ora 19). The data computed is available
 on 1.5 Performance Test wiki and the detailed charts are attached: <a href=
=3D"https://wiki.yoctoproject.org/wiki/Performance_Test#1.5_Milestones_resu=
lts">
https://wiki.yoctoproject.org/wiki/Performance_Test#1.5_Milestones_results<=
/a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"1164" height=3D"681" id=
=3D"Picture_x0020_12" src=3D"cid:image004.png@01CEFD74.5DB045B0"><o:p></o:p=
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

--_000_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_--

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_
Content-Type: image/png; name="image004.png"
Content-Description: image004.png
Content-Disposition: inline; filename="image004.png"; size=85644;
	creation-date="Fri, 20 Dec 2013 09:24:20 GMT";
	modification-date="Fri, 20 Dec 2013 09:24:20 GMT"
Content-ID: <image004.png@01CEFD74.5DB045B0>
Content-Transfer-Encoding: base64

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
87JAKW6//fZTTjkFvdrm5YJb96GHHvr555/Ny4KSScACAqNGjUKbZYGdho9gjIpgKMaasbs9e/b0
7NkTbxuUDpahqW9OqSZkNHz48FatWp1zzjnI3YK6QxbdunV7+umnrbHTMjIy/vOf/yBTy+y0/v37
w4a59NJLb7jhhpdeeslUpElJSdHR0du3b7/mmmtgWlx55ZWmZgfh9erV27lzJ7oSsMDXc889h486
U3N8+eWXly1b9s033/zrX/9avny5qXlB+Mcff9ykSZNbb731sssu27p1q9nZhaR8GmlmVevQoUOv
vvpqk+y03NxcCEeniKnddWjb0KDiS9c8Ow0Feeutt7799lu8m0x9hhs3bvzJJ5+YaqfBHsCbyFQ7
LTY29qqrrrrkkkvM+9pAQ/jPf/6zffv2GA02abALlQ7h55133rZt20zqaEDbgEfjl19+weM9ceJE
Mx7y9PR03LqTJk368ssvLfteMaMglEkCIGCBnQYrYu7cua+88gq6NtClZXb/Ol5fHTp0wHc2+ubQ
23j06NGzzjoLLx9TqxsWhcjH535FRQW+g//3v/+ZmqMIt8xOQ+8zxl3lwwPvPRiHhYWFphawU6dO
mzdvbt26NSoxOTnZvK8RlAItLG7R9957D4boiy++OGDAAFhQppYOH4qvvfZay5Ytzz777BkzZnz9
9demZnfw4EE8AigmmsinnnrK7NFXjA22a9cOfRYYyp46darZ2ZmKLlDCaaSZSN4kOw0u2vfddx/u
eIyS5+fno6nbvXu3GcXYu3cv7DT4u+PFYVIWUBv+3/Xr18cnwo8//mhGKZRMU+00WB3oLvr3v/9t
qp3WokWL+Pj4L774AnYaRorMwIWbFv2I6NhDWdBsoOdbey4owqZNm2Ceff755/v378cXm/YsIBCS
scczgs+Xzz77THsWeDrw9YBbFzUO7yYLeiW1F4ECSQCtCd696MjAt6/YaRs3bjQDCz4N8cigNcGr
8oUXXnjggQf++te/4qcZeUEmynXqqafCPMP3aEJCAvpTLrjgApgWpn4mwh/k4YcfViXCO2HdunV4
i5pURohFFrfddhtGmdA5KHba+++/b1J24p6AHlWRD5g4Pvfcc/E+NylHxbOyshJjaGj48OWDkS6T
skOv93XXXYcOUHxcIRcghU3YuXNnk7JTPGETgiT2MAtxl5qUnYh94oknrr/+emSNAuIZNOlhV0W4
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
IwESIAESIAESIAESIAESCC8CNNLCq75ZWhIgARIgARIgARIgARIgAZsToJFm8wqieiRAAiRAAiRA
AiRAAiRAAuFFgEZaeNU3S0sCJEACJEACJEACJEACJGBzAjTSbF5BVI8ESIAESIAESIAESIAESCC8
CNBIC6/6ZmlJgARIgARIgARIgARIgARsToBGms0riOqRAAmQAAmQAAmQAAmQAAmEFwEaaeFV3ywt
CZAACZAACZAACZAACZCAzQnQSLN5BVE9EiABEiABEiABEiABEiCB8CJAIy286pulJQESIAESIAES
IAESIAESsDkBGmk2ryCqRwIkQAIkQAIkQAIkQAIkEF4EaKSFV32ztCRAAiRAAiRAAiRAAiRAAjYn
QCPN5hVE9UiABEiABEiABEiABEiABMKLAI208KpvlpYESIAESIAESIAESIAESMDmBGik2byCqB4J
kAAJkAAJkAAJkAAJkEB4EaCRFl71zdKSAAmQAAmQAAmQAAmQAAnYnACNNJtXENUjARIgARIgARIg
ARIgARIILwI00sKrvllaEiABEiABEiABEiABEiABmxOgkWbzCqJ6JEACJEACJEACJEACJEAC4UWA
Rlp41TdLSwIkQAIkQAIkQAIkQAIkYHMCNNJsXkFUjwRIgARIgARIgARIgARIILwI0EgLr/pmaUmA
BEiABEiABEiABEiABGxOgEaazSuI6pEACZAACZAACZAACZAACYQXARpp4VXfLC0JkAAJkAAJkAAJ
kAAJkIDNCURUVVXZXEWqRwIkQAIkEM4EXn/99aysrHAmwLKTAAmQAAmENoEmTZrcdtttxjL+yUib
NWtWQUFBaCNg6UiABEiABKwh4Nrk+Jbv9OnTJ02a5Nu1vIoESIAESIAE7E/AtaX7k5HGhtD+VUgN
SYAESCBYCOhqU3TJCRZu1JMESIAESCDcCLi2dJyTFm73AMtLAiRAAiRAAiRAAiRAAiRgawI00mxd
PVSOBEiABEiABEiABEiABEgg3AjQSAu3Gmd5SYAESIAESIAESIAESIAEbE2ARpqtq4fKkQAJkAAJ
kAAJkAAJkAAJhBsBGmnhVuMsLwmQAAmQAAmQAAmQAAmQgK0J0EizdfVQORIgARIgARIgARIgARIg
gXAjQCMt3Gqc5SUBEiABEiABEiABEiABErA1ARpptq4eKkcCJEACJEACJEACJEACJBBuBGikhVuN
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
AiIQAgJOp7lkyRIcHX/55Zd+/fr17t2bXZp69OgRAgWlgggES0BGWrB8JV0EDIF169add955rKHx
2fzlIDnVjBkzyBrcqFEjgRIBERABERABEXAIDB06lAU0/rt79+6MjAw+sHFFpUqV+NC0aVOBEoGE
JyAjLeEfsSoYCgJVq1YleSOTf1ho+Gng7jh58uSnn366Q4cOodBPSoiACIiACIhAmAgwjzl//nzs
NKIDNm3ahNfJuHHjypcvHyYdpYsIBEhARlqAcCVaBBwCuG1gpDVv3hw7jYlA4tC2bNny4IMPKpej
XhIREAEREAERiCZAtPbKlSs//fRT7LTHH3+cTMjsJtq/f3+xEoEkISAjLUketKpZyATYsRp3R/JQ
YapdfPHFxYoVO+OMM7RRUiE/FRUvAiIgAiIQVgLsUoPH49tvv83W1dhpxx44wqqs9BIB+wRkpNln
KokiEE2gVatWODeynoZLPd3Mxo0bRUkEREAEREAERCA3Ag0bNjSpj8nrWLx4cYESgWQjICMt2Z64
6ls4BMqWLfvYY4+RIIRotI4dO2KqFY4eKlUEREAEREAE4oEAMWmEBlxwwQVvvPEGrijxoLJ0FAGb
BGSk2aQpWSKQB4HWrVsvWrToo48+YgtOgRIBERABERABEciDAKmPX3zxRZweMdUESgSSkICMtCR8
6KqyCIiACIiACIiACIiACIhAeAnISAvvs5FmIiACIiACIiACIiACIiACSUhARloSPnRVWQREQARE
QAREQAREQAREILwEZKSF99lIMxEQAREQAREQAREQAREQgSQkICMtCR+6qiwCIiACIiACIiACIiAC
IhBeAjLSwvtspJkIiIAIiIAIiIAIiIAIiEASEpCRloQPXVUWAREQAREQAREQAREQAREIL4GiWVlZ
jnZsttuvX7/wKivNREAEREAE4oeArT5l6NChmzZtip96S1MREAEREAERKBiBihUrXn311e57/mGk
Pfvsszt37iyYSF0tAiIgAiIgAjkRiO5yxEkEREAEREAERCA/BP5hpOXnBl0jAiIgAiIgAiIgAiIg
AiIgAiIQHIH/D8kct1jftbOIAAAAAElFTkSuQmCC

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=10187;
	creation-date="Fri, 20 Dec 2013 09:24:21 GMT";
	modification-date="Fri, 20 Dec 2013 09:24:21 GMT"
Content-ID: <image001.png@01CEFD76.06AE7D70>
Content-Transfer-Encoding: base64

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

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=9473;
	creation-date="Fri, 20 Dec 2013 09:24:21 GMT";
	modification-date="Fri, 20 Dec 2013 09:24:21 GMT"
Content-ID: <image002.png@01CEFD76.06AE7D70>
Content-Transfer-Encoding: base64

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
AAAASUVORK5CYII=

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=462;
	creation-date="Fri, 20 Dec 2013 09:24:21 GMT";
	modification-date="Fri, 20 Dec 2013 09:24:21 GMT"
Content-ID: <image003.gif@01CEFD76.06AE7D70>
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

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_--

--_009_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Performance Comparison - Dora.xlsx"
Content-Description: Performance Comparison - Dora.xlsx
Content-Disposition: attachment;
	filename="Performance Comparison - Dora.xlsx"; size=45088;
	creation-date="Fri, 20 Dec 2013 08:42:48 GMT";
	modification-date="Fri, 20 Dec 2013 08:50:10 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQD7d88e3QEAANENAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
l9tO3DAQhu8r9R0i36KNN7SlFG2Wix4uWyToA5h4dmNtYlueAXbfvhMTEEILq5AI9yZn/98/9nhi
L863bZPdQkDjbCmKfC4ysJXTxq5L8ffq1+xUZEjKatU4C6XYAYrz5ccPi6udB8y4tcVS1ET+TEqs
amgV5s6D5TcrF1pFfBvW0qtqo9Ygj+fzE1k5S2BpRp2GWC5+wErdNJT93PLjeyfXxors+/13HaoU
yvvGVIrYqLy1+hlk5lYrU4F21U3L0jn6AEpjDUBtk/tgmBgugYgDQyH3MgM0OAzaR5Vzy2gMa+Px
iEN/gdC9eTmqvt0fHo5gNGQXKtBv1XLsctvIOxc2185t8tdFhnZN7KK8VcY++H6FHz9GGU/FxEa6
+KLwQB/H/4mPT4l8EM85kPE4fkiizIEBQNo1gFOnYRQ9RK5VAH1JPJvXkxt4qn3Ahw7qrrMg+4vx
/d4LHeBW7JFQxtNkTC6PUXAAe/yU6+N9A3v8NHs7+/PopB/Gfp5nk/X7gLH+8s4xP83xk4TsrwnZ
pwnZ3xKyi3lKeMqKWqQsqUXKmlq8a1Hl/cFFcJ7/oS7A8GR7WO93rWeehSCQgccV/76V8yOR9y+j
sxu6DZIGvYct44Zs+Q8AAP//AwBQSwMEFAAGAAgAAAAhALVVMCP0AAAATAIAAAsACAJfcmVscy8u
cmVscyCiBAIooAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAACskk1PwzAMhu9I/IfI99XdkBBCS3dBSLshVH6ASdwPtY2jJBvdvyccEFQagwNH
f71+/Mrb3TyN6sgh9uI0rIsSFDsjtnethpf6cXUHKiZylkZxrOHEEXbV9dX2mUdKeSh2vY8qq7io
oUvJ3yNG0/FEsRDPLlcaCROlHIYWPZmBWsZNWd5i+K4B1UJT7a2GsLc3oOqTz5t/15am6Q0/iDlM
7NKZFchzYmfZrnzIbCH1+RpVU2g5abBinnI6InlfZGzA80SbvxP9fC1OnMhSIjQS+DLPR8cloPV/
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
QgEAACMAAAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0MS54bWwucmVsc4SPwYrCMBRF9wP+Q3h7
k9aFDENTNyK4VecDYvraBtuXkPcU/XuzHGXA5eVwz+U2m/s8qRtmDpEs1LoCheRjF2iw8HvaLb9B
sTjq3BQJLTyQYdMuvpoDTk5KiceQWBULsYVRJP0Yw37E2bGOCamQPubZSYl5MMn5ixvQrKpqbfJf
B7QvTrXvLOR9V4M6PVJZ/uyOfR88bqO/zkjyz4RJOZBgPqJIOchF7fKAYkHrd/aea30OBKZtzMvz
9gkAAP//AwBQSwMEFAAGAAgAAAAhACqoIxf9AAAA8wUAACMAAAB4bC9kcmF3aW5ncy9fcmVscy9k
cmF3aW5nMi54bWwucmVsc7zUzWoDIRAH8Hsg7yBzr+5ukk1S4uZSCrmW9AHEnf2guypqS/L2HQiF
BoK5eRIV//NjRA/HyzyxH/RhtEZCyQtgaLRtR9NL+Dy/v+yAhahMqyZrUMIVAxyb5eLwgZOKdCgM
owuMUkyQMMToXoUIesBZBW4dGtrprJ9VpKnvhVP6S/UoqqKohf+fAc1dJju1Evyppfrnq6PKz7Nt
140a36z+ntHEByWEHpSPFKh8j1EC57eVcBvKipMWxGPIKh9km3JsMzakTEGqfJA65SjzOTYpR53x
YooUZJMPsk9eDH0m2d7uOiVZ54PsUo59xoas/iDi7qtufgEAAP//AwBQSwMEFAAGAAgAAAAhAB2l
HaXTAAAAvQIAACMAAAB4bC9kcmF3aW5ncy9fcmVscy9kcmF3aW5nMS54bWwucmVsc7ySzaoCMQxG
94LvULK3nRlFRKbjRi64vegDhE7mB2fa0vSKvv0tiKAguptVSELOdxYpd9dxEBcK3DurIZcZCLLG
1b1tNZyOP4sNCI5oaxycJQ03YthV81n5SwPGdMRd71kkimUNXYx+qxSbjkZk6TzZtGlcGDGmNrTK
ozljS6rIsrUKzwyoXpjiUGsIh3oJ4njzKfk72zVNb2jvzN9INr6JUKbDEBMQQ0tRg5T3Cd/LUiZZ
UO89iuk8ik8e+XQe+SeP1XQeq4eHenm66h8AAP//AwBQSwMEFAAGAAgAAAAhAD0GtGS9AAAAKwEA
ACMAAAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0My54bWwucmVsc4SPzQrCMBCE74LvEPZuUnsQ
kaa9iOBV6gMsyfYH2yRk49/bm4ugIHjb2WW/mamaxzyJG0UevdOwlgUIcsbb0fUazu1htQXBCZ3F
yTvS8CSGpl4uqhNNmPITD2NgkSmONQwphZ1SbAaakaUP5PKl83HGlGXsVUBzwZ5UWRQbFT8ZUH8x
xdFqiEe7BtE+Q3b+z/ZdNxrae3OdyaUfFspGvOdmGYmxp6RByveO30Mpc2RQdaW+KtYvAAAA//8D
AFBLAwQUAAYACAAAACEAFa+qPL0AAAArAQAAIwAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQy
LnhtbC5yZWxzhI/NCsIwEITvgu8Q9m7SehCRpl5E8Cr1AZZk+4NtErLxp29vLoKC4G1nl/1mpto/
p1HcKfLgnYZSFiDIGW8H12m4NMfVFgQndBZH70jDTAz7ermozjRiyk/cD4FFpjjW0KcUdkqx6WlC
lj6Qy5fWxwlTlrFTAc0VO1Lrotio+MmA+ospTlZDPNkSRDOH7Pyf7dt2MHTw5jaRSz8slI34yM0y
EmNHSYOU7x2/h1LmyKDqSn1VrF8AAAD//wMAUEsDBBQABgAIAAAAIQBd1fAfHhIAALhTAAAYAAAA
eGwvd29ya3NoZWV0cy9zaGVldDEueG1stFxrc9s4sv2+VfsfXP4emgD4TCXZqolkWbI9O3V3997P
iq0kqrEtr6QkM/vr7wEJkOiH5UfWKlfstLoBEDjsbjQO+e5vf9zeHH1fbXfrzd37Y5Plx0eru6vN
9fruy/vjf/3z9E1zfLTbL++ulzebu9X74z9Xu+O/ffjrX9792Gx/331drfZHaOFu9/74635///bk
ZHf1dXW73GWb+9Udvvm82d4u9/jv9svJ7n67Wl53Rrc3JzbPq5Pb5fruuG/h7fYpbWw+f15frSab
q2+3q7t938h2dbPcY/y7r+v7XWzt9uopzd0ut79/u39ztbm9RxOf1jfr/Z9do8dHt1dv51/uNtvl
pxtc9x+mWF7Ftrv/iOZv11fbzW7zeZ+huZN+oPKa25P2BC19eHe9xhX4aT/arj6/P/7Fvf2tqI5P
PrzrJuh/16sfu+Tvo/9sNrf/uFrerH71M3qDtcqxVn4VPm02v3v1+fX74xwN71Y3qys/H0dL/Pq+
+ri6gfrUlFjJf3d9+b/R0cnQU/p37PW0W7nftkfXq8/Lbzf7/9n8OFutv3zdo2ub1Witm4a3139O
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
TVaaMS+L4hamqhzn1En1k9UwzFNq69SYv5+CBqP2i7jYNkSH2KwbeI6OOY1qKG/reRMwrta1LKgk
bUPGJtb9h/vvSYh8A29pWcgH6wWgw2tua7G4BAu2qRg0pbRWYPmKxvvzpXLxsEwNqudVBTqNgl2K
OMNlZlgqBomiOBjPMfBckdjQg/x21t9+UgyciJAUJDUlcDwjE3F84aQ61tMUBfAyaEGzXRkQYogr
CjuHZwP+LBqRS/pkhFkVI8l6JkokeUsnOaaeUaJTQZQg2ZCuE8/ybcBeCIciEUX157SiNkhCRkyH
UoykYeJYggXAMfNhgWMUZXGJpuZ7jIhFg+FWsCoAixyoKJQIJ4RBR41EhP7e/9LZqSRjOlRGjmXC
g0TUV7cUTND2c1ysVhmiNTGjL1gduMqODB0iARlDf9Cb3BhtZFnycyaFGmWbEJ+Qvs9DekdCgsbt
QsOFJLkIdjEu6pkmrGIcVACFRgChsZ3Q1OTPaUIPPwAwIMMNJnFdxOEmzTMpEuWQaTRbBehNA9Wc
lFk1/w/GnpEIxTNibDz892t5oHdXV3XZzFOHvT83wXHh7LlLr+h47toJv4Sj0+eHs8vXHHtBojxV
s2T11c+OuKFsVPWtbXu2Hb1zcaH7/A6pZ3Q3TbSPOufAjGXL3ANdb00zzu55YFqXV6J1r9x7+x2r
b1l+1vI87kUfWms2X5Lef5d625Izd5ljV1cd/2P94yef88Pa/Veue/Dr1t1tL61s/lzeHnryA3TX
SWPGqFsv7Zv4c9+iqhXVm/bt3tQcrW+b2N5Xt/71nt5pq9Ztb3y+WXp04+Krny8b1qRljzlhwzVP
bD+6b/pIp3LsG3dueWVGVjq74/bN8yoXzxffb3u6PZNv3MJfN/+98d7dG7p7qlv2529+t7NHIDdN
5DjujHNnNGR33rvBLV9grVr3fcfChVX3XfGT2H3jZZOc0vJ96arl91/30Ma9v4S+TLyQfvHrwkWk
vPa2kLnlhPNGRaT6Cas7U091rZ1yj+Jc2Ltmwbcl0/X2jd+VfdI777Knvl2x7eG2mWP1Cn12w9td
H92webux+Z290tKdy144cPFxp5Ut3TG5o/PjMY/0LCKXL0n1dZ70xPfjFu5Zcf+GO8WpJx6//s2q
9vGvrfzq9M5VL251P93V91Fsx74fXn155Ik7Kj/rEz7F6vxvHpvsNl/e7d4x+pnzrlq5sDjWPnbK
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
AA==

--_009_1FFB62CE8AEB0D4298B51122D8903E9619FB6E7FIRSMSX104gercor_--
