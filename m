Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7402E0098D; Tue, 12 May 2015 04:17:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31603E0097D
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 04:16:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 12 May 2015 04:16:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,414,1427785200"; 
	d="scan'208,217";a="727817961"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
	by orsmga002.jf.intel.com with ESMTP; 12 May 2015 04:16:53 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.124]) by
	IRSMSX109.ger.corp.intel.com ([169.254.13.51]) with mapi id
	14.03.0224.002; Tue, 12 May 2015 12:16:52 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.7.2_rc3 Full Pass test report
Thread-Index: AQHQjKRfHbCy1+p2WUeaxVVdRcYEDg==
Date: Tue, 12 May 2015 11:16:51 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E962604042A@irsmsx110.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.9.150325
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Yocto 1.7.2_rc3 Full Pass test report
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
X-List-Received-Date: Tue, 12 May 2015 11:17:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E962604042Airsmsx110gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E962604042Airsmsx110gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the Full Pass test report for Yocto 1.7.2_rc3.
Below you can find the test summary report. The report is accessible also o=
n wiki here: https://wiki.yoctoproject.org/wiki/WW19_-_2015-05-01_-_Full_Pa=
ss_1.7.2_rc3.



 Test type:  Full Pass Release Test

 Branch: dizzy

 Build name: 1.7.2.rc3

 poky commit:29812e61736a95f1de64b3e9ebbb9c646ebd28dd

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rel=
eases/yocto-1.7.2_rc3/

 Distributions tested: Ubuntu 14.10 64bit, Fedora 21 64bit, Opensuse 13.2 6=
4bit, CentOS 7 64 bit

Test Run Summary Report
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

3851<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3851> 3853<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3853>

ADT: dizzy branch

Fedora 21 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

3848<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3848> 3849<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3849>

ADT: dizzy branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3858<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3858> 3859<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3859>

BSP/QEMU: dizzy branch

Beaglebone Black

98.7%

none

1.3%

6665<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6665>

0.0%

none

100.0%

3862<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3862> 3863<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3863>

BSP/QEMU: dizzy branch

EdgeRouter

100.0%

none

0.0%

none

0.0%

none

100.0%

3809<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3809> 3811<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3811>

BSP/QEMU: dizzy branch

generic-x86 on AtomPC

100.0%

none

0.0%

none

0.0%

none

100.0%

3805<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3805> 3807<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3807>

BSP/QEMU: dizzy branch

genericx86-64 on NUC

100.0%

none

0.0%

none

0.0%

none

100.0%

3861<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3861>

BSP/QEMU: dizzy branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

3856<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3856> 3857<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3857>

BSP/QEMU: dizzy branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

3812<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3812> 3813<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3813> 3815<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3815>

BSP/QEMU: dizzy branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

3821<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3821> 3823<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3823>

BSP/QEMU: dizzy branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

3825<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3825> 3827<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3827>

BSP/QEMU: dizzy branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

3829<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3829> 3831<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3831>

BSP/QEMU: dizzy branch

qemuppc

100.0%

7236<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236>

0.0%

none

0.0%

none

100.0%

3816<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3816> 3817<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3817>

BSP/QEMU: dizzy branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

3748<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3748>

Eclipse Plugin: dizzy branch

Ubuntu 14.10 x86_64

100.0%

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

0.0%

none

0.0%

none

100.0%

3855<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3855> 3865<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3865>

Meta-yocto: dizzy branch

Ubuntu 14.04 x86_64

100.0%

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

0.0%

none

0.0%

none

100.0%

3745<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3745> 3746<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3746>

HOB: dizzy branch

Ubuntu 14.10 x86_64

95.6%

none

0.0%

none

4.4%

none

100.0%

3797<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3797> 3833<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3833>

Toaster: dizzy branch

Ubuntu 15.04 x86_64

90.1%

none

9.9%

7198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198> 5187<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187> 7638<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D7638> 5844<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5844>

0.0%

none

100.0%

3802<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3802> 3749<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3749> 3750<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3750>

