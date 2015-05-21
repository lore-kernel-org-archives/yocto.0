Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 166E8E009C5; Thu, 21 May 2015 12:02:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88657E00902
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 12:02:33 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 21 May 2015 12:02:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,471,1427785200"; 
	d="scan'208,217";a="713833632"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
	by fmsmga001.fm.intel.com with ESMTP; 21 May 2015 12:02:29 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.124]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.148]) with mapi id
	14.03.0224.002; Thu, 21 May 2015 20:02:29 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.6.3.rc4 Full Pass test report
Thread-Index: AdCT+J05IquoQLa5TxeO4urOltnY+A==
Date: Thu, 21 May 2015 19:02:27 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E962604AC19@irsmsx110.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.0.150423
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Yocto 1.6.3.rc4 Full Pass test report
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
X-List-Received-Date: Thu, 21 May 2015 19:02:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E962604AC19irsmsx110gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E962604AC19irsmsx110gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the full pass test result for 1.6.3.rc4. There were no new issues f=
ound during testing.
The full pass test report can be found here: https://wiki.yoctoproject.org/=
wiki/WW20_-_2015-05-14_-_Full_Pass_1.6.3.rc4

Testing data

 Test type:  Full Pass Release Test

 Branch: daisy

 Build name: 1.6.3.rc4

 poky commit:b2ba41b57550aa912da93b4aef789ff562a67fce

 Eclipse Plugin commit Kepler:0ee2b82c0e8ce355bca0601aa63a0d8758aaf199

 Autobuilder images repository:  http://autobuilder.yoctoproject.org/pub/re=
leases/yocto-1.6.3.rc4

 Distributions tested: Ubuntu 14.10 64bit,  Fedora 21 64bit, Opensuse 13.2 =
64bit, CentOS 7 64 bit



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

3917<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3917> 3918<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3918>

ADT: daisy_branch

Fedora 21 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

3915<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3915> 3916<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3916>

ADT: daisy_branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3921<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3921> 3922<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3922>

BSP/QEMU: daisy branch

Beaglebone Black

98.7%

none

1.3%

6665<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6665>

0.0%

none

100.0%

3938<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3938> 3939<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3939>

BSP/QEMU: daisy branch

EdgeRouter

100.0%

none

0.0%

none

0.0%

none

100.0%

3931<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3931> 3932<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3932>

BSP/QEMU: daisy branch

generic-x86 on AtomPC

100.0%

none

0.0%

none

0.0%

none

100.0%

3929<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3929> 3930<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3930>

BSP/QEMU: daisy branch

genericx86-64 on Sugarbay

100.0%

none

0.0%

none

0.0%

none

100.0%

3940<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3940> 3941<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3941> 3940<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3940> 3941<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3941>

BSP/QEMU: daisy branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

3943<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3943> 3945<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3945>

BSP/QEMU: daisy branch

qemu-x86

100.0%

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

0.0%

none

0.0%

none

100.0%

3947<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3947> 3948<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3948>

BSP/QEMU: daisy branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

3949<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3949> 3950<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3950>

BSP/QEMU: daisy branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

3951<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3951> 3952<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3952>

BSP/QEMU: daisy branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

3944<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3944> 3946<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3946>

BSP/QEMU: daisy branch

qemux86-64

100.0%

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

0.0%

none

0.0%

none

100.0%

3923<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3923> 3926<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3926> 3928<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3928>

Eclipse Plugin: Daisy Branch

Ubuntu 15.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3953<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3953> 3954<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3954>

meta-yocto: daisy branch

Ubuntu 14.04 x86_64

100.0%

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

0.0%

none

0.0%

none

100.0%

3907<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3907> 3908<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3908>

HOB: daisy branch

Ubuntu 14.04 x86_64

97.8%

none

0.0%

none

2.2%

none

100.0%

3924<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3924> 3925<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3925>

Toaster: daisy branch

Ubuntu 14.10 x86_64

94.0%

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>

6.0%

7198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198> 5844<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844>

0.0%

none

100.0%

3935<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3935> 3936<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3936>

OE-Core: daisy branch

Ubuntu 14.10 x86_64

96.6%

none

3.4%

6973<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6973>

0.0%

none

100.0%

3578<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3578> 3579<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3579>

BitBake: daisy branch

Ubuntu 14.10 x86_64

