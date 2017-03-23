Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD1F0E00546; Thu, 23 Mar 2017 13:03:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	HTML_MESSAGE, RCVD_IN_DNSWL_MED,
	T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74677E003E1
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 13:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490299409; x=1521835409;
	h=from:to:cc:subject:date:message-id:mime-version;
	bh=dgN4C2OWsHn3wqi9hDu5E3EjZBoaiSwBndw+yx2Rz0I=;
	b=FOxR4OcY6nYe99y7M8FJudandvnHmb9HQ6eILVthu1kHDYJT24lr1glH
	MpVXL6290szL6HgTGoy2V0b+s05fbA==;
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Mar 2017 13:03:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,211,1486454400"; 
	d="scan'208,217";a="837903266"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by FMSMGA003.fm.intel.com with ESMTP; 23 Mar 2017 13:03:27 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 23 Mar 2017 13:03:27 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.191]) by
	FMSMSX114.amr.corp.intel.com ([10.18.116.8]) with mapi id
	14.03.0319.002; Thu, 23 Mar 2017 13:03:26 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: QA Test Report for Yocto Project  Release 2.3 M3 rc1
Thread-Index: AdKj6AKbEk3PVhnZTz60gEeS7/xruQ==
Date: Thu, 23 Mar 2017 20:03:25 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A020E3398@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjdhYTg3NzMtMDE5Ni00NTFjLWE0MzgtMjdhZDA2MWEwOWZiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6InpGT0JBSzdZM0lhVHM3alppZE02bGlaQjJPOThkWW5EZ05sK3dtRXZoV1E9In0=
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: QA Test Report for Yocto Project Release 2.3 M3 rc1
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
X-List-Received-Date: Thu, 23 Mar 2017 20:03:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A020E3398fmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A020E3398fmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

Here is the report for Full  QA Cycle on Release 2.3 M3 rc1

Full Report : https://wiki.yoctoproject.org/wiki/WW11_-_2017-03-15_-_Full_T=
est_Cycle_2.3_M3_rc1

Summary

The QA cycle for point release 2.3 M3 rc1 .1 is complete. There are 12 new =
issues found, 4 of them are High and 5 are M+. 2 of the high were blocking =
Performance and Selftest execution and were quickly fixed and merged, hence=
 those 2 test suites were executed in a different commit from the one tagge=
d for M3 rc1. In total there are 20 bugs attached to 2.3 M3 rc1, 5 High, 7 =
M+ and 8 M. Also there are still 15 M+ to be implemented still tagged to 2.=
3 M3 release.  Regarding to Performance there is huge improvements on rootf=
s measurements on both machines Fedora and Ubuntu and eSDK on Ubuntu, and s=
ome little regressions (around 3%) on both machines in different tasks. pTe=
st shows improvements on acl and e2fsprogs moudles  but also shows regressi=
on on other modules.

QA Hints

-        There are still may high and M+ bugs that are opened against M3 rc=
1

-        2 of the highest test suites (Selftest and Performance) were not e=
xecuted against M3 rc1 commit, even when they did show up good results on t=
he commit were tested on the commit tagged for 2.3 M3 rc1 are failing.

-        There are still 15 M+ tagged to be implemented on 2.3 M3, hence a =
decision should be taken about them, implemented for M4 or moved to 2.4

Based on above points the strategy to follow up form QA perspective is to h=
ave another release candidate when the blocker issues get solved and hence =
have a better quality on M3 and avoid High issues on M4.

=3D=3D=3D Details =3D=3D=3D
Bugs

      * New

-        High

o   11154 - buildperf: Fedora machine failing on buildperf execution due co=
uld not find 'ip' tool [1]

o   11172 - bitbake: Fetcher failure when building core-image-minimal with =
"ERROR: socat: not found" [2]

o   11193 - runqemu cannot launch image if enable "rm_work" [3]

o   11223 - devtool runqemu doesn't work in eSDK [4]

-        M+

o   11224 - Compliance: LTP, POSIX, LSB tests are not creating results file=
 (.targz) [5]