OE-Core: dizzy branch

Ubuntu 14.10 x86_64

97.6%

none

2.4%

none

0.0%

none

100.0%

3803<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3803> 3778<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3778> 3779<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3779>

BitBake: dizzy branch

Ubuntu 14.10 x86_64

97.1%

none

1.4%

7734<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7734>

1.4%

none

100.0%

3867<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3867>

Automated Build Testing: master branch

CentOS 7 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3869<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3869>

Automated Build Testing: master branch

Fedora 21 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3868<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3868>

Automated Build Testing: master branch

OpenSuse 13.2 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3870<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3870>

Automated Build Testing: master branch

Ubuntu 14.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3866<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3866> 3794<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3794>

Runtime: dizzy branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

3854<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3854>

Build Appliance: dizzy branch

VMWare Player on Ubuntu

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 25



[Bug Status]


Test Case Status Report

Status

Count

BLOCKED

3

FAILED

10

PASSED

1330

Total: 1343


[http://chart.apis.google.com/chart?cht=3Dbvg&chs=3D372x120&chbh=3Da&chds=
=3D0,1330&chxt=3Dy&chxr=3D0,0,1330,222&chd=3Dt:&chd=3Dt:3,10,1330&chco=3DFF=
FF66|FF9933|00FF00&chdl=3DBLOCKED(3)+0%25|FAILED(10)+1%25|PASSED(1330)+99%2=
5]




Bugs Found during QA Test
New or notable issues Found during QA Test & Community
OE-Core

6665<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6665>

[Beaglebone] Xserver segmentation fault when reboot the system

Medium

Ross Burton

Yi Zhao

1.8 M3

VERIFIED

FIXED

Regression (Found by QA test)

2014-08-28


Please note that 6665 is fixed in 1.8 but still present in 1.7.*



Other Bugs found during QA Test (including regressions)
ID

Summary (8 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.cg=
i?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D5163&field0-0-1=3Dbu=
g_id&type0-0-1=3Dequals&value0-0-1=3D%205187&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%205844&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%206156&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%207198=
&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%207236&field0-0-6=3Db=
ug_id&type0-0-6=3Dequals&value0-0-6=3D%207638&field0-0-7=3Dbug_id&type0-0-7=
=3Dequals&value0-0-7=3D%207734&field0-1-0=3Dbug_status&type0-1-0=3Dnotequal=
s&value0-1-0=3DCLOSED>

P

Assignee

QA

Milestone

Status

Resolution

cf_regression_type

Created

New (Never tested)

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

no external tools displayed when first trying to run QEMU - test case 48 fa=
iled on Ubuntu 12.04 x86-64 host(build 1.5 M4 rc2)

Medium

Todor Minchev



Future

ACCEPTED

New (Never tested)

2013-09-11

Toaster

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>

same cooker log file name used for several builds

Medium

Richard Purdie



1.9

ACCEPTED

New (Never tested)

2013-09-13

5844<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844>

Wrong script_type when task is not executed.

Medium

Alexandru Damian



1.9 M4

ACCEPTED

New (Never tested)

2014-02-18

Regression (Used to work)

7734<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7734>

bitbake-prserv-tool fails to import file

Undecided

Richard Purdie

Lucian Musat

---

NEW

Regression (Used to work)

2015-05-08

OE-Core

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

[crosstap] no trace message output on qemuarm

Medium

Tom Zanussi



1.8

ACCEPTED

Regression (Used to work)

2014-04-14

System Startup

7236<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236>

The color of splash screen for qemuppc is strange

Medium

Robert Yang

Yi Zhao

1.9

NEW

Regression (Used to work)

2015-01-23

Toaster

7198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198>

Hiding a sorted column does not revert to default sorting

Medium

Michael Wood

Mihail Stanciu

1.9 M1

ACCEPTED

Regression (Used to work)

2015-01-20

7638<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7638>

Warning details not shown

Medium+

David Reyna

Mihail Stanciu

1.9 M1

NEW

Regression (Used to work)

2015-04-21

Bug Trend

An overview of this week's Yocto Bug Trend<https://wiki.yoctoproject.org/wi=
ki/Yocto_Bug_Trend> charts can be accessed on the following page<https://wi=
ki.yoctoproject.org/charts/combo.html>



Build Performance Test

Detailed description on how performance test are run can be found on Perfor=
mance Test<https://wiki.yoctoproject.org/wiki/Performance_Test> wiki. The b=
elow charts are displaying the build performance trend for 1.8 by milestone=
 starting 1.6 on Master. The charts by Milestone can be accessed at this li=
nk<https://wiki.yoctoproject.org/charts/perf_milestone/performance_test.htm=
l> where you can view more detailed information or by clicking on the image=
s which will open a new window with the interactive chart.

The 1.7.2 build performance results have been added for this test run and a=
re available here: 1.7.2 Build Performance charts<https://wiki.yoctoproject=
.org/charts/perf_milestone/performance_test.html>.

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania

--_000_1FFB62CE8AEB0D4298B51122D8903E962604042Airsmsx110gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-ID: <7B2F8C7908D13C4EA9A424A62B83A616@intel.com>
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
	font-size:12.0pt;
	font-family:"MS PGothic",sans-serif;
	mso-fareast-language:JA;}