96.6%

none

0.0%

none

3.4%

none

100.0%

3992<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3992>

Automated Build Testing: daisy branh

Fedora 21 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3993<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3993>

Automated Build Testing: daisy branh

Ubuntu 14.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3937<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3937>

Runtime: daisy branch

Ubuntu 14.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

3942<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3942>

Build Appliance: daisy branch

VMWare Player on Ubuntu

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 22



Test Case Status Report

Status

Count

BLOCKED

2

FAILED

6

PASSED

987

Total: 995


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:2,6,987&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(2)+0%25|FAILED(6)+1%25|P=
ASSED(987)+99%25]



Bug Status Report

[Bug Status]

ID

Priority

Status

Resolution

Test Runs

Description

Version

Target Milestone

Age (days)

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

Low

ACCEPTED

3946<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3946> 3945<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3945>

Windows switching failure

1.2

Future

1056

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>

Medium

ACCEPTED

3925<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3925>

same cooker log file name used for several builds

unspecified

1.9

608

5844<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844>

Medium

ACCEPTED

3925<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3925>

Wrong script_type when task is not executed.

unspecified

1.9 M4

450

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

Medium

ACCEPTED

3954<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3954>

[crosstap] no trace message output on qemuarm

1.6

1.9

395

6665<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6665>

Medium

VERIFIED

FIXED

3922<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3922>

[Beaglebone] Xserver segmentation fault when reboot the system

1.7

1.8 M3

259

6973<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6973>

Medium

IN PROGRESS REVIEW

3935<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3935>

Buildhistory-diff is not working

1.6.3

1.9 M1

178

7198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198>

Medium

ACCEPTED

3924<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3924>

Hiding a sorted column does not revert to default sorting

1.8

1.9 M1

114

Total: 7





Bug Trend

An overview of this week's Yocto Bug Trend<https://wiki.yoctoproject.org/wi=
ki/Yocto_Bug_Trend> charts can be accessed on the following page<https://wi=
ki.yoctoproject.org/charts/combo.html>



Bugs Found during QA Test
Issues Found during QA Test & Community

Please note that the bugs are present in master as well and there is a chan=
ge for them that they won't be backported.
ID