o   11222 - [eclipse] C compiler cannot create executables when reconfiguri=
ng project [6]

o   11174 - Update yocto-bsp script for kernel 4.10 [7]

o   11144 - Build Appliance : Toaster requires pod2man [8]

o   11185 - selftest/devtool: failing when parsing "mraa" recipe [9]

-        M / Low

o   11173           testimage: "test_dnf_install_from_http" is failing [10]

o   11220           runqemu: Qemux86 not boot with Ubuntu [11]

o   11225           Build from Command line fail when finish all the tasks =
[12]

      * High / M+ Not New

-        11119           runqemu-extract-sdk is failing when extracting .ta=
r.bz file [13]

-        11064           [Yocto 2.2.1] kernel version mismatched when using=
 yocto-bsp to create custom qemu bsp [14]

-        11025           selftest/devtool: Build mdadm failing on Centos7 a=
nd Ubuntu 1404 [15]

Full bugs Report : https://wiki.yoctoproject.org/wiki/WW11_-_2017-03-15_-_F=
ull_Test_Cycle_2.3_M3_rc1#Bugs_Found_during_QA_Test

Performance
Performance measurements were huge  improved  for rootfs on both machines (=
Ubuntu around 30%, Fedora 20%)  falling down the numbers  to the average ob=
served before the "recipe specific sysroot" implementation. On Ubuntu there=
 was also a very good improvement  on eSDK deploy time of around 12%, some =
other measurement times were up on around 3% on both machines, below are th=
e tables with the times of the tests:


-        Ubuntu


Test

2.3 M2 rc3

2.3 M3 rc1

%

sato

1:11:47

1:10:15

-2.14

rootfs

4:02

2:28

-38.84

rmwork

1:05:56

1:05:28

-0.71

kernel

5:00

5:11

+3.67

eSDK

3:28

3:01

-12.98



-        Fedora


Test

2.3 M2 rc3

2.3 M3 rc1

%

sato

1:12:58

1:12:34

-0.55

rootfs

3:19

2:40

-19.60

rmwork

1:04:50

1:07:10

+3.60

kernel

6:27

6:29

+0.52

eSDK

3:11

3:17

+3.14



Performance Charts : https://wiki.yoctoproject.org/charts/perf_milestone_GD=
C/performance_test.html

pTest

-        There were improvemnte of pass rate for acl and e2fsprogs modules

-        Modules that decreased pass rate were glib-2.0, openssh, openssl, =
quilt, strace, valgrind

-        A new bug was raised to address quil failures [15]

pTest full report : https://wiki.yoctoproject.org/wiki/WW11_-_2017-03-15_-_=
Full_Test_Cycle_2.3_M3_rc1#pTest_for_genericx86-64_on_NUC

Kernel

-        to test case "TCTEMP_2.3_MANUAL_Kernel_dev_External_source" was ru=
n, however due an issue with git, currently there is no way to test with 10=
0% of reliability. I also tested on different machines. An empty directory =
is released when you are trying to clone from remote and local. I  tested i=
t also with older kernel 4.4, 4.6 and I got the same issue. One month ago I=
 could reproduce this properly.

Links


1.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11154

2.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11172

3.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11193

4.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11223

5.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11224

6.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11222

7.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11174

8.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11144

9.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11185

10.   https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11173

11.   https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11220

12.   https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11225

13.   https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11119

14.   https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11064

15.   https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11025