h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:24.0pt;
	font-family:"MS PGothic",sans-serif;
	mso-fareast-language:JA;
	font-weight:bold;}
h2
	{mso-style-priority:9;
	mso-style-link:"Heading 2 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:18.0pt;
	font-family:"MS PGothic",sans-serif;
	mso-fareast-language:JA;
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
	font-family:"MS PGothic",sans-serif;
	mso-fareast-language:JA;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"MS Gothic";
	mso-fareast-language:JA;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas",serif;
	mso-fareast-language:JA;}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Calibri Light",sans-serif;
	color:#2E74B5;
	mso-fareast-language:JA;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.Heading2Char
	{mso-style-name:"Heading 2 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 2";
	font-family:"Calibri Light",sans-serif;
	color:#2E74B5;
	mso-fareast-language:JA;}
span.EmailStyle23
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:black;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Hello,<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Here is the Full Pass test report for Yocto 1.7.2_rc3.&n=
bsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Below you can find the test summary report. The report i=
s accessible also on wiki here:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW19_-_2015-05-01_-_Full_Pass=
_1.7.2_rc3">
https://wiki.yoctoproject.org/wiki/WW19_-_2015-05-01_-_Full_Pass_1.7.2_rc3<=
/a>.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
;widows: 1"><span style=3D"font-family:&quot;Courier New&quot;;color:black"=
> Test type:&nbsp; Full Pass Release Test<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-family:&quot;Courier New&quot;;color:black"> Branch: =
dizzy<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-family:&quot;Courier New&quot;;color:black"> Build na=
me: 1.7.2.rc3<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-family:&quot;Courier New&quot;;color:black"> poky com=
mit:29812e61736a95f1de64b3e9ebbb9c646ebd28dd <o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-family:&quot;Courier New&quot;;color:black">&nbsp;Aut=
obuilder images repository: http://autobuilder.yoctoproject.org/pub/release=
s/yocto-1.7.2_rc3/<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-family:&quot;Courier New&quot;;color:black"> Distribu=
tions tested: Ubuntu 14.10 64bit, Fedora 21 64bit, Opensuse 13.2 64bit, Cen=
tOS 7 64 bit&nbsp; <o:p></o:p></span></pre>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"margin:0in;margin-bottom:.0001pt;line-height:20.25pt;backgroun=
d:white;border:none;padding:0in;widows: 1;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:12.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal">Test Run Summary =
Report</span></span><span style=3D"font-family:&quot;Arial&quot;,sans-serif=
;color:black;font-weight:normal"><o:p></o:p></span></h1>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0" style=3D"background:white;widows: 1">
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
ing Summary Report<o:p></o:p></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;border-collapse:collapse;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
 Run<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
 Plan<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Envi=