Summary (5 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.cg=
i?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D5187&field0-0-1=3Dbu=
g_id&type0-0-1=3Dequals&value0-0-1=3D%205844&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%206156&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%206973&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%207198=
&field0-1-0=3Dbug_status&type0-1-0=3Dnotequals&value0-1-0=3DCLOSED>

P

Assignee

QA

Milestone

Status

Resolution

cf_regression_type

Created

OE-Core

6156<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156>

[crosstap] no trace message output on qemuarm

Medium

Kevin Hao



1.9

ACCEPTED

Regression (Used to work)

2014-04-14

6973<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6973>

Buildhistory-diff is not working

Medium

Paul Eggleton

Costin

1.9 M1

IN PROGRESS REVIEW

Regression (Used to work)

2014-11-17

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

7198<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198>

Hiding a sorted column does not revert to default sorting

Medium

Michael Wood

Mihail Stanciu

1.9 M1

ACCEPTED

Regression (Used to work)

2015-01-20




Known issues found in1.6.3 but will be WONTFIX in this version
ID

Summary (6 tasks) =1B$B"M=1B(B<https://bugzilla.yoctoproject.org/buglist.cg=
i?&field0-0-0=3Dbug_id&type0-0-0=3Dequals&value0-0-0=3D5485&field0-0-1=3Dbu=
g_id&type0-0-1=3Dequals&value0-0-1=3D%206114&field0-0-2=3Dbug_id&type0-0-2=
=3Dequals&value0-0-2=3D%206684&field0-0-3=3Dbug_id&type0-0-3=3Dequals&value=
0-0-3=3D%206899&field0-0-4=3Dbug_id&type0-0-4=3Dequals&value0-0-4=3D%206975=
&field0-0-5=3Dbug_id&type0-0-5=3Dequals&value0-0-5=3D%206665&field0-1-0=3Db=
ug_status&type0-1-0=3Dnotequals&value0-1-0=3DCLOSED>

P

Assignee

QA

Milestone

Status

Resolution

cf_regression_type

Created

---

5485<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5485>

Buildstats info and database entries doesn't match sometimes

Medium

Marius Avram

Mihail Stanciu

1.6 M1

VERIFIED

WONTFIX

---

2013-11-06

Toaster

6114<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6114>

Elapsed_time value null for tasks with outcome=3D0

Medium

Alexandru Damian

Mihail Stanciu

1.6.1

VERIFIED

WONTFIX

---

2014-04-04

6684<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6684>

The content of the license column shouldn't be 4.0k.

Medium

Michael Wood

Mihail Stanciu

1.7.1

VERIFIED

WONTFIX

---

2014-09-05

6899<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6899>

cpu_usage value for some tasks doesn't match the value in the stats file

Medium

Alexandru Damian

Mihail Stanciu

1.6.2

VERIFIED

WONTFIX

---

2014-10-28

Regression (Found by QA test)

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

6975<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6975>

elapsed_time value in database doesn't match sometime the value in the task=
 stats file

Undecided

Jessica

Mihail Stanciu

---

VERIFIED

WONTFIX

Regression (Found by QA test)

2014-11-18


Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania

--_000_1FFB62CE8AEB0D4298B51122D8903E962604AC19irsmsx110gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-ID: <5E7AD8F77B07E14B99766AA37A5E27E4@intel.com>
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
	{font-family:"\@MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"\@MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
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
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Calibri Light",sans-serif;
	color:#2E74B5;
	mso-fareast-language:JA;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-fareast-language:JA;}
span.Heading2Char
	{mso-style-name:"Heading 2 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 2";
	font-family:"Calibri Light",sans-serif;
	color:#2E74B5;
	mso-fareast-language:JA;}
span.EmailStyle23
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
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
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:15.2pt;background:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:10.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Hello,<o:p></o:=
p></span></span></h1>
<h1 style=3D"margin:0in;margin-bottom:.0001pt;line-height:15.2pt;background=
:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:10.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Here is the ful=
l pass test result for 1.6.3.rc4. There were no new issues found during tes=
ting.<o:p></o:p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:15.2pt;background:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:10.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">The full pass t=
est report can be found here:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW20_-_2015-05-14_-_Full_Pass=
_1.6.3.rc4">
https://wiki.yoctoproject.org/wiki/WW20_-_2015-05-14_-_Full_Pass_1.6.3.rc4<=
/a><o:p></o:p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:15.2pt;background:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:10.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal"><o:p>&nbsp;</o:=
p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:15.2pt;background:white;border:none;paddin=
g:0in">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Testing data</s=
pan></span><span style=3D"font-size:18.0pt;font-family:&quot;Calibri&quot;,=
sans-serif;color:black;font-weight:normal"><o:p></o:p></span></h1>
</div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
;widows: 1"><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;=
,sans-serif;color:black"> Test type:&nbsp; Full Pass Release Test<o:p></o:p=
></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black"> Branch: daisy<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black"> Build name: 1.6.3.rc4<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black"> poky commit:b2ba41b57550aa912da93b4aef789ff562a67fce<o:p></=
o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black"> Eclipse Plugin commit Kepler:0ee2b82c0e8ce355bca0601aa63a0d=
8758aaf199<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black"> Autobuilder images repository:&nbsp; http://autobuilder.yoc=
toproject.org/pub/releases/yocto-1.6.3.rc4<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:black"> Distributions tested: Ubuntu 14.10 64bit,&nbsp; Fedora 21 6=
4bit, Opensuse 13.2 64bit, CentOS 7 64 bit <o:p></o:p></span></pre>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:15.2pt;ba=
ckground:white;border:none;padding:0in;widows: 1;background-position:initia=
l initial;background-repeat:initial initial;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal"><o:p>&nbsp;</o:=
p></span></span></h1>
<h1 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:15.2pt;ba=
ckground:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal"><o:p>&nbsp;</o:=
p></span></span></h1>
<h1 style=3D"margin:0in;margin-bottom:.0001pt;mso-line-height-alt:15.2pt;ba=
ckground:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Summary Report<=
/span></span><span style=3D"font-size:18.0pt;font-family:&quot;Calibri&quot=
;,sans-serif;color:black;font-weight:normal"><o:p></o:p></span></h1>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0" style=3D"background:white;widows: 1">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Tes=
ting Summary Report<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;border-collapse:collapse;border:none;back=
ground-position:initial initial;background-repeat:initial initial">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Tes=
t Run<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Tes=
t Plan<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Env=
ironment<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Pas=
sed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Oth=
er issues<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Fai=
led<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Fai=
ling bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Blo=
cked<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Blo=
cking bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Com=
plete<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3917"><span style=3D"color:#5A3696;text-decoration:none"=
>3917</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3918"><span style=3D"color:#5A3696;text-decoration:none">3=
918</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">ADT: daisy_branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Fedora 21 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3915"><span style=3D"color:#5A3696;text-decoration:none"=
>3915</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3916"><span style=3D"color:#5A3696;text-decoration:none">3=
916</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">ADT: daisy_branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3921"><span style=3D"color:#5A3696;text-decoration:none"=
>3921</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3922"><span style=3D"color:#5A3696;text-decoration:none">3=
922</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">BSP/QEMU: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Beaglebone Black<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">98.7%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1.3%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D6665"><span style=3D"color:#5A3696;text-decoration:none">6665</=
span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3938"><span style=3D"color:#5A3696;text-decoration:none"=
>3938</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3939"><span style=3D"color:#5A3696;text-decoration:none">3=
939</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">BSP/QEMU: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">EdgeRouter<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3931"><span style=3D"color:#5A3696;text-decoration:none"=
>3931</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3932"><span style=3D"color:#5A3696;text-decoration:none">3=
932</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">BSP/QEMU: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">generic-x86 on AtomPC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3929"><span style=3D"color:#5A3696;text-decoration:none"=
>3929</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3930"><span style=3D"color:#5A3696;text-decoration:none">3=
930</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">BSP/QEMU: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">genericx86-64 on Sugarbay<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3940"><span style=3D"color:#5A3696;text-decoration:none"=
>3940</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3941"><span style=3D"color:#5A3696;text-decoration:none">3=
941</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_ru=
n.cgi?run_id=3D3940"><span style=3D"color:#5A3696;text-decoration:none">394=
0</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.=
cgi?run_id=3D3941"><span style=3D"color:#5A3696;text-decoration:none">3941<=
/span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">BSP/QEMU: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">MPC8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3943"><span style=3D"color:#5A3696;text-decoration:none"=
>3943</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3945"><span style=3D"color:#5A3696;text-decoration:none">3=
945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">BSP/QEMU: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">qemu-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D2646"><span style=3D"color:#5A3696;text-decoration:none">2646</=
span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3947"><span style=3D"color:#5A3696;text-decoration:none"=
>3947</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3948"><span style=3D"color:#5A3696;text-decoration:none">3=
948</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">BSP/QEMU: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3949"><span style=3D"color:#5A3696;text-decoration:none"=
>3949</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3950"><span style=3D"color:#5A3696;text-decoration:none">3=
950</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">BSP/QEMU: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3951"><span style=3D"color:#5A3696;text-decoration:none"=
>3951</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3952"><span style=3D"color:#5A3696;text-decoration:none">3=
952</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">BSP/QEMU: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3944"><span style=3D"color:#5A3696;text-decoration:none"=
>3944</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3946"><span style=3D"color:#5A3696;text-decoration:none">3=
946</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">BSP/QEMU: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D2646"><span style=3D"color:#5A3696;text-decoration:none">2646</=
span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3923"><span style=3D"color:#5A3696;text-decoration:none"=
>3923</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3926"><span style=3D"color:#5A3696;text-decoration:none">3=
926</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_ru=
n.cgi?run_id=3D3928"><span style=3D"color:#5A3696;text-decoration:none">392=
8</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Eclipse Plugin: Daisy Branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Ubuntu 15.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3953"><span style=3D"color:#5A3696;text-decoration:none"=
>3953</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3954"><span style=3D"color:#5A3696;text-decoration:none">3=
954</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">meta-yocto: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D6156"><span style=3D"color:#5A3696;text-decoration:none">6156</=
span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3907"><span style=3D"color:#5A3696;text-decoration:none"=
>3907</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3908"><span style=3D"color:#5A3696;text-decoration:none">3=
908</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">HOB: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">97.8%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">2.2%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3924"><span style=3D"color:#5A3696;text-decoration:none"=
>3924</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3925"><span style=3D"color:#5A3696;text-decoration:none">3=
925</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Toaster: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Ubuntu 14.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">94.0%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5187"><span style=3D"color:#5A3696;text-decoration:none">5187</=
span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">6.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D7198"><span style=3D"color:#5A3696;text-decoration:none">7198</=
span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D5844"><span style=3D"color:#5A3696;text-decoration:none">5844</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3935"><span style=3D"color:#5A3696;text-decoration:none"=
>3935</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3936"><span style=3D"color:#5A3696;text-decoration:none">3=
936</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">OE-Core: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Ubuntu 14.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">96.6%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">3.4%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D6973"><span style=3D"color:#5A3696;text-decoration:none">6973</=
span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3578"><span style=3D"color:#5A3696;text-decoration:none"=
>3578</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3579"><span style=3D"color:#5A3696;text-decoration:none">3=
579</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">BitBake: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Ubuntu 14.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">96.6%<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">3.4%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3992"><span style=3D"color:#5A3696;text-decoration:none"=
>3992</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Automated Build Testing: daisy branh<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Fedora 21 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3993"><span style=3D"color:#5A3696;text-decoration:none"=
>3993</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Automated Build Testing: daisy branh<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Ubuntu 14.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3937"><span style=3D"color:#5A3696;text-decoration:none"=
>3937</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Runtime: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Ubuntu 14.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3942"><span style=3D"color:#5A3696;text-decoration:none"=
>3942</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Build Appliance: daisy branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">VMWare Player on Ubuntu<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">0.0%<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">100.0%=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">Total: 22</span></b><span style=3D"font-size:10.=
0pt;font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p></span></p>
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
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
<tbody>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Tes=
t Case Status Report<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Sta=
tus<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Cou=
nt<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">BLOCKED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">2<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">6<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">987<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">Total: 995</span></b><span style=3D"font-size:10=
.0pt;font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:EN-US"><img border=3D"0" width=
=3D"648" height=3D"180" id=3D"_x0000_i1026" src=3D"http://chart.apis.google=
.com/chart?cht=3Dp3&amp;chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:2,6,987&amp;=
chco=3DFFFF66|FF9933|00FF00&amp;chl=3DBLOCKED(2)&#43;0%25|FAILED(6)&#43;1%2=
5|PASSED(987)&#43;99%25" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3=
&amp;chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:2,6,987&amp;chco=3DFFFF66|FF993=
3|00FF00&amp;chl=3DBLOCKED(2)&#43;0%25|FAILED(6)&#43;1%25|PASSED(987)&#43;9=
9%25"></span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot=
;,sans-serif"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black;display:none"><o:p>&nbsp;</o:p></span></=
p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;wid=
ows: 1;background-position:initial initial;background-repeat:initial initia=
l">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Bug Status Report<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black;mso-fareast=
-language:EN-US"><img border=3D"0" width=3D"558" height=3D"180" id=3D"_x000=
0_i1025" src=3D"http://chart.apis.google.com/chart?cht=3Dbvg&amp;chs=3D372x=
120&amp;chbh=3Da&amp;chds=3D0,5&amp;chxt=3Dy&amp;chxr=3D0,0,5,1&amp;chd=3Dt=
:&amp;chd=3Dt:5,1,1&amp;chco=3D3366FF|00FF00|669933&amp;chdl=3DACCEPTED(5)7=
1%25|VERIFIED(1)14%25|IN%20PROGRESS%20REVIEW(1)14%25&amp;chtt=3DBug&#43;Sta=
tus" alt=3D"Bug Status"></span><span style=3D"font-size:10.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">ID<=
o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Pri=
ority<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Sta=
tus<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Res=
olution<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Tes=
t Runs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Des=
cription<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Ver=
sion<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Tar=
get Milestone<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Age=
 (days)<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif"><a hre=
f=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646"><span style=
=3D"color:#5A3696;text-decoration:none">2646</span></a><o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Low<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">ACCEPT=
ED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3946"><span style=3D"color:#5A3696;text-decoration:none"=
>3946</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D3945"><span style=3D"color:#5A3696;text-decoration:none">3=
945</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Windows switching failure<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1.2<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Future=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1056<o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif"><a hre=
f=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187"><span style=
=3D"color:#5A3696;text-decoration:none">5187</span></a><o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Medium=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">ACCEPT=
ED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3925"><span style=3D"color:#5A3696;text-decoration:none"=
>3925</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">same cooker log file name used for several builds<o=
:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">unspec=
ified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1.9<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">608<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif"><a hre=
f=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844"><span style=
=3D"color:#5A3696;text-decoration:none">5844</span></a><o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Medium=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">ACCEPT=
ED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3925"><span style=3D"color:#5A3696;text-decoration:none"=
>3925</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Wrong script_type when task is not executed.<o:p></=
o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">unspec=
ified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1.9 M4=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">450<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif"><a hre=
f=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156"><span style=
=3D"color:#5A3696;text-decoration:none">6156</span></a><o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Medium=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">ACCEPT=
ED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3954"><span style=3D"color:#5A3696;text-decoration:none"=
>3954</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">[crosstap] no trace message output on qemuarm<o:p><=
/o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1.6<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1.9<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">395<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif"><a hre=
f=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6665"><span style=
=3D"color:#5A3696;text-decoration:none">6665</span></a><o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Medium=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">VERIFI=
ED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">FIXED<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3922"><span style=3D"color:#5A3696;text-decoration:none"=
>3922</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">[Beaglebone] Xserver segmentation fault when reboot=
 the system<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1.7<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1.8 M3=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">259<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif"><a hre=
f=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6973"><span style=
=3D"color:#5A3696;text-decoration:none">6973</span></a><o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Medium=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">IN PRO=
GRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3935"><span style=3D"color:#5A3696;text-decoration:none"=
>3935</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Buildhistory-diff is not working<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1.6.3<=
o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1.9 M1=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">178<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif"><a hre=
f=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198"><span style=
=3D"color:#5A3696;text-decoration:none">7198</span></a><o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Medium=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">ACCEPT=
ED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D3924"><span style=3D"color:#5A3696;text-decoration:none"=
>3924</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Hiding a sorted column does not revert to default s=
orting<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1.8<o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">1.9 M1=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">114<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">Total: 7</span></b><span style=3D"font-size:10.0=
pt;font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:15.2pt;background:white;widows: 1">
<span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:15.2pt;background:white;border:none;paddin=
g:0in;widows: 1;background-position:initial initial;background-repeat:initi=
al initial;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Bug Trend</span=
></span><span style=3D"font-size:18.0pt;font-family:&quot;Calibri&quot;,san=
s-serif;color:black;font-weight:normal"><o:p></o:p></span></h1>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:15.2pt;background:white;widows: 1">
<span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black">An overview of this week's&nbsp;<a href=3D"https://wiki.yoctop=
roject.org/wiki/Yocto_Bug_Trend" title=3D"Yocto Bug Trend"><span style=3D"c=
olor:#5A3696;text-decoration:none">Yocto Bug Trend</span></a>&nbsp;charts
 can be accessed on the following&nbsp;<a href=3D"https://wiki.yoctoproject=
.org/charts/combo.html"><span style=3D"color:#3366BB;text-decoration:none">=
page</span></a><o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:15.2pt;background:white;widows: 1">
<span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:15.2pt;background:white;border:none;paddin=
g:0in;widows: 1;background-position:initial initial;background-repeat:initi=
al initial;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Bugs Found duri=
ng QA Test</span></span><span style=3D"font-size:18.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:black;font-weight:normal"><o:p></o:p></span><=
/h1>
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:15.2pt;background:white;border:none;padding:0in;wi=
dows: 1;background-position:initial initial;background-repeat:initial initi=
al;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Issues Found du=
ring QA Test &amp; Community</span></span><span style=3D"font-size:14.5pt;f=
ont-family:&quot;Calibri&quot;,sans-serif;color:black;font-weight:normal"><=
o:p></o:p></span></h2>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:15.2pt;background:white;widows: 1">
<span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black">Please note that the bugs are present in master as well and th=
ere is a change for them that they won't be backported.<o:p></o:p></span></=
p>
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
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">ID<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Summary (5 tasks)&nbsp;<a href=3D"https://bugzilla.yoctopro=
ject.org/buglist.cgi?&amp;field0-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;va=
lue0-0-0=3D5187&amp;field0-0-1=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0-0=
-1=3D%205844&amp;field0-0-2=3Dbug_id&amp;type0-0-2=3Dequals&amp;value0-0-2=
=3D%206156&amp;field0-0-3=3Dbug_id&amp;type0-0-3=3Dequals&amp;value0-0-3=3D=
%206973&amp;field0-0-4=3Dbug_id&amp;type0-0-4=3Dequals&amp;value0-0-4=3D%20=
7198&amp;field0-1-0=3Dbug_status&amp;type0-1-0=3Dnotequals&amp;value0-1-0=
=3DCLOSED"><span style=3D"font-family:&quot;Cambria Math&quot;,serif;color:=
#3366BB;text-decoration:none">=1B$B"M=1B(B</span></a><o:p></o:p></span></b>=
</p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">P<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Assignee<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">QA<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Milestone<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Status<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Resolution<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">cf_regression_type<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Created<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><b><span style=3D"font-=
size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">OE-Co=
re<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6156" title=3D"bugzill=
a:6156"><span style=3D"color:#3366BB;text-decoration:none">6156</span></a><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[crosstap]=
 no trace message output on qemuarm<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Kevin&nbsp=
;Hao<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.9<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">ACCEPTED<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regression=
 (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2014-04-14=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6973" title=3D"bugzill=
a:6973"><span style=3D"color:#3366BB;text-decoration:none">6973</span></a><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Buildhisto=
ry-diff is not working<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Paul&nbsp;=
Eggleton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Costin<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.9 M1<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">IN PROGRES=
S REVIEW<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regression=
 (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2014-11-17=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><b><span style=3D"font-=
size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">Toast=
er<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187" title=3D"bugzill=
a:5187"><span style=3D"color:#3366BB;text-decoration:none">5187</span></a><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">same cooke=
r log file name used for several builds<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Richard&nb=
sp;Purdie<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.9<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">ACCEPTED<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">New (Never=
 tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2013-09-13=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844" title=3D"bugzill=
a:5844"><span style=3D"color:#3366BB;text-decoration:none">5844</span></a><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Wrong scri=
pt_type when task is not executed.<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Alexandru&=
nbsp;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.9 M4<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">ACCEPTED<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">=
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">New (Never=
 tested)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2014-02-18=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7198" title=3D"bugzill=
a:7198"><span style=3D"color:#3366BB;text-decoration:none">7198</span></a><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Hiding a s=
orted column does not revert to default sorting<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Michael&nb=
sp;Wood<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Mihail&nbs=
p;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.9 M1<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">ACCEPTED<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;b=
ackground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regression=
 (Used to work)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;background:#F0F0F0;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2015-01-20=
<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:15.2pt;background:white;widows: 1">
<span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:15.2pt;background:white;border:none;padding:0in;wi=
dows: 1;background-position:initial initial;background-repeat:initial initi=
al;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black;font-weight:normal">Known issues fo=
und in1.6.3 but will be WONTFIX in this version</span></span><span style=3D=
"font-size:14.5pt;font-family:&quot;Calibri&quot;,sans-serif;color:black;fo=
nt-weight:normal"><o:p></o:p></span></h2>
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
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">ID<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Summary (6 tasks)&nbsp;<a href=3D"https://bugzilla.yoctopro=
ject.org/buglist.cgi?&amp;field0-0-0=3Dbug_id&amp;type0-0-0=3Dequals&amp;va=
lue0-0-0=3D5485&amp;field0-0-1=3Dbug_id&amp;type0-0-1=3Dequals&amp;value0-0=
-1=3D%206114&amp;field0-0-2=3Dbug_id&amp;type0-0-2=3Dequals&amp;value0-0-2=
=3D%206684&amp;field0-0-3=3Dbug_id&amp;type0-0-3=3Dequals&amp;value0-0-3=3D=
%206899&amp;field0-0-4=3Dbug_id&amp;type0-0-4=3Dequals&amp;value0-0-4=3D%20=
6975&amp;field0-0-5=3Dbug_id&amp;type0-0-5=3Dequals&amp;value0-0-5=3D%20666=
5&amp;field0-1-0=3Dbug_status&amp;type0-1-0=3Dnotequals&amp;value0-1-0=3DCL=
OSED"><span style=3D"font-family:&quot;Cambria Math&quot;,serif;color:#3366=
BB;text-decoration:none">=1B$B"M=1B(B</span></a><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">P<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Assignee<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">QA<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Milestone<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Status<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Resolution<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border:none;border-top:solid #F0F0F0 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">cf_regression_type<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"border-top:solid #F0F0F0 1.0pt;border-left:none=
;border-bottom:none;border-right:solid #F0F0F0 1.0pt;padding:.75pt .75pt .7=
5pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:15.2pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black">Created<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:15.2pt"><b><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot=
;,sans-serif;color:#555555">---<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5485" title=3D"bugzill=
a:5485"><span style=3D"color:#3366BB;text-decoration:none">5485</span></a><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Buildstats=
 info and database entries doesn't match sometimes<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Marius&nbs=
p;Avram<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Mihail&nbs=
p;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.6 M1<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">VERIFIED<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">WONTFIX<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">---<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2013-11-06=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;background:#DDDDEE;padding:1.5pt 15.0pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><b><span style=3D"font-=
size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">Toast=
er<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6114" title=3D"bugzill=
a:6114"><span style=3D"color:#3366BB;text-decoration:none">6114</span></a><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Elapsed_ti=
me value null for tasks with outcome=3D0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Alexandru&=
nbsp;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Mihail&nbs=
p;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.6.1<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">VERIFIED<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">WONTFIX<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">---<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2014-04-04=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6684" title=3D"bugzill=
a:6684"><span style=3D"color:#3366BB;text-decoration:none">6684</span></a><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">The conten=
t of the license column shouldn't be 4.0k.<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Michael&nb=
sp;Wood<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Mihail&nbs=
p;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.7.1<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">VERIFIED<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">WONTFIX<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">---<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2014-09-05=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;pad=
ding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6899" title=3D"bugzill=
a:6899"><span style=3D"color:#3366BB;text-decoration:none">6899</span></a><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">cpu_usage =
value for some tasks doesn't match the value in the stats file<o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Alexandru&=
nbsp;Damian<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Mihail&nbs=
p;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.6.2<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">VERIFIED<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">WONTFIX<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">---<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;pa=
dding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2014-10-28=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" valign=3D"top" style=3D"border-top:none;border-left:soli=
d #F0F0F0 1.0pt;border-bottom:solid #555555 1.5pt;border-right:solid #F0F0F=
0 1.0pt;padding:1.5pt 3.75pt 1.5pt 1.5pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><b><span style=3D"font-=
size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#555555">Regre=
ssion (Found by QA test)<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border:none;border-left:solid #F0F0F0 1.0pt;bac=
kground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6665" title=3D"bugzill=
a:6665"><span style=3D"color:#3366BB;text-decoration:none">6665</span></a><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[Beaglebon=
e] Xserver segmentation fault when reboot the system<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Medium<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Ross&nbsp;=
Burton<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Yi&nbsp;Zh=
ao<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">1.8 M3<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">VERIFIED<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">FIXED<o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;background:#F0F0F0;padding:1.5pt 3.=
75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regression=
 (Found by QA test)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-right:solid #F0F0F0 1.0pt;ba=
ckground:#F0F0F0;padding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">2014-08-28=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"border-top:none;border-left:solid #F0F0F0 1.0pt=
;border-bottom:solid #F0F0F0 1.0pt;border-right:none;padding:1.5pt 3.75pt 1=
.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6975" title=3D"bugzill=
a:6975"><span style=3D"color:#3366BB;text-decoration:none">6975</span></a><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">elapsed_ti=
me value in database doesn't match sometime the value in the task stats fil=
e<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Undecided<=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Jessica<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Mihail&nbs=
p;Stanciu<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">---<o:p></=
o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">VERIFIED<o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">WONTFIX<o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border:none;border-bottom:solid #F0F0F0 1.0pt;p=
adding:1.5pt 3.75pt 1.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"line-height:15.2pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regression=
 (Found by QA test)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"border-top:none;border-left:none;border-bottom:=
solid #F0F0F0 1.0pt;border-right:solid #F0F0F0 1.0pt;padding:1.5pt 3.75pt 1=
.5pt 3.75pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;line-height:15.2pt"><s=
pan style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:black">2014-11-18<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#7F7F7F">Regards,</span></b><span style=3D"f=
ont-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#7F7F7F">--</span></b><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#7F7F7F">Alexandru Georgescu</span></b><span=
 style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color=
:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#7F7F7F">Yocto QA Engineer</span></b><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:b=
lack"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#7F7F7F">SSG/SSD Open Source Technology Cent=
er Romania</span></b><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E962604AC19irsmsx110gercor_--