16.   https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11221

Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A020E3398fmsmsx101amrcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:157497655;
	mso-list-type:hybrid;
	mso-list-template-ids:1549032070 1778392156 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:%1-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:543097389;
	mso-list-type:hybrid;
	mso-list-template-ids:1032089290 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2
	{mso-list-id:818112617;
	mso-list-type:hybrid;
	mso-list-template-ids:-114361522 1718405112 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	mso-ansi-font-size:14.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";
	mso-ansi-font-weight:bold;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3
	{mso-list-id:901526239;
	mso-list-type:hybrid;
	mso-list-template-ids:1606553066 -1483981742 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l3:level1
	{mso-level-start-at:6;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l4
	{mso-list-id:1850172680;
	mso-list-type:hybrid;
	mso-list-template-ids:-2086742474 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l4:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l4:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l4:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l5
	{mso-list-id:2025593338;
	mso-list-type:hybrid;
	mso-list-template-ids:160217946 190592012 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l5:level1
	{mso-level-start-at:6;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l5:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l5:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l5:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l5:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l5:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l5:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l5:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l5:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
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
<p class=3D"MsoNormal">Hi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the report for Full &nbsp;QA Cycle on Releas=
e 2.3 M3 rc1 <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Report :&nbsp;<a href=3D"https://wiki.yoctoproj=
ect.org/wiki/WW11_-_2017-03-15_-_Full_Test_Cycle_2.3_M3_rc1">https://wiki.y=
octoproject.org/wiki/WW11_-_2017-03-15_-_Full_Test_Cycle_2.3_M3_rc1</a>
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Summary <o:p></o=
:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">The QA cycle for point re=
lease 2.3 M3 rc1 .1 is complete. There are 12 new issues found, 4 of them a=
re High and 5 are M&#43;. 2 of the high were blocking Performance and Selft=
est execution and were quickly fixed and
 merged, hence those 2 test suites were executed in a different commit from=
 the one tagged for M3 rc1. In total there are 20 bugs attached to 2.3 M3 r=
c1, 5 High, 7 M&#43; and 8 M. Also there are still 15 M&#43; to be implemen=
ted still tagged to 2.3 M3 release. &nbsp;Regarding
 to Performance there is huge improvements on rootfs measurements on both m=
achines Fedora and Ubuntu and eSDK on Ubuntu, and some little regressions (=
around 3%) on both machines in different tasks. pTest shows improvements on=
 acl and e2fsprogs moudles &nbsp;but
 also shows regression on other modules.<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">QA Hints <o:p></=
o:p></span></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l3 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>There are still may high and M&#43; bugs that are o=
pened against M3 rc1
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l3 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>2 of the highest test suites (Selftest and Performa=
nce) were not executed against M3 rc1 commit, even when they did show up go=
od results on the commit were tested on the commit tagged for 2.3 M3 rc1 ar=
e failing.
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l3 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>There are still 15 M&#43; tagged to be implemented =
on 2.3 M3, hence a decision should be taken about them, implemented for M4 =
or moved to 2.4
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Based on above points the=
 strategy to follow up form QA perspective is to have another release candi=
date when the blocker issues get solved and hence have a better quality on =
M3 and avoid High issues on M4.
<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">=3D=3D=3D Detail=
s =3D=3D=3D<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Bugs <o:p></o:p>=
</span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:12.0pt">&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; * New<o:p></o:p></span></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l5 level1 lfo3">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>High <o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l5 level2 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>11154 - buildperf: Fedora machine failing on=
 buildperf execution due could not find 'ip' tool [1]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l5 level2 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>11172 - bitbake: Fetcher failure when buildi=
ng core-image-minimal with &quot;ERROR: socat: not found&quot; [2]<o:p></o:=
p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l5 level2 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>11193 - runqemu cannot launch image if enabl=
e &quot;rm_work&quot; [3]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l5 level2 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>11223 - devtool runqemu doesn't work in eSDK=
 [4]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l5 level1 lfo3">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>M&#43;<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l5 level2 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>11224 - Compliance: LTP, POSIX, LSB tests ar=
e not creating results file (.targz) [5]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l5 level2 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>11222 - [eclipse] C compiler cannot create e=
xecutables when reconfiguring project [6]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l5 level2 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>11174 - Update yocto-bsp script for kernel 4=
.10 [7]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l5 level2 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>11144 - Build Appliance&nbsp;: Toaster requi=
res pod2man [8]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l5 level2 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>11185 - selftest/devtool: failing when parsi=
ng &#8220;mraa&#8221; recipe [9]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l5 level1 lfo3">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>M / Low<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l5 level2 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>11173&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; testimage: &quot;test_dnf_install_from_http&quot; is =
failing [10]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l5 level2 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>11220&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; runqemu: Qemux86 not boot with Ubuntu [11]<o:p></o:p>=
</p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l5 level2 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>11225&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; Build from Command line fail when finish all the task=
s [12]<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>* High / M&#43; No=
t New<o:p></o:p></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l5 level1 lfo3">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>11119&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; runqemu-extract-sdk is failing when extracting .tar.bz file =
[13]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l5 level1 lfo3">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>11064&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; [Yocto 2.2.1] kernel version mismatched when using yocto-bsp=
 to create custom qemu bsp [14]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l5 level1 lfo3">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>11025&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; selftest/devtool: Build mdadm failing on Centos7 and Ubuntu =
1404 [15]<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal">Full bugs Report : <a href=3D"https://wiki.yoctoproj=
ect.org/wiki/WW11_-_2017-03-15_-_Full_Test_Cycle_2.3_M3_rc1#Bugs_Found_duri=
ng_QA_Test">
https://wiki.yoctoproject.org/wiki/WW11_-_2017-03-15_-_Full_Test_Cycle_2.3_=
M3_rc1#Bugs_Found_during_QA_Test</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Performance<o:p>=
</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Performance measurements =
were huge &nbsp;improved &nbsp;for rootfs on both machines (Ubuntu around 3=
0%, Fedora 20%) &nbsp;falling down the numbers &nbsp;to the average observe=
d before the &#8220;recipe specific sysroot&#8221; implementation. On
 Ubuntu there was also a very good improvement &nbsp;on eSDK deploy time of=
 around 12%, some other measurement times were up on around 3% on both mach=
ines, below are the tables with the times of the tests:
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l5 level1 lfo3">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><b><span style=3D"font-size:14.0pt">Ubuntu<o=
:p></o:p></span></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in"><b><span style=3D=
"font-size:14.0pt"><o:p>&nbsp;</o:p></span></b></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"412" style=3D"width:247.0pt;margin-left:51.7pt;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:.2in">
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:48.0pt;border=
:solid windowtext 1.0pt;background:#DDEBF7;padding:0in 5.4pt 0in 5.4pt;heig=
ht:.2in">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"color:black">Test
<o:p></o:p></span></b></p>
</td>
<td width=3D"107" nowrap=3D"" valign=3D"bottom" style=3D"width:64.0pt;borde=
r:solid windowtext 1.0pt;border-left:none;background:#DDEBF7;padding:0in 5.=
4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"color:black">2.3 M2 rc3<o:p></o:p></span></b></p>
</td>
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:70.0pt;borde=
r:solid windowtext 1.0pt;border-left:none;background:#DDEBF7;padding:0in 5.=
4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"color:black">2.3 M3 rc1<o:p></o:p></span></b></p>
</td>
<td width=3D"108" nowrap=3D"" valign=3D"bottom" style=3D"width:65.0pt;borde=
r:solid windowtext 1.0pt;border-left:none;background:#DDEBF7;padding:0in 5.=
4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"color:black">%<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:.2in">
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:48.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:=
.2in">
<p class=3D"MsoNormal"><span style=3D"color:black">sato<o:p></o:p></span></=
p>
</td>
<td width=3D"107" nowrap=3D"" valign=3D"bottom" style=3D"width:64.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">1:11:47<o:p></o:p></span></p>
</td>
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:70.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">1:10:15<o:p></o:p></span></p>
</td>
<td width=3D"108" nowrap=3D"" valign=3D"bottom" style=3D"width:65.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">-2.14<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:.2in">
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:48.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:=
.2in">
<p class=3D"MsoNormal"><span style=3D"color:black">rootfs<o:p></o:p></span>=
</p>
</td>
<td width=3D"107" nowrap=3D"" valign=3D"bottom" style=3D"width:64.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">4:02<o:p></o:p></span></p>
</td>
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:70.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">2:28<o:p></o:p></span></p>
</td>
<td width=3D"108" nowrap=3D"" valign=3D"bottom" style=3D"width:65.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">-38.84<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:.2in">
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:48.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:=
.2in">
<p class=3D"MsoNormal"><span style=3D"color:black">rmwork<o:p></o:p></span>=
</p>
</td>
<td width=3D"107" nowrap=3D"" valign=3D"bottom" style=3D"width:64.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">1:05:56<o:p></o:p></span></p>
</td>
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:70.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">1:05:28<o:p></o:p></span></p>
</td>
<td width=3D"108" nowrap=3D"" valign=3D"bottom" style=3D"width:65.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">-0.71<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:.2in">
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:48.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:=
.2in">
<p class=3D"MsoNormal"><span style=3D"color:black">kernel<o:p></o:p></span>=
</p>
</td>
<td width=3D"107" nowrap=3D"" valign=3D"bottom" style=3D"width:64.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">5:00<o:p></o:p></span></p>
</td>
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:70.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">5:11<o:p></o:p></span></p>
</td>
<td width=3D"108" nowrap=3D"" valign=3D"bottom" style=3D"width:65.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">&#43;3.67<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:.2in">
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:48.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:=
.2in">
<p class=3D"MsoNormal"><span style=3D"color:black">eSDK<o:p></o:p></span></=
p>
</td>
<td width=3D"107" nowrap=3D"" valign=3D"bottom" style=3D"width:64.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">3:28<o:p></o:p></span></p>
</td>
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:70.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">3:01<o:p></o:p></span></p>
</td>
<td width=3D"108" nowrap=3D"" valign=3D"bottom" style=3D"width:65.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">-12.98<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l5 level1 lfo3">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><b><span style=3D"font-size:14.0pt">Fedora<o=
:p></o:p></span></b></p>
<p class=3D"MsoListParagraph"><b><span style=3D"font-size:14.0pt"><o:p>&nbs=
p;</o:p></span></b></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"412" style=3D"width:247.0pt;margin-left:50.7pt;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:.2in">
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:48.0pt;border=
:solid windowtext 1.0pt;background:#DDEBF7;padding:0in 5.4pt 0in 5.4pt;heig=
ht:.2in">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"color:black">Test
<o:p></o:p></span></b></p>
</td>
<td width=3D"107" nowrap=3D"" valign=3D"bottom" style=3D"width:64.0pt;borde=
r:solid windowtext 1.0pt;border-left:none;background:#DDEBF7;padding:0in 5.=
4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"color:black">2.3 M2 rc3<o:p></o:p></span></b></p>
</td>
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:70.0pt;borde=
r:solid windowtext 1.0pt;border-left:none;background:#DDEBF7;padding:0in 5.=
4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"color:black">2.3 M3 rc1<o:p></o:p></span></b></p>
</td>
<td width=3D"108" nowrap=3D"" valign=3D"bottom" style=3D"width:65.0pt;borde=
r:solid windowtext 1.0pt;border-left:none;background:#DDEBF7;padding:0in 5.=
4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"color:black">%<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:.2in">
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:48.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:=
.2in">
<p class=3D"MsoNormal"><span style=3D"color:black">sato<o:p></o:p></span></=
p>
</td>
<td width=3D"107" nowrap=3D"" valign=3D"bottom" style=3D"width:64.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">1:12:58<o:p></o:p></span></p>
</td>
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:70.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">1:12:34<o:p></o:p></span></p>
</td>
<td width=3D"108" nowrap=3D"" valign=3D"bottom" style=3D"width:65.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">-0.55<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:.2in">
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:48.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:=
.2in">
<p class=3D"MsoNormal"><span style=3D"color:black">rootfs<o:p></o:p></span>=
</p>
</td>
<td width=3D"107" nowrap=3D"" valign=3D"bottom" style=3D"width:64.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">3:19<o:p></o:p></span></p>
</td>
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:70.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">2:40<o:p></o:p></span></p>
</td>
<td width=3D"108" nowrap=3D"" valign=3D"bottom" style=3D"width:65.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">-19.60<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:.2in">
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:48.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:=
.2in">
<p class=3D"MsoNormal"><span style=3D"color:black">rmwork<o:p></o:p></span>=
</p>
</td>
<td width=3D"107" nowrap=3D"" valign=3D"bottom" style=3D"width:64.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">1:04:50<o:p></o:p></span></p>
</td>
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:70.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">1:07:10<o:p></o:p></span></p>
</td>
<td width=3D"108" nowrap=3D"" valign=3D"bottom" style=3D"width:65.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">&#43;3.60<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:.2in">
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:48.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:=
.2in">
<p class=3D"MsoNormal"><span style=3D"color:black">kernel<o:p></o:p></span>=
</p>
</td>
<td width=3D"107" nowrap=3D"" valign=3D"bottom" style=3D"width:64.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">6:27<o:p></o:p></span></p>
</td>
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:70.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">6:29<o:p></o:p></span></p>
</td>
<td width=3D"108" nowrap=3D"" valign=3D"bottom" style=3D"width:65.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">&#43;0.52<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:.2in">
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:48.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:=
.2in">
<p class=3D"MsoNormal"><span style=3D"color:black">eSDK<o:p></o:p></span></=
p>
</td>
<td width=3D"107" nowrap=3D"" valign=3D"bottom" style=3D"width:64.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">3:11<o:p></o:p></span></p>
</td>
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:70.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">3:17<o:p></o:p></span></p>
</td>
<td width=3D"108" nowrap=3D"" valign=3D"bottom" style=3D"width:65.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:.2in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"color:black">&#43;3.14<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></b></=
p>
<p class=3D"MsoNormal">Performance Charts : <a href=3D"https://wiki.yoctopr=
oject.org/charts/perf_milestone_GDC/performance_test.html">
https://wiki.yoctoproject.org/charts/perf_milestone_GDC/performance_test.ht=
ml</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">pTest<o:p></o:p>=
</span></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l5 level1 lfo3">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>There were improvemnte of pass rate for acl and e2f=
sprogs modules
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l5 level1 lfo3">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Modules that decreased pass rate were glib-2.0, ope=
nssh, openssl, quilt, strace, valgrind<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l5 level1 lfo3">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>A new bug was raised to address quil failures [15]<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">pTest full report : <a href=3D"https://wiki.yoctopro=
ject.org/wiki/WW11_-_2017-03-15_-_Full_Test_Cycle_2.3_M3_rc1#pTest_for_gene=
ricx86-64_on_NUC">
https://wiki.yoctoproject.org/wiki/WW11_-_2017-03-15_-_Full_Test_Cycle_2.3_=
M3_rc1#pTest_for_genericx86-64_on_NUC</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Kernel<o:p></o:p=
></span></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l5 level1 lfo3">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>to test case &#8220;TCTEMP_2.3_MANUAL_Kernel_dev_Ex=
ternal_source&#8221; was run, however due an issue with git, currently ther=
e is no way to test with 100% of reliability. I also tested on different ma=
chines. An empty directory is released when
 you are trying to clone from remote and local. I&nbsp; tested it also with=
 older kernel 4.4, 4.6 and I got the same issue. One month ago I could repr=
oduce this properly.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Links<o:p></o:p>=
</span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11154">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1115=
4</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11172">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1117=
2</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">3.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11193">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1119=
3</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">4.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11223">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1122=
3</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">5.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11224">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1122=
4</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">6.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11222">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1122=
2</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">7.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11174">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1117=
4</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">8.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11144">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1114=
4</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">9.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11185">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1118=
5</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">10.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11173">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1117=
3</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">11.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11220">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1122=
0</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">12.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11225">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1122=
5</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">13.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11119">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1111=
9</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">14.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11064">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1106=
4</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">15.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11025">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1102=
5</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo6"><![if !supportLists]><span style=3D"mso-list:Ignore">16.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11221">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1122=
1</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Jos=E9</b><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A020E3398fmsmsx101amrcor_--