ronment<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Pass=
ed<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Othe=
r issues<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Fail=
ed<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Fail=
ing bugs<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Bloc=
ked<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Bloc=
king bugs<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comp=
lete<o:p></o:p></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3851"><span style=3D"color:#5A3696;text-decoration:none">=
3851</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3853"><span style=3D"color:#5A3696;text-decoration:none">38=
53</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">ADT: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Fedora 21 i686<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3848"><span style=3D"color:#5A3696;text-decoration:none">=
3848</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3849"><span style=3D"color:#5A3696;text-decoration:none">38=
49</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">ADT: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 14.04 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3858"><span style=3D"color:#5A3696;text-decoration:none">=
3858</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3859"><span style=3D"color:#5A3696;text-decoration:none">38=
59</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Beaglebone Black<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">98.7%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.3%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D6665"><span style=3D"color:#5A3696;text-decoration:none">6665</s=
pan></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3862"><span style=3D"color:#5A3696;text-decoration:none">=
3862</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3863"><span style=3D"color:#5A3696;text-decoration:none">38=
63</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">EdgeRouter<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3809"><span style=3D"color:#5A3696;text-decoration:none">=
3809</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3811"><span style=3D"color:#5A3696;text-decoration:none">38=
11</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">generic-x86 on AtomPC<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3805"><span style=3D"color:#5A3696;text-decoration:none">=
3805</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3807"><span style=3D"color:#5A3696;text-decoration:none">38=
07</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">genericx86-64 on NUC<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3861"><span style=3D"color:#5A3696;text-decoration:none">=
3861</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">MPC8315e-rdb<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3856"><span style=3D"color:#5A3696;text-decoration:none">=
3856</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3857"><span style=3D"color:#5A3696;text-decoration:none">38=
57</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">P1022ds<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3812"><span style=3D"color:#5A3696;text-decoration:none">=
3812</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3813"><span style=3D"color:#5A3696;text-decoration:none">38=
13</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run=
.cgi?run_id=3D3815"><span style=3D"color:#5A3696;text-decoration:none">3815=
</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">qemu-x86<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3821"><span style=3D"color:#5A3696;text-decoration:none">=
3821</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3823"><span style=3D"color:#5A3696;text-decoration:none">38=
23</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">qemuarm<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3825"><span style=3D"color:#5A3696;text-decoration:none">=
3825</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3827"><span style=3D"color:#5A3696;text-decoration:none">38=
27</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">qemumips<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3829"><span style=3D"color:#5A3696;text-decoration:none">=
3829</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3831"><span style=3D"color:#5A3696;text-decoration:none">38=
31</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">qemuppc<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7236"><span style=3D"color:#5A3696;text-decoration:none">7236</s=
pan></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3816"><span style=3D"color:#5A3696;text-decoration:none">=
3816</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3817"><span style=3D"color:#5A3696;text-decoration:none">38=
17</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BSP/QEMU: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">qemux86-64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3748"><span style=3D"color:#5A3696;text-decoration:none">=
3748</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Eclipse Plugin: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 14.10 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D5163"><span style=3D"color:#5A3696;text-decoration:none">5163</s=
pan></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3855"><span style=3D"color:#5A3696;text-decoration:none">=
3855</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3865"><span style=3D"color:#5A3696;text-decoration:none">38=
65</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Meta-yocto: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 14.04 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D6156"><span style=3D"color:#5A3696;text-decoration:none">6156</s=
pan></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3745"><span style=3D"color:#5A3696;text-decoration:none">=
3745</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3746"><span style=3D"color:#5A3696;text-decoration:none">37=
46</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">HOB: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 14.10 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">95.6%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">4.4%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3797"><span style=3D"color:#5A3696;text-decoration:none">=
3797</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3833"><span style=3D"color:#5A3696;text-decoration:none">38=
33</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Toaster: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 15.04 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">90.1%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">9.9%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7198"><span style=3D"color:#5A3696;text-decoration:none">7198</s=
pan></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D5187"><span style=3D"color:#5A3696;text-decoration:none">5187</span></a>=
&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7638">=
<span style=3D"color:#5A3696;text-decoration:none">7638</span></a>&nbsp;<a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844"><span sty=
le=3D"color:#5A3696;text-decoration:none">5844</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3802"><span style=3D"color:#5A3696;text-decoration:none">=
3802</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3749"><span style=3D"color:#5A3696;text-decoration:none">37=
49</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run=
.cgi?run_id=3D3750"><span style=3D"color:#5A3696;text-decoration:none">3750=
</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">OE-Core: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 14.10 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">97.6%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">2.4%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3803"><span style=3D"color:#5A3696;text-decoration:none">=
3803</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3778"><span style=3D"color:#5A3696;text-decoration:none">37=
78</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run=
.cgi?run_id=3D3779"><span style=3D"color:#5A3696;text-decoration:none">3779=
</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">BitBake: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 14.10 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">97.1%<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.4%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D7734"><span style=3D"color:#5A3696;text-decoration:none">7734</s=
pan></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.4%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3867"><span style=3D"color:#5A3696;text-decoration:none">=
3867</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Automated Build Testing: master branch<o:p></o:p></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">CentOS 7 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3869"><span style=3D"color:#5A3696;text-decoration:none">=
3869</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Automated Build Testing: master branch<o:p></o:p></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Fedora 21 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3868"><span style=3D"color:#5A3696;text-decoration:none">=
3868</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Automated Build Testing: master branch<o:p></o:p></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">OpenSuse 13.2 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3870"><span style=3D"color:#5A3696;text-decoration:none">=
3870</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Automated Build Testing: master branch<o:p></o:p></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Ubuntu 14.10 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3866"><span style=3D"color:#5A3696;text-decoration:none">=
3866</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D3794"><span style=3D"color:#5A3696;text-decoration:none">37=
94</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Runtime: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Multiple Environments<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D3854"><span style=3D"color:#5A3696;text-decoration:none">=
3854</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Build Appliance: dizzy branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">VMWare Player on Ubuntu<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0.0%<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">100.0%<=
o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b>Total: 25</b><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:18.0pt"><span styl=
e=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"><br>
</span><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black;=
mso-fareast-language:EN-US"><img border=3D"0" width=3D"558" height=3D"180" =
id=3D"_x0000_i1026" src=3D"http://chart.apis.google.com/chart?cht=3Dbvg&amp=
;chs=3D372x120&amp;chbh=3Da&amp;chds=3D0,5&amp;chxt=3Dy&amp;chxr=3D0,0,5,1&=
amp;chd=3Dt:&amp;chd=3Dt:5,1,3&amp;chco=3D3366FF|00FF00|FF0000&amp;chdl=3DA=
CCEPTED(5)56%25|VERIFIED(1)11%25|NEW(3)33%25&amp;chtt=3DBug&#43;Status" alt=
=3D"Bug Status"></span><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black"><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt;line-height:18.0pt"><span styl=
e=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p=
></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
<tbody>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
 Case Status Report<o:p></o:p></b></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Stat=
us<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Coun=
t<o:p></o:p></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal">BLOCKED<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">3<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">FAILED<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">10<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal">PASSED<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">1330<o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b>Total: 1343</b><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><img bord=
er=3D"0" width=3D"558" height=3D"180" id=3D"_x0000_i1025" src=3D"http://cha=
rt.apis.google.com/chart?cht=3Dbvg&amp;chs=3D372x120&amp;chbh=3Da&amp;chds=
=3D0,1330&amp;chxt=3Dy&amp;chxr=3D0,0,1330,222&amp;chd=3Dt:&amp;chd=3Dt:3,1=
0,1330&amp;chco=3DFFFF66|FF9933|00FF00&amp;chdl=3DBLOCKED(3)&#43;0%25|FAILE=
D(10)&#43;1%25|PASSED(1330)&#43;99%25" alt=3D"http://chart.apis.google.com/=
chart?cht=3Dbvg&amp;chs=3D372x120&amp;chbh=3Da&amp;chds=3D0,1330&amp;chxt=
=3Dy&amp;chxr=3D0,0,1330,222&amp;chd=3Dt:&amp;chd=3Dt:3,10,1330&amp;chco=3D=
FFFF66|FF9933|00FF00&amp;chdl=3DBLOCKED(3)&#43;0%25|FAILED(10)&#43;1%25|PAS=
SED(1330)&#43;99%25"></span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:20.25pt;background:white;border:none;padding:0in;w=
idows: 1;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:12.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal"><o:p>&nbsp;</o:p>=
</span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:20.25pt;background:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:12.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;font-weight:normal"><o:p>&nbsp;</o:p>=
</span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:20.25pt;background:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:12.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black">Bugs Found during QA Test</span></sp=
an><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"><o:=
p></o:p></span></h1>
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:20.25pt;background:white;border:none;padding:0in;w=
idows: 1;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:12.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:red;font-weight:normal">New or notable issu=
es Found during QA Test &amp; Community</span></span><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black;font-weight:normal"><o:p></o:=
p></span></h2>
</div>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:white;border-collapse:collapse;border:none;borde=
r-top-left-radius: 8px;border-top-right-radius: 8px;border-bottom-right-rad=
ius: 8px;border-bottom-left-radius: 8px;border-spacing: 0px;widows: 1">
<tbody>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border:solid #F0F0F0 1.0pt;borde=
r-bottom:solid #555555 1.5pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><b><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif;color:#555555">OE-Core<o:p></o:p></spa=
n></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D6665" title=3D"bugzilla:6665"><span styl=
e=3D"color:#3366BB;text-decoration:none">6665</span></a><o:p></o:p></span><=
/p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">[Beaglebone] Xserver segment=
ation fault when reboot the system<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Ross&nbsp;Burton<o:p></o:p><=
/span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Yi&nbsp;Zhao<o:p></o:p></spa=
n></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">1.8 M3<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">VERIFIED<o:p></o:p></span></=
p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">FIXED<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Regression (Found by QA test=
)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">2014-08-28<o:p></o:p></span>=
</p>
</td>
</tr>
</tbody>
</table>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:20.25pt;background:white;widows: 1">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"><br>
Please note that 6665 is fixed in 1.8 but still present in 1.7.*<o:p></o:p>=
</span></p>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:20.25pt;background:white;widows: 1">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"><o:p>&=
nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:20.25pt;background:white;border:none;padding:0in;w=
idows: 1;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:12.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black">Other Bugs found during QA Test (inc=
luding regressions)</span></span><span style=3D"font-family:&quot;Arial&quo=
t;,sans-serif;color:black"><o:p></o:p></span></h2>
</div>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:white;border-collapse:collapse;border:none;borde=
r-top-left-radius: 8px;border-top-right-radius: 8px;border-bottom-right-rad=
ius: 8px;border-bottom-left-radius: 8px;border-spacing: 0px;widows: 1">
<tbody>
<tr>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:none;border-right:none;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:20.25pt">
<b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">ID<=
o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:20.25pt">
<b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Sum=
mary (8 tasks)&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/buglist.cg=
i?&amp;field0-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;value0-0-0=3D5163&amp=
;field0-0-1=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0-0-1=3D%205187&amp;fi=
eld0-0-2=3Dbug_id&amp;type0-0-2=3Dequals&amp;value0-0-2=3D%205844&amp;field=
0-0-3=3Dbug_id&amp;type0-0-3=3Dequals&amp;value0-0-3=3D%206156&amp;field0-0=
-4=3Dbug_id&amp;type0-0-4=3Dequals&amp;value0-0-4=3D%207198&amp;field0-0-5=
=3Dbug_id&amp;type0-0-5=3Dequals&amp;value0-0-5=3D%207236&amp;field0-0-6=3D=
bug_id&amp;type0-0-6=3Dequals&amp;value0-0-6=3D%207638&amp;field0-0-7=3Dbug=
_id&amp;type0-0-7=3Dequals&amp;value0-0-7=3D%207734&amp;field0-1-0=3Dbug_st=
atus&amp;type0-1-0=3Dnotequals&amp;value0-1-0=3DCLOSED"><span style=3D"font=
-family:&quot;Cambria Math&quot;,serif;color:#3366BB;text-decoration:none">=
=1B$B"M=1B(B</span></a><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:20.25pt">
<b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">P<o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:20.25pt">
<b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Ass=
ignee<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:20.25pt">
<b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">QA<=
o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:20.25pt">
<b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Mil=
estone<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:20.25pt">
<b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Sta=
tus<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:20.25pt">
<b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Res=
olution<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:20.25pt">
<b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">cf_=
regression_type<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:20.25pt">
<b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Cre=
ated<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><b><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif;color:#555555">New (Never tested)<o:p>=
</o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5163" title=3D"bugzilla:5163"><span styl=
e=3D"color:#3366BB;text-decoration:none">5163</span></a><o:p></o:p></span><=
/p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">no external tools displayed =
when first trying to run QEMU - test case 48 failed on Ubuntu 12.04 x86-64 =
host(build 1.5 M4 rc2)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Todor&nbsp;Minchev<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Future<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">ACCEPTED<o:p></o:p></span></=
p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">New (Never tested)<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">2013-09-11<o:p></o:p></span>=
</p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><b><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif;color:#555555">Toaster<o:p></o:p></spa=
n></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5187" title=3D"bugzilla:5187"><span styl=
e=3D"color:#3366BB;text-decoration:none">5187</span></a><o:p></o:p></span><=
/p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">same cooker log file name us=
ed for several builds<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Richard&nbsp;Purdie<o:p></o:=
p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">1.9<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">ACCEPTED<o:p></o:p></span></=
p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">New (Never tested)<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">2013-09-13<o:p></o:p></span>=
</p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5844" title=3D"bugzilla:5844"><span styl=
e=3D"color:#3366BB;text-decoration:none">5844</span></a><o:p></o:p></span><=
/p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Wrong script_type when task =
is not executed.<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Alexandru&nbsp;Damian<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">1.9 M4<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">ACCEPTED<o:p></o:p></span></=
p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">New (Never tested)<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">2014-02-18<o:p></o:p></span>=
</p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><b><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif;color:#555555">Regression (Used to wor=
k)<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D7734" title=3D"bugzilla:7734"><span styl=
e=3D"color:#3366BB;text-decoration:none">7734</span></a><o:p></o:p></span><=
/p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">bitbake-prserv-tool fails to=
 import file<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Undecided<o:p></o:p></span><=
/p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Richard&nbsp;Purdie<o:p></o:=
p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Lucian&nbsp;Musat<o:p></o:p>=
</span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">---<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Regression (Used to work)<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">2015-05-08<o:p></o:p></span>=
</p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><b><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif;color:#555555">OE-Core<o:p></o:p></spa=
n></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D6156" title=3D"bugzilla:6156"><span styl=
e=3D"color:#3366BB;text-decoration:none">6156</span></a><o:p></o:p></span><=
/p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">[crosstap] no trace message =
output on qemuarm<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Tom&nbsp;Zanussi<o:p></o:p><=
/span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">1.8<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">ACCEPTED<o:p></o:p></span></=
p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Regression (Used to work)<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">2014-04-14<o:p></o:p></span>=
</p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><b><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif;color:#555555">System Startup<o:p></o:=
p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D7236" title=3D"bugzilla:7236"><span styl=
e=3D"color:#3366BB;text-decoration:none">7236</span></a><o:p></o:p></span><=
/p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">The color of splash screen f=
or qemuppc is strange<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Robert&nbsp;Yang<o:p></o:p><=
/span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Yi&nbsp;Zhao<o:p></o:p></spa=
n></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">1.9<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Regression (Used to work)<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">2015-01-23<o:p></o:p></span>=
</p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><b><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif;color:#555555">Toaster<o:p></o:p></spa=
n></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D7198" title=3D"bugzilla:7198"><span styl=
e=3D"color:#3366BB;text-decoration:none">7198</span></a><o:p></o:p></span><=
/p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Hiding a sorted column does =
not revert to default sorting<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Medium<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Michael&nbsp;Wood<o:p></o:p>=
</span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Mihail&nbsp;Stanciu<o:p></o:=
p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">1.9 M1<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">ACCEPTED<o:p></o:p></span></=
p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">Regression (Used to work)<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">2015-01-20<o:p></o:p></span>=
</p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;padding:1.5pt 3.75pt 1=
.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:#E68A00"><a href=3D"https://bugzill=
a.yoctoproject.org/show_bug.cgi?id=3D7638" title=3D"bugzilla:7638"><span st=
yle=3D"color:#3366BB;text-decoration:none">7638</span></a><o:p></o:p></span=
></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:#E68A00">Warning details not shown<=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:#E68A00">Medium&#43;<o:p></o:p></sp=
an></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:#E68A00">David&nbsp;Reyna<o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:#E68A00">Mihail&nbsp;Stanciu<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:#E68A00">1.9 M1<o:p></o:p></span></=
p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:#E68A00">NEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:#E68A00">Regression (Used to work)<=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;padding:1.5pt 3.75pt 1=
.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:20.25pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif;color:#E68A00">2015-04-21<o:p></o:p></spa=
n></p>
</td>
</tr>
</tbody>
</table>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:20.25pt;background:white;border:none;padding:0in;w=
idows: 1;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:12.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black">Bug Trend</span></span><span style=
=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"><o:p></o:p></span=
></h2>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:20.25pt;background:white;widows: 1">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">An ove=
rview of this week's&nbsp;<a href=3D"https://wiki.yoctoproject.org/wiki/Yoc=
to_Bug_Trend" title=3D"Yocto Bug Trend"><span style=3D"color:#5A3696;text-d=
ecoration:none">Yocto Bug Trend</span></a>&nbsp;charts can be
 accessed on the following&nbsp;<a href=3D"https://wiki.yoctoproject.org/ch=
arts/combo.html"><span style=3D"color:#3366BB;text-decoration:none">page</s=
pan></a><o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:20.25pt;background:white;widows: 1">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"><o:p>&=
nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:20.25pt;background:white;border:none;padding:0in;w=
idows: 1;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:12.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black">Build Performance Test</span></span>=
<span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"><o:p><=
/o:p></span></h1>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:20.25pt;background:white;widows: 1">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Detail=
ed description on how performance test are run can be found on&nbsp;<a href=
=3D"https://wiki.yoctoproject.org/wiki/Performance_Test" title=3D"Performan=
ce Test"><span style=3D"color:#5A3696;text-decoration:none">Performance
 Test</span></a>&nbsp;wiki. The below charts are displaying the build perfo=
rmance trend for 1.8 by milestone starting 1.6 on Master. The charts by Mil=
estone can be accessed at this&nbsp;<a href=3D"https://wiki.yoctoproject.or=
g/charts/perf_milestone/performance_test.html"><span style=3D"color:#3366BB=
;text-decoration:none">link</span></a>&nbsp;where
 you can view more detailed information or by clicking on the images which =
will open a new window with the interactive chart.<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:20.25pt;background:white;widows: 1">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">The 1.=
7.2 build performance results have been added for this test run and are ava=
ilable here:&nbsp;<a href=3D"https://wiki.yoctoproject.org/charts/perf_mile=
stone/performance_test.html"><span style=3D"color:#3366BB;text-decoration:n=
one">1.7.2
 Build Performance charts</span></a>.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Regards,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:#7F7F7F">--</span></b><span =
style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#7F7F7F">Alexandru Georgescu=
</span></b><span style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#7F7F7F">Yocto QA Engineer</=
span></b><span style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#7F7F7F">SSG/SSD Open Source=
 Technology Center Romania</span></b><span style=3D"color:black"><o:p></o:p=
></span></p>
</div>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E962604042Airsmsx110gercor_--
