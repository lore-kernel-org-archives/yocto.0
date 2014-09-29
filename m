Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4F9AE0079E; Mon, 29 Sep 2014 09:19:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	NORMAL_HTTP_TO_IP, RCVD_IN_DNSWL_HI,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EED31E006DB
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 09:18:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by orsmga102.jf.intel.com with ESMTP; 29 Sep 2014 09:12:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,620,1406617200"; 
	d="png'150?jpg'150,145?scan'150,145,208,217,150,145";a="480774533"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by azsmga001.ch.intel.com with ESMTP; 29 Sep 2014 09:18:40 -0700
Received: from irsmsx154.ger.corp.intel.com (163.33.192.96) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 29 Sep 2014 17:18:39 +0100
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.199]) by
	IRSMSX154.ger.corp.intel.com ([169.254.12.124]) with mapi id
	14.03.0195.001; Mon, 29 Sep 2014 17:18:39 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.7_M4 Weekly Test Report WW39
Thread-Index: AQHP3ADxcGt+LsFkU0mBZ61H3BOkgg==
Date: Mon, 29 Sep 2014 16:18:38 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E96223F8EE5@IRSMSX110.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.4.140807
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Yocto 1.7_M4 Weekly Test Report WW39
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
X-List-Received-Date: Mon, 29 Sep 2014 16:19:02 -0000
X-Groupsio-MsgNum: 21703
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_1FFB62CE8AEB0D4298B51122D8903E96223F8EE5IRSMSX110gercor_";
	type="multipart/alternative"

--_006_1FFB62CE8AEB0D4298B51122D8903E96223F8EE5IRSMSX110gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E96223F8EE5IRSMSX110gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E96223F8EE5IRSMSX110gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the weekly test for 1.7_M4 WW39 build with all runtime tests are gr=
een for the weekly tests and Distro tests.

New issue summary (the other issues found are listed in the Bug Status Repo=
rt below):

  *   One blocker was found in ADT, where the toolchain is broken giving gc=
c errors when compiling simple *c files: 6766<https://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D6766>.

The full test report is available here: https://wiki.yoctoproject.org/wiki/=
WW39_-_2014-09-24_-_Weekly_-_1.7_M4#Testing_data and the summary report bel=
ow.


Testing data

 Test type:  Weekly Test

 Branch: master

 Build name: 1.7_M4

 poky commit: 8ac8eca2e3bd8c78e2b31ea974930ed0243258a3

 Eclipse Plugin commit Kepler: 4a167fd662262ebdaa3cf0d332ac0debb52d7904

 Autobuilder images repository:  http://autobuilder.yoctoproject.org/pub/re=
leases/yocto-1.7.rc1

 Distributions tested: Ubuntu 14.04 64bit, Fedora 20 64bit, Opensuse 13.1 6=
4bit, CentOS 6.5 64 bit

[edit<https://wiki.yoctoproject.org/wiki/index.php?title=3DWW39_-_2014-09-2=
4_-_Weekly_-_1.7_M4&action=3Dedit&section=3D2>]Summary Report
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

2936<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2936>

ADT: master branch

Fedora 20 i686

34.1%

none

65.9%

6766<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6766>

0.0%

none

100.0%

2935<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2935>

ADT: master branch

Ubuntu 14.04 x86_64

34.1%

none

65.9%

6766<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6766>

0.0%

none

100.0%

2926<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2926>

BSP/QEMU: master branch

Beaglebone Black

100.0%

none

0.0%

none

0.0%

none

100.0%

2928<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2928>

BSP/QEMU: master branch

EdgeRouter

100.0%

none

0.0%

none

0.0%

none

100.0%

2937<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2937>

BSP/QEMU: master branch

generic-x86 on Atom N2600

100.0%

none

0.0%

none

0.0%

none

100.0%

2938<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2938>

BSP/QEMU: master branch

genericx86-64 on NUC

100.0%

none

0.0%

none

0.0%

none

100.0%

2929<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2929>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

2927<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2927>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

2930<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2930>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

2932<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2932>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

2934<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2934>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

2933<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2933>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

2931<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2931>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

2925<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2925>

Meta-yocto: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2923<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923>

Toaster: master branch

Fedora 20 x86_64

88.1%

none

11.9%

6681<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6681> 6685<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D6685> 5253<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5253> 5255<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5255> 5226<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D5226> 5811<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D581=
1>5844<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844> 6688<https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6688>

0.0%

none

100.0%

2919<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2919>

OE-Core: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2918<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2918>

BitBake: master branch

Ubuntu 14.04 x86_64

93.9%

none

6.1%

6752<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6752>

0.0%

none

100.0%

Total: 17



Test Case Status Report

Status

Count

FAILED

127

PASSED

614

Total: 741


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:127,614&chco=3DFF9933|00FF00&chl=3DFAILED(127)+17%25|PASSED(614)+83%25]



Bug Status Report

[Bug Status]

ID[?]<https://wiki.yoctoproject.org/wiki/WW39_-_2014-09-24_-_Weekly_-_1.7_M=
4>

Priority[?]<https://wiki.yoctoproject.org/wiki/WW39_-_2014-09-24_-_Weekly_-=
_1.7_M4>

Status[?]<https://wiki.yoctoproject.org/wiki/WW39_-_2014-09-24_-_Weekly_-_1=
.7_M4>

Resolution[?]<https://wiki.yoctoproject.org/wiki/WW39_-_2014-09-24_-_Weekly=
_-_1.7_M4>

Test Runs[?]<https://wiki.yoctoproject.org/wiki/WW39_-_2014-09-24_-_Weekly_=
-_1.7_M4>

Description[?]<https://wiki.yoctoproject.org/wiki/WW39_-_2014-09-24_-_Weekl=
y_-_1.7_M4>

Version[?]<https://wiki.yoctoproject.org/wiki/WW39_-_2014-09-24_-_Weekly_-_=
1.7_M4>

Target Milestone[?]<https://wiki.yoctoproject.org/wiki/WW39_-_2014-09-24_-_=
Weekly_-_1.7_M4>

Age (days)[?]<https://wiki.yoctoproject.org/wiki/WW39_-_2014-09-24_-_Weekly=
_-_1.7_M4>

5226<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226>

Medium

NEW

2923<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923>

in 'variables' API, the 'changed' field seems to return always 'FALSE'

1.5

Future

371

5253<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5253>

Medium

RESOLVED

WONTFIX

2923<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923>

[webhob-poky/master] work_directory in tasks table is empty

unspecified

1.6 M1

366

5255<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5255>

Medium

ACCEPTED

2923<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923>

source_url in the tasks table is empty

unspecified

Future

366

5811<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5811>

Medium

IN PROGRESS IMPLEMENTATION

2923<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923>

the orm_variablehistory table should collect the variable value for each fi=
le

unspecified

Future

225

5844<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844>

Medium

ACCEPTED

2923<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923>

Wrong script_type when task is not executed.

unspecified

1.7 M4

218

6681<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6681>

Medium

NEW

2923<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923>

Check if the number of errors from Build table matches the number of level =
entries with value 2 from LogMessage table.

1.7

1.7 M4

20

6685<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6685>

Medium

NEW

2923<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923>

Elapsed_time value null for tasks with outcome=3D0

1.7

1.7 M4

19

6688<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6688>

Medium

NEW

2923<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923>

Build image using managed mode - Toaster web interface tries to load from a=
ddress http://0.0.0.0:8000

1.7

1.8

19

6752<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6752>

Medium

NEW

2918<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2918>

bitbake-prserv-tool has issues when it comes to exporting the PR database

1.7

1.7 M4

1 (Recent)

6766<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6766>

High

NEW

2936<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2936> 2935<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2935>

adt installed toolchain compilation error under ALL ARCHs with build yocto_=
1.7.rc1

1.7

1.7 M4

NEW

Total: 10



Distro Results


BRANCH

master

COMMIT

Poky: 8ac8eca2e3bd8c78e2b31ea974930ed0243258a3

RELEASE

1.7_M4

Ubuntu 14.04 LTS

* nighlty-world

PASS

* buildtools

PASS

* nightly-arm

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



Fedora 20

* nighlty-world

PASS

* buildtools

PASS

* nightly-arm

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



OpenSuse 13.1

* nighlty-world

PASS

* buildtools

PASS

* nightly-arm

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


Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania

--_000_1FFB62CE8AEB0D4298B51122D8903E96223F8EE5IRSMSX110gercor_
Content-Type: text/html; charset="us-ascii"
Content-ID: <EA8809C4241AB34C8233B0A551DF6C76@intel.com>
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
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
	font-family:"Times New Roman","serif";
	font-weight:bold;}
h2
	{mso-style-priority:9;
	mso-style-link:"Heading 2 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:18.0pt;
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
span.editsection
	{mso-style-name:editsection;}
span.sortarrow
	{mso-style-name:sortarrow;}
span.Heading2Char
	{mso-style-name:"Heading 2 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 2";
	font-family:"Cambria","serif";
	color:#4F81BD;
	font-weight:bold;}
span.EmailStyle25
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:black;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
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
	{mso-list-id:856040841;
	mso-list-template-ids:1284638898;}
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
libri&quot;,&quot;sans-serif&quot;;color:black">Hello,<o:p></o:p></span></p=
>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Here is the weekly test for=
 1.7_M4 WW39 build with all runtime tests are green for the weekly tests an=
d Distro tests.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.5pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">New issue summary
</span></b><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,=
&quot;sans-serif&quot;;color:black">(the other issues found are listed in t=
he Bug Status Report below):<o:p></o:p></span></p>
</div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;mso-list:l0 level1 lfo1">
<span style=3D"font-size:10.5pt">One blocker was found in ADT, where the to=
olchain is broken giving gcc errors when compiling simple *c files:&nbsp;<a=
 href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6766"><span st=
yle=3D"font-size:12.5pt;color:#663366">6766</span></a>.<o:p></o:p></span></=
li></ul>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">The full test report is =
available here:&nbsp;<a href=3D"https://wiki.yoctoproject.org/wiki/WW39_-_2=
014-09-24_-_Weekly_-_1.7_M4#Testing_data">https://wiki.yoctoproject.org/wik=
i/WW39_-_2014-09-24_-_Weekly_-_1.7_M4#Testing_data</a>&nbsp;and
 the summary report below.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;background-position:initial initial;background-repeat:initial initial=
;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testi=
ng data</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p><=
/span></h1>
</div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Test type:&nbsp; Weekly Test<o:p></o:p></spa=
n></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.7_M4<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 8ac8eca2e3bd8c78e2b31ea974930ed=
0243258a3<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Kepler: 4a167fd662262e=
bdaa3cf0d332ac0debb52d7904<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository:&nbsp; <a href=
=3D"http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7.rc1">http://=
autobuilder.yoctoproject.org/pub/releases/yocto-1.7.rc1</a><o:p></o:p></spa=
n></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 14.04 64bit, Fe=
dora 20 64bit, Opensuse 13.1 64bit, CentOS 6.5 64 bit <o:p></o:p></span></p=
re>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:14.3pt;background:white;border:none;padding:0in;ba=
ckground-position:initial initial;background-repeat:initial initial;overflo=
w:hidden">
<span class=3D"editsection"><span style=3D"font-size:10.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">[<a h=
ref=3D"https://wiki.yoctoproject.org/wiki/index.php?title=3DWW39_-_2014-09-=
24_-_Weekly_-_1.7_M4&amp;action=3Dedit&amp;section=3D2" title=3D"Edit secti=
on: Summary Report"><span style=3D"color:#5A3696;text-decoration:none">edit=
</span></a>]</span></span><span class=3D"mw-headline"><span style=3D"font-s=
ize:18.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
;font-weight:normal">Summary
 Report</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p><=
/span></h1>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"4" cellpadding=
=3D"0" style=3D"background:white">
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
n style=3D"font-size:10.0pt">Testing Summary Report<o:p></o:p></span></b></=
p>
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2936"><span style=3D"color:#5A3696;text-decorat=
ion:none">2936</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Fedora 20 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">34.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">65.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6766"><span style=3D"color:#5A3696;text-decoration:non=
e">6766</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2935"><span style=3D"color:#5A3696;text-decorat=
ion:none">2935</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">34.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">65.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6766"><span style=3D"color:#5A3696;text-decoration:non=
e">6766</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2926"><span style=3D"color:#5A3696;text-decorat=
ion:none">2926</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Beaglebone Black<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2928"><span style=3D"color:#5A3696;text-decorat=
ion:none">2928</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">EdgeRouter<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2937"><span style=3D"color:#5A3696;text-decorat=
ion:none">2937</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">generic-x86 on Atom N2600<o:p></o:p></span=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2938"><span style=3D"color:#5A3696;text-decorat=
ion:none">2938</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">genericx86-64 on NUC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2929"><span style=3D"color:#5A3696;text-decorat=
ion:none">2929</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">MPC8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2927"><span style=3D"color:#5A3696;text-decorat=
ion:none">2927</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">P1022ds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2930"><span style=3D"color:#5A3696;text-decorat=
ion:none">2930</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemu-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2932"><span style=3D"color:#5A3696;text-decorat=
ion:none">2932</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2934"><span style=3D"color:#5A3696;text-decorat=
ion:none">2934</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2933"><span style=3D"color:#5A3696;text-decorat=
ion:none">2933</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2931"><span style=3D"color:#5A3696;text-decorat=
ion:none">2931</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2925"><span style=3D"color:#5A3696;text-decorat=
ion:none">2925</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Meta-yocto: master branch<o:p></o:p></span=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2923"><span style=3D"color:#5A3696;text-decorat=
ion:none">2923</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Toaster: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Fedora 20 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">88.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">11.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6681"><span style=3D"color:#5A3696;text-decoration:non=
e">6681</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D6685"><span style=3D"color:#5A3696;text-decoration:none">6685</=
span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D5253"><span style=3D"color:#5A3696;text-decoration:none">5253</span></a>=
&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5255">=
<span style=3D"color:#5A3696;text-decoration:none">5255</span></a>&nbsp;<a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226"><span sty=
le=3D"color:#5A3696;text-decoration:none">5226</span></a>&nbsp;<a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5811"><span style=3D"col=
or:#5A3696;text-decoration:none">5811</span></a><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5844"><span style=3D"color:#5A3696;text=
-decoration:none">5844</span></a>&nbsp;<a href=3D"https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D6688"><span style=3D"color:#5A3696;text-decorati=
on:none">6688</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2919"><span style=3D"color:#5A3696;text-decorat=
ion:none">2919</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">OE-Core: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2918"><span style=3D"color:#5A3696;text-decorat=
ion:none">2918</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BitBake: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">93.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">6.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6752"><span style=3D"color:#5A3696;text-decoration:non=
e">6752</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 17</span></b><span style=3D"font=
-size:10.0pt"><o:p></o:p></span></p>
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
n style=3D"font-size:10.0pt">Test Case Status Report<o:p></o:p></span></b><=
/p>
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">127<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">614<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 741</span></b><span style=3D"fon=
t-size:10.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><img border=3D"0" w=
idth=3D"860" height=3D"239" id=3D"_x0000_i1035" src=3D"cid:image001.jpg@01C=
FDC1A.29933F50" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;chs=
=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:127,614&amp;chco=3DFF9933|00FF00&amp;ch=
l=3DFAILED(127)&#43;17%25|PASSED(614)&#43;83%25"></span><span style=3D"font=
-size:10.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"color:black;display:none"><o:p>&nbsp;=
</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<img border=3D"0" width=3D"740" height=3D"239" id=3D"_x0000_i1034" src=3D"c=
id:image002.jpg@01CFDC1A.29933F50" alt=3D"Bug Status"></span><span style=3D=
"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;colo=
r:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none" id=3D"sortable_table_id_0">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">ID</span></b><a href=3D"https://wiki.yoctoproj=
ect.org/wiki/WW39_-_2014-09-24_-_Weekly_-_1.7_M4"><b><span style=3D"font-si=
ze:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D"24=
" height=3D"28" id=3D"_x0000_i1033" src=3D"cid:image003.png@01CFDC1A.29933F=
50" alt=3D"?"></span></b></a><b><span style=3D"font-size:10.0pt"><o:p></o:p=
></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Priority</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW39_-_2014-09-24_-_Weekly_-_1.7_M4"><b><span style=3D"f=
ont-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"24" height=3D"28" id=3D"_x0000_i1032" src=3D"cid:image003.png@01CFDC1A.=
29933F50" alt=3D"?"></span></b></a><b><span style=3D"font-size:10.0pt"><o:p=
></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW39_-_2014-09-24_-_Weekly_-_1.7_M4"><b><span style=3D"fon=
t-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"24" height=3D"28" id=3D"_x0000_i1031" src=3D"cid:image003.png@01CFDC1A.=
29933F50" alt=3D"?"></span></b></a><b><span style=3D"font-size:10.0pt"><o:p=
></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Resolution</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW39_-_2014-09-24_-_Weekly_-_1.7_M4"><b><span style=3D=
"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" wid=
th=3D"24" height=3D"28" id=3D"_x0000_i1030" src=3D"cid:image003.png@01CFDC1=
A.29933F50" alt=3D"?"></span></b></a><b><span style=3D"font-size:10.0pt"><o=
:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Runs</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW39_-_2014-09-24_-_Weekly_-_1.7_M4"><b><span style=3D"=
font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" widt=
h=3D"24" height=3D"28" id=3D"_x0000_i1029" src=3D"cid:image003.png@01CFDC1A=
.29933F50" alt=3D"?"></span></b></a><b><span style=3D"font-size:10.0pt"><o:=
p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Description</span></b><a href=3D"https://wiki.=
yoctoproject.org/wiki/WW39_-_2014-09-24_-_Weekly_-_1.7_M4"><b><span style=
=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" =
width=3D"24" height=3D"28" id=3D"_x0000_i1028" src=3D"cid:image003.png@01CF=
DC1A.29933F50" alt=3D"?"></span></b></a><b><span style=3D"font-size:10.0pt"=
><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Version</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW39_-_2014-09-24_-_Weekly_-_1.7_M4"><b><span style=3D"fo=
nt-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"24" height=3D"28" id=3D"_x0000_i1027" src=3D"cid:image003.png@01CFDC1A.=
29933F50" alt=3D"?"></span></b></a><b><span style=3D"font-size:10.0pt"><o:p=
></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Target Milestone</span></b><a href=3D"https://=
wiki.yoctoproject.org/wiki/WW39_-_2014-09-24_-_Weekly_-_1.7_M4"><b><span st=
yle=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"=
0" width=3D"24" height=3D"28" id=3D"_x0000_i1026" src=3D"cid:image003.png@0=
1CFDC1A.29933F50" alt=3D"?"></span></b></a><b><span style=3D"font-size:10.0=
pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Age (days)</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW39_-_2014-09-24_-_Weekly_-_1.7_M4"><b><span style=3D=
"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" wid=
th=3D"24" height=3D"28" id=3D"_x0000_i1025" src=3D"cid:image003.png@01CFDC1=
A.29933F50" alt=3D"?"></span></b></a><b><span style=3D"font-size:10.0pt"><o=
:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5226"><span style=3D"color:#5A3696;text-decoration:none">5226=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923"><span style=3D"col=
or:#5A3696;text-decoration:none">2923</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">in 'variables' API,=
 the 'changed' field seems to return always 'FALSE'<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Future<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">371<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5253"><span style=3D"color:#5A3696;text-decoration:none">5253=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">WONTFIX<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923"><span style=3D"col=
or:#5A3696;text-decoration:none">2923</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[webhob-poky/master=
] work_directory in tasks table is empty<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">366<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5255"><span style=3D"color:#5A3696;text-decoration:none">5255=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923"><span style=3D"col=
or:#5A3696;text-decoration:none">2923</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">source_url in the t=
asks table is empty<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Future<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">366<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5811"><span style=3D"color:#5A3696;text-decoration:none">5811=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">IN PROGRESS IMPLEMENTATION<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923"><span style=3D"col=
or:#5A3696;text-decoration:none">2923</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">the orm_variablehis=
tory table should collect the variable value for each file<o:p></o:p></span=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Future<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">225<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5844"><span style=3D"color:#5A3696;text-decoration:none">5844=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923"><span style=3D"col=
or:#5A3696;text-decoration:none">2923</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Wrong script_type w=
hen task is not executed.<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">218<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6681"><span style=3D"color:#5A3696;text-decoration:none">6681=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923"><span style=3D"col=
or:#5A3696;text-decoration:none">2923</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Check if the number=
 of errors from Build table matches the number of level entries with value =
2 from LogMessage table.<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">20<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6685"><span style=3D"color:#5A3696;text-decoration:none">6685=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923"><span style=3D"col=
or:#5A3696;text-decoration:none">2923</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Elapsed_time value =
null for tasks with outcome=3D0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">19<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6688"><span style=3D"color:#5A3696;text-decoration:none">6688=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2923"><span style=3D"col=
or:#5A3696;text-decoration:none">2923</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Build image using m=
anaged mode - Toaster web interface tries to load from address http://0.0.0=
.0:8000<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.8<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">19<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6752"><span style=3D"color:#5A3696;text-decoration:none">6752=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2918"><span style=3D"col=
or:#5A3696;text-decoration:none">2918</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">bitbake-prserv-tool=
 has issues when it comes to exporting the PR database<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1<span style=3D"color:#236EDE">&nbsp;(Recent)</sp=
an><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6766"><span style=3D"color:#5A3696;text-decoration:none">6766=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">High<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2936"><span style=3D"col=
or:#5A3696;text-decoration:none">2936</span></a>&nbsp;<a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2935"><span style=3D"color=
:#5A3696;text-decoration:none">2935</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">adt installed toolc=
hain compilation error under ALL ARCHs with build yocto_1.7.rc1<o:p></o:p><=
/span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Total: 10</span>=
</b><span style=3D"font-size:10.0pt"><o:p></o:p></span></p>
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
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;background-position:initial initial;background-repeat:initial initial=
;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Distr=
o Results</span></span><span style=3D"font-size:14.5pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p=
></span></h2>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&nbsp;&nbsp; &nbsp;&nbsp;<o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#F9F9F9;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#F2F2F2;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:12.0pt;=
margin-right:0in;margin-bottom:12.0pt;margin-left:0in;text-align:center;lin=
e-height:14.3pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:black">BRANCH<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#F2F2F2=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:12.0pt;=
margin-right:0in;margin-bottom:12.0pt;margin-left:0in;text-align:center;lin=
e-height:14.3pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:black">master<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">COMMIT<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">Poky: 8ac8eca2e3bd8c78e2b31ea974930ed0243258a3<o:p><=
/o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">RELEASE<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">1.7_M4<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:lightblu=
e;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">Ubuntu 14.04 LTS<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lightblue;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:lightblu=
e;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">Fedora 20<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lightblue;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:lightblu=
e;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">CentOS 6.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lightblue;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:lightblu=
e;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">OpenSuse 13.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lightblue;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
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
libri&quot;,&quot;sans-serif&quot;;color:black">Regards,<o:p></o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">--<=
/span></b><span style=3D"font-size:11.0pt;color:black"><o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Ale=
xandru Georgescu</span></b><span style=3D"font-size:11.0pt;color:black"><o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Yoc=
to QA Engineer</span></b><span style=3D"font-size:11.0pt;color:black"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">SSG=
/SSD Open Source Technology Center Romania</span></b><span style=3D"font-si=
ze:11.0pt;color:black"><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E96223F8EE5IRSMSX110gercor_--

--_006_1FFB62CE8AEB0D4298B51122D8903E96223F8EE5IRSMSX110gercor_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=9737;
	creation-date="Mon, 29 Sep 2014 16:18:37 GMT";
	modification-date="Mon, 29 Sep 2014 16:18:37 GMT"
Content-ID: <image001.jpg@01CFDC1A.29933F50>
Content-Transfer-Encoding: base64

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
AAAAAAAAAAAAAAAAAAA8Bj5+E+Th+1N+91WY58oh3Hs8XEdo8cV7QzEx4Tj5c3ilZtg2j1VtTw+3
EMfJpbae/VSid6Gnwwehp8MPM8qfVzfJuo98fKCJ3oafDB6GnwwcqfU8m6j3x8oInehp8MHoafDB
yp9TybqPfHyg8HCd6Gnwwehp8MHKk8m6j3x8oPBwnehp8MHoafDBypPJuo98fKDwcJ3oafDB6Gnw
wcqTybqPfHyg8HCd6Gnwwehp8MHKk8m6j3x8oPBwnehp8MHoafDBypPJuo98fKDwcJ3oafDB6Gnw
wcqTybqPfHyg8HCd6Gnwwehp8MHKk8m6j3x8oPBwnehp8MHoafDBypPJuo98fKDwcJ3oafDB6Gnw
wcqTybqPfHyg8HCd6Gnwwehp8MHKk8m6j3x8oInehp8MHoafDByp9TybqPfHygid6Gnwwehp8MHK
n1PJuo98fKCJ3oafDB6GnwwcqfU8m6j3x8oInehp8MHoafDByp9TybqPfHygid6Gnwwehp8MHKn1
PJuo98fKCJ3oafDB6GnwwcqfU8m6j3x8oJwnehp8MHoqRH4YOVJ5N1Hvj5X/AGPvzq5ac+EWdLw5
jsZWPVtm/wD9TiHTx5PW6CJrgrEutg006XHGG07zVkAttoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADxw3a+fRddw5JniLViHcvmv8AqPsWxdW1+J8IiJVdZXxY
phY0tvDliUgR9HZrs61bR58JEPMTG07PRRO8bgAyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANe
e8Y8F7TPHENio6/uxg1JxxPjZKlfFaIhG1vDG7tOxFeOlXtzz378ulcn/p5knJ2f8fZZ1j1OCIjH
EQ81lt4rzL0BuawAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
Hj5n/qbitG/hyzH3ZrEPpjjP9SdK2z0TFkx05nHfm0x7Iac8b45bcM7Xhw3ReozrZIpefuy6mtov
WLVnmJcFjnymHQdJ6p3eMWWfBwNRi3+qHbwZdvplfDytotWJrPMS9U1sAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAABhmzUwY5teeIgGOxsU1sNr3nycV1Lctt57Xny9iZ1XqdtvLNaT9yFX6Oct646eNr
zxDoYMXgjee6jmy+Kdo7PrX+n2G2Ls9E2j8VuYdUrez+tOp0LUxWr3bVxx3o/VZO9jjasQ4l53tM
vQE0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHiL1HTr1Dp
+fWvPEZazXn3JQxMb9CJ2fB93Sv07fzauSsx6O0xHPth5TwnwfQ+3nZu25h/qGrXnLjj78e+Hzyn
6+E+5yc2OaW2dTDeL13W/T+p3wzFMk80XuPLTLXmkxLkqJetsZMFua2n9lLLgi3WFzHmmOkul5EP
W6jTLERfwsmRMTHMTzCnas16SsxaJ7ADCQAAAAAAAAAAAAAAAAAAAAAAAAAAMb5K4683mIj9VTvd
bpSJrg8Z96VaWtPRG14r3WG1u4tWkze0c+5y+/1LLt3nxmK+yGnPnyZ7zbJaZmWifJexYYp1nup5
M026R2YSvuxfRp6t13Ha0T6LDPfm3s5j2KXDr5NvYpgwVm2S88RD7H2W6DToXSq4vPNf72Sf1XsG
Px23/EKWfJ4a7fldvQdNzwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAGFqxes1tETWfCYl837Xdk76ea27pU5wW8bVj2S+lMb0rkpNLxFq2jiYn2teXFGSNp
bMeSaTvD4dSeW+jsu0vYzjvbfTK+MeNscf8A8cd3bY7zTJWa3jziXKyY7Y52l0seSLxvDdRMwbGT
F5TzHulDo30V7RE926szHZZ4t2t+IvHEpFbRb8MxKqpHLdSJj8Npr+yvbDH4b65fVYCNTLkiPGIm
IbK7FZniYmP3aZpaG6LxLaPIvW3lMS9RSAAAAAAAAAAAAAAAAAY2y0r+K0QDIQ8vU8OOJ4nmUDY6
vkvHGOO62VxWt+Gu2SsLm+SmOJm9ojhW7PWqY/DFHMqjLnyZZ5veZaZWKaeI+5otnmezbs72bZn7
1p49yJLOWErEREdIaJmZ7sJeVpfLkrjx1m17TxEQ36mlsdQz1w6uO172njwjyfTuzXY3X6Rirm2Y
jLtT4zM+MVn9G/Fitknp2acmWKR1RuxvZGOmY43N2sTsWjmsT/bDsQdOlIpG0Ode02neXoCaIAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACh7XZ82v0SbYMtsVpyVrN6+cRIL4czh6Tin0c/wBa
2JnwnjveaZ2g2cul0mMWteZz5JilZ9v7guhQdmdrYnFm0tzJN8+vMRNp855atfb2LbfW6zltMYqz
3I+HwB0gqOzObLsdB1sme83yWiebT7fFA7QWyZOr6mt65fWxXrM2tWeAdMOe1elYqbNLV6vnyTE8
92beaPs6+fqXaG+D13Ngx1r4RSQdSOZ7230HqOGmTYvsauae73r+cSsM+xkz9Zx6uO81x1r3rTHv
9wLYcz2i6rvamxr48Ne7htmitr+9Z9a2NrBp1jSxzfJktFeY/tj3gsxzOXNu9D2Net83rFc9oi0W
84/Zv3+lZcc5tq3Us9Kfi7sT5foC/HNdNx7uPo9tjNs3tEX9JWbefdX+tnrta1M1Pw3jmAbhT9ot
/a0enZb6mPm0V573ubenWy7/AEHBa+Sa5MuPmbx5xILMcl1Lpuzo4qVp1LYtmyW7tY5Sdre2ta+L
VtmrS+LF3rXvP4pB0gpJ6ln2NPBSscZ8s8W7vsj3rfFSceKtZtNpiOOZ9oNghZuq6OvknHm2sVLx
7LW8WH9d6Z89g+oFgK/+u9M+ewfUf13pnz2D6gWAr/670z57B9R/XemfPYPqBPUfWuzGr1WlrVrG
PN5xavtn9Uz+u9M+ewfUf13pnz2D6kLUi8bWSraazvD51v8AQ93peWa5sc2pH99fJGpPPk+mZer9
JzY5pk28Fqz5xNnO9Q6V0XYtbJq7+HHknyr3vBQy6OY60Xseriel3OUbqtezXDpZe5baxZP1pPg8
ptYPzqqNqWidphbi9Z6xKZRuisWjiY5hErt6/wCdT+W2u5rfn0/lGaW9E4tX1SY16THhHd/Y9UtH
jS8zP6sab2rH/qKfy2139T5jH/KE45n8JRkiPy1Tiz18ZivH6MZyTHnS38N07+p8xj/l5O/q/MY/
5Q5E+kpc6PVqi8e3mP3e9+nxQ8tt6dvPNjn/ACwnY0vzcf8ALH7e3pKXPj1bYvWfKYeo059T2Z6R
+0sJz6/s2qx/lj9vf0OfVMecxEczPEIU58HzUfyi7+xj9Vn0ex3rcx4RKVNLe0xDFtRSsTK4EGO/
3K/7lvKHkzf8yUOTKfNhO5mHk5Kx52hAmb+28sJ/WeWYwT6sTmj0WXpccf3w1228VPbz+yttEMJh
KMEfmUZzT6LC3UccR4RMy0W6nf8AtrCJLCU4w0hCctm2+7mtM/emEa+S9p5taZeywltisR2hrm0z
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
AAAAAAAAAAAAAAAH/9k=

--_006_1FFB62CE8AEB0D4298B51122D8903E96223F8EE5IRSMSX110gercor_
Content-Type: image/jpeg; name="image002.jpg"
Content-Description: image002.jpg
Content-Disposition: inline; filename="image002.jpg"; size=12849;
	creation-date="Mon, 29 Sep 2014 16:18:37 GMT";
	modification-date="Mon, 29 Sep 2014 16:18:37 GMT"
Content-ID: <image002.jpg@01CFDC1A.29933F50>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAvwC/AAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCADvAuQDASIA
AhEBAxEB/8QAHAABAAEFAQEAAAAAAAAAAAAAAAUCAwQGBwEI/8QAQhAAAQQBAQQECgkDAwUBAQAA
AAECAwQFEQYSITETNUFRBxQVIjRhcXJzsRYXMjNCUlNUkSOBgiQ2kiVDYqHBY9H/xAAbAQEAAQUB
AAAAAAAAAAAAAAAABQECAwQGB//EADIRAQABAwAFDAAHAQEAAAAAAAABAgMEBRESMTIGExQVITM0
UVJhcYEWQVORobHRQvD/2gAMAwEAAhEDEQA/AOzAAAAAAAAAAAAaVb2szEmft47F45s6V10VyroB
uoNNi2vyNK3FDncb4qyVyNbIi6pqbgjkVEVF4LyAqB5rpzAHoKUcipqioqd5UABrm0e1C4eeKnTr
ravTJq2JO7vI6XajO4tjbGUxSNrOXz3NX7AG6Ai7WeqVsXDfV+sEum6vfqZ9edtmBksa6temqAXQ
Uo5FXRFTXu1I/L5mvhmQOsrok0iRt9qgSQKUcjmoqKminuunMD0HiqiJqq8DxrkcmrVRU9QFQAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAcziytvF7dZXxOmtlXO4oi8jphzWLOV8BtzlZL0M25I7zXNjVUAtZ7M
2szcp1MxTXH00lR3S89V7jYs1fmr7QYqCtLpA9nFE7SI2gzkO1lJmPxVOSR7pEVz3s3d1C/tHWnw
0uHspG6aGs1GSKiaqgErtzesUcXVfVkVjnWWNVU7jGzeQvX87VwmOn6BHxb8sqd3cRm2GbbmqlFm
NillhSy1ZHbippxM/Mb2D2mqZdYnuquh3JVamqoveBGZ9uY2ct4+KK86WtPO1HqvZx5HR05Icz2t
2hizdzFx0GvdA2w3fe5umi6nTE5IBqG1ODyS5qtm8OiSWIG7rol/EhjSbaNWN1XaPGPrxP8ANeum
8hkbQZbI7O56O45j5sW9mj0amqtUxcztdisviJqtSvJYsTs3WtdFyVfWB5tjTgsbMU34+bdqNVEY
1OWiknHVydTZavFjp0WZ+msr10RjSIvY2fGeD6rDK1znsVHvanFWlO0OSks7KY+Sl0viu+jbG6io
7TtAtZl1jARwW2Zrp7G+m+1q6o4q28hkyWPw9zpVjSSVqbncq9pgZiXCriUZg6k8srVRzlci+ahI
bSWWz7IYazGyR0cU7Ff5vFEQCRzE1vFXMTWjsK5r3ojl7yQ2yuT0sfA+s/cc6VEVfURG1dlZm4vK
1Y3y1o3or9E4onsLG1mdZnKVSPFxyyokyOeqsVNEAr2ry1xlnHUksvq15mor50TXVe4kcHRyFLJt
dXyLLtBzfOTe1VqlvO5OClHTgylBZsfJGmsqN1VqkDjegXayv9FlnbW/77Xou7p/cDp4AAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAWnQRPXV0THL3q1FLoAtshij4sjY1fU1EPXsa9qte1HIvYqalYAsx1oImbsc
TGt56I1CE2hrZdLMVrGbk8bU0fVenB5sIA0qHB5HN5CCxkqsdGGBd5sMenFTdQAKHsbI3de1rk7l
TUtRUq0KqsUETVXjqjUMgAUPjbIxWvajmrzRULbKkDIlibExI1/DpwL4Ax46deJqtjgjai80RqcT
1asCwrEsTFjX8OnAvgC02vEyJImxtRifh04HkdaCFNI4mNTnwaheAFuSJkrN2RjXN7nJqUw1Ya6a
QxMZ7rUQvAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAMDK3nY+i6ZjN9+qIjSPqyZSO7ErpG2IJE1eiL92Nq4nux7HterG
tem8qGJLGlG3TXHWN58if1Go7XeA2k8/uRVttmuxJktO03kTc0NK232kyuMyrYqtl0TFbrohZcuR
bp2pbeHiV5dzm6JiJ93SgcQ+m+e/fv8A4H03z379/wDBrdMo8pTH4ZyfVH8/47eDiH03z379/wDA
+m+e/fv/AIHTKPKT8M5Pqj+f8dv1TvHA4h9Ns7+/f/BfpbaZyS7Cx15ytdI1FRU5pqOmUeUrauTm
RTGvaj+f8dqBRGusbVXmqIVm454AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAW5oY7ESxytRzF5op
hVcHRp2Onhi0k7FVddDPc5rG6uVERO1VLbbMD3brZo3OXsRyKBjZb0L/ACQ5h4R+ume4h0/Lehf5
Icw8I/XTPcQ1cvgTnJ3xn1LTQART0AAAAycd1jW+K35mMZOO6xrfFb8y6nexXeCfh9BxfdN9iFZR
F9032IVk68pq3vQAFAAAAAAAAAAAAAAAAAAAAAAAAAAAU8hqRmZz9LBRMkvSKxHro3RNdVIhPCJg
u2Z//AsquU0zqmWzaw792nat0TMe0NqQGq/WLgf15P8AgSOH2nx+cfIylIrns4qjm6cCkXaKp1RJ
cwsi3TNddExEeybB4UJIxz1Yj2q5ObUXihkay4Chz2tciOciKvJFXmW5LVeJ27JNG13crkRQL4LD
LVeTXcmjdp3ORS417XN3muRW96LwArBQyRkjd5jmub3ouobIx6KrXNVE56KBWChHtVu8jkVvfrwP
GSskRVY9rkTmqLqBcBS1yOTVqoqd6FKyxtejFe1HL2KvEC4Clzkaiq5URE7VDXNemrVRU70UCoFK
ORVVEVF05jeRF0VU1XsAqAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQe
1kqswr2pvaucmu7z0MTDtwq2YlgbJHYRqab+qaktlrLqtdJPF0nYi+cnPQh57MOaydRlWGRjouKv
Vum76gM/KZCFYehRH72+n4eHM534R+ume4h03KtRKCcE13m8dDmXhH66Z7iGrl92neT3jPqWmgAi
nfgAAGTjusa3xW/MxjJx3WNb4rfmXU72K7wT8PoOL7pvsQrKIvum+xCsnXlNW96AAoAAAAAAAAAA
AAAAAAAAAAAAAAAADn/hV6upfEX5HLzqHhV6upfEX5HLyJyu8l6BoDwVPzP9h0DwU+nXvhp8zQDo
Hgp9Ove4nzKY3ewzab8Dc+v7dPNIs+MVNqrV+BzljhROkYnahu5AY+FX7QZJJI16N7ETVU4KS7zl
ayc7bOSw80btWPdrwUjpY6Em1eQ8otc9Eam4iKvA8fUtUNpqNVGOfTa9XMdpy1Lr7dahtTfferyv
a9qbjms1QCSoVMS9szaESterV1Vde4j6Vt9PZizC5yrMx6t58dFUlcZlsfZsdFVglY53a6PRCFtV
LCbYLAkblqT6Kq6cEAv4GR2KqXqkz1Xo2b7VVe9D2k6Wjswio5fGJ5F4r3Kpb2sq2I7FdKcbndOq
NkVE5IhJ5WusNGq9iebFu6oBYykzaiUaKSrFFMmr1ReKleHrV0tyOpWXpE5NHQu5695RnKrXXKF6
SJZIYU85EKKix5LaBlukx8ccSaSbyaI4DNp2210u1d70ZFVHL6yFh8XvwMksW3suPfwlTk3jyJGG
DxvLZZmnDd0T1qRrJa9fC+TpasiWVdpoje3XnqBIZJ01rKUscky9C5msjk/Ee13TYvIT0o3q9j2q
sTV/CWZ68uJt0bcqPfExqpIrU1VDJoPXK5tbrGObDEm61XJpqBiY61K27ErZZVciKsyOTRFJfG71
meS5K7zXrpEiryQ9yess0VOJu6sq7znonJEIi7I+vcljkWWNGKiQIxNUUDawY1BZlpRrZ+904mSA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHipqnEpaxrfstRPYhUREOfisZh
1GJu9uc39gGTlvQv8kOYeEfrpnuIdPy3oX+SHMPCP10z3ENXL4E5yd8Z9S00AEU9AAAAMnHdY1vi
t+ZjGTjusa3xW/Mup3sV3gn4fQcX3TfYhWURfdN9iFZOvKat70ABQAAAAAAAAAAAAAAAAAAAAAAA
APD0Aaft3gLudq1o6KMVY3qq7y6cNDSvq6zv6cX/ADOyHhguY9FyralK4mmcjEtRat6tUezjn1dZ
39OL/mbXsJsxkcDZsvuoxrZGoibrteOpvCApRjUUVbULsnTWTk25tV6tU+z0aJryPQbCIeaIvNDx
WNXm1F/sVAClGNTk1E/se6JrrpxPQB4qIvNC3PA2xC6N6aopdAFitE6KBI5Hb6p2qVrGiRuaxEbq
mnBC4AMPH0UpQqirvSOXVzu8yVY1V1Vqa9+hWAKVRHJoqIqesNa1iaNRET1IVACndTXXRNe88VrV
XVWoq+tCsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAENtDkJKVRrImP
c6RdNWpronaQWPvU62bhZDHLoqcVVvHVTdFa132kRfahgLiIVyTbmujk/DpwAx8rWm6DpOncrN9F
3TnXhH66Z7iHT8t6F/khzDwj9dM9xDVy+BO8nvGfUtNABFO/AAAMnHdY1vit+ZjGTjusa3xW/Mup
3sV3gn4fQcX3TfYhWURfdN9iFZOvKat70ABQAAAAAAAAAAAAAAAAAAAAAAAAPD0AQe0NqetXjdC/
d1douhA+Vr2v37iZ2p9Hi4/iNb7Tn8+7XTemImfycvpO7cpyJimqYjs/NmeVr+n37iX2euWLMsyT
SbyJ39hrvNCc2W+/n49iFuFdrqvRE1SswL1yrIpiapmPn2bOa/ZzOSfm56OPqRyJC1HK57tOZsJq
O7cdtjf8SVEVI272p0Tq2fXzV2HIw1MnWZE6ddI1YuqKUz5jJyZmzSoVIpGwIiq57tOZhsW1HtLW
ZldHby/0FTsU8jgtT7WZLxSVY9Gt3vWBM0LGUdI5b9aKKNE11Y7VTCZmcjelkdjKscldiqm852iq
pIUa1yBZFuTrIxU5akXDi5WK+1hbi9G9y/0lXhqBJY/LLPWldbj6GSH7adhhpl8jejWbGVGPh10R
XroqmHPds5HG3qU0TY7cKpvqzkqE9iViXGw9AqKxG6cO/tAxcbmXW2TxTxdHagaqvZ2f2L2EyTsp
jksvYjFVyt0T1EdM5JdoZ+g0/pxL0unsL+yPUTfiO+YF+7lH0stVrOjToZtdX9yleZya42mksbEk
kc5Gtb36lnaOo6zjFdEn9SNyORU7u0jY7Lc5lKKxedFC3+qnrAy7uYyLL8VWnVjke9u8u8umhfpW
My+01typCyHtc12qkbkYbE208Tar1Y5G80JWlUyEVpHWLKvj0+zqBguzOUsZW3VoVInsrORquc7T
UycbmpJri0r8KQ2ebUTk5Cxguv8AM93SoU5JWv2qoJHxlYxddOz2gSi31dkkrRMRzUT+o78qmPZz
8MOTjpMRXSO5+otYTzsjkXququkTVO4sZevFHmqb2MRHrzUCXs23VrEaPanQu4K7uUZDIxY2q6ab
XRE10TtMfPN1xmqLorXIqCZrLmCc+diOXolXj7ALuNyLb+Mbc03WORV9iEeu0irKsjIFdTa7dWT1
lGLRU2PejefRP0KcYjfoTx016J2uveBJW8xHD0bYmrI+Ru8iJ3HqZaF1FbDdee6jV7+4i8djH3sR
SnSd0M7Y1bvJ3BGQwzbrnK+CD7ar+J4GwV3vkrsfI3deqaqncXSNpZdtmwkEkbo5XJvNRU5oSQAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFKqiJqq6IhRHPFMqpFIx6pz0XUxcrVnuVOhgf0
e8vnOTnoa/G2GDaKpBjnua5qL0zV5OA2DLehf5Icw8I/XTPcQ6RlbUfi3R6rvb6J/wCzm/hH66Z7
iGrl8Cc5O+M+paaACKegAAAGTjusa3xW/MxjJx3WNb4rfmXU72K7wT8PoOL7pvsQrKIvum+xCsnX
lNW96AAoAAAAAAAAAAAAAAAAAAAAAAAAHh6ANd2oVErxa89TW95DfZ6sNpukzEfpy1LKYmmn/Yb/
AARWTg13rk1xMITM0ZcyLs101RES0jVETmTmyqp083sQm/JFP9Fv8F2CnDV16CNrFdzVO0pj6Prt
XIrmY7FMTRdyzdi5VVGqGUR8GLZBl7F9HuV87UarexNDPPSWTiOv4ll+3VsOkcx9Z283TtMK1s4+
XJzXa9+au+VERyM5KTwAiaOIsVZ9+bIzWGaaKx/Ix3bOyxWHupX5YInrqsackJ4AR2PxMdFku890
0kvB73c3GCmzksErvE8hLDC5dejTkhPgCNo4eKlHNo5z5Zk0fIvNSMg2VmqxrHWytiONVVUaictT
ZQBiVajoKKV5pnTLoqK93NTEwuBgwrp1ge53TO3l3uwlgBC5LALevNtRXJa8jeHmHtTC2q9lskmU
nlanNjuSkyAICbZp65GxbrZCaBZ11c1vIzMbhYqL1le900685H8yTAEVWhSllpkRqqlld/Xu0L9z
GMuWoZ3Pc1YuSJ2mYrUVyKqcU7SoCIzjX2IoqkSKr3vR39kJB8DX03QcmuZu8PYXd1FcjtE1TtKg
MKhj46NBtVFV7ERU1XtI1+zTlkc1lyRtZzt5Yk5ewnwBZ8Xayr0MPmIjdG6dhiJiYlorXeqq5V3l
f2qveSIAjKGH8VsdPNO6eRE3Wq7sQkwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAI/LW
rFOBJoI+ka1fPanPQgn2W5LLV1x9aSGROMkjm6G2lKNRvJET2IBHZSFniSOVqb283ic08I/XTPcQ
6flvQv8AJDmHhH66Z7iGrl8Cc5O+M+paaACKegAAAGTjusa3xW/MxjJx3WNb4rfmXU72K7wT8PoO
L7pvsQrKIvum+xCsnXlNW96AAoAAAAAAAAAAAAAAAAAAAAAAAAAACKzWeqYKGOS4rka926m6mpE/
WFh/zS/8TC8JfV1X4hz3QnMHR1m/Zi5Vr19rSvZFVFezDp/1hYf80v8AxJLC7S0c7JKym56rEmrt
5NDj2huvgz9Lu+6hdmaNs2bNVynXrhS1kVV1xTLopbklZCxXyvaxqc1cuiFw1zaVfHJa+NR2jZlX
f48u4gW82Bj2yMRzHI5q8lRSia1BX++lYz3l0ITZmda9Cai929JV14+rsLWFqszUU12+nSo96tax
3JugGwwzxWGb0MjXt72rqUzW4K/30rGe8uhH1cYmLs2Jq7tIHMVej7Gqhg4SnHmK0l3IN6VZHqjW
u5NRANginimZvxSNe3vaupZdk6TXKjrUKKnNN9DDq4lMdNadC7SCRi6R68Gmu4dMR0EvjtZZJd9d
XcVA3KO3XmY58czHNbzVHcELaZOkq6Jah199CKe2kmDsrQh6Jip5yctSJrR4NuD3pIUWfReLdVdq
Bt8tuvAxrpZmMa7krnaalrypR4f6uHj/AOaETgsay9g4UyUSy7qrudJzRDDwmGoS5W+19Zrkjem6
iqvADZZL1WHTpLEbdeWrk4nkV+pPIjIrET3ryRHIqmsZSOjHtFEy1Cr4kbwanYSWMTDreb4nW3Jk
Tg7RQJWTIVIpFZJZia9OaK5NULsM8U7N6GRr297V1NXxuMqX9oMutqFJVbIiJvLyLzYPI20leGs5
W1bDVVzOxFA2RZGI9GK5EcvJNeKlDrMLZUjdKxHr+FV4kRUc67lrsn4q+rIu7iYljFsqUZ7OQsaX
Hoqsci8l7EQDZVe1HoxXJvLxRDySRkTFdI5GtTtVdDXopbEWAp3LG94y1URVXnoqmXfoy5S3XkWV
EoIzee3XmoEtHIyVm9G5HN70XU8WaNJejV7d9fw68TWYZlp5Oz4hIr6ccSqqc0RyFFak+1hFyr53
pZVFkR3cidgG2Oc1iauVET1hVRE1VdETtNWs3JbcFOxL0q13xKq9Gmq7xfhmsy04qm85Xyrqiu57
nrA2Jrke1HNVFRe1Cos12RxwtjiVFa3hwLwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG
Dk8izGU3TvRXLyRqdqmBDnJoZYWZGDo0n+7Vv/0kcjJXgrLNaajmM4oi95FRVrWatxWLMaQ1Y+Mb
O13tAkcsv+g1T8zTmPhH66Z7iHRcp42kHJnRI9Pac68I/XTPcQ1cvu07ye8Z9S00AEU78AAAycd1
jW+K35mMZOO6xrfFb8y6nexXeCfh9BxfdN9iFZRF9032IVk68pq3vQAFAAAeA9LU71jhe9ObWqoi
NfYLgOZ2tuslFblja1ujXaIWvp9k/wArSTjRORMa+xrdKtuojU5d9P8AJ/laPp/k/wArSvU+R7fu
dKtuo6jU5d9P8n+Vo+n+T/K0dT5Ht+50q26iNDS9kNqLmZycsFhqIxrN5NDdDRv2KrFexXvZrdcV
xtQ9ABhXgAAAAAAANH8JfV1X4hz06ntlgrWdpwR01Yjo37y7ymqfV5l/zwfydHo3Ks27EU11RE9q
Ov2q6q5mIaubr4NPS73uoYX1eZf88H8mxbG7NXcFPZfcdGqSIiN3VL8/Ls149VNNcTKli1XTciZh
t6roiqavFjJcvmrNqZZIY2puxm0g5lJNWhx8mI2gRI+kliuJuvd+X2lVKzJs6stSxDI+HeV8b2Jr
zNnKVRFTRURU9YEHQs2stcmlVskNRGq1rXJorjFoWpNnmyU7UEj40crmPY3XmbOeKiKnFEX2gQdC
zbydmxO5skVZGqkbHJoriJxOSr4+GSG3j7DpN9V1RmupuYAgVvRZLE2m1a0se6n2XN01LuDxdduN
idLWaknNd5OJMnoFKIiN0RNEIPBxSR5XIufG5rXOTRVTmTwA1TLTNp7RMnnqyzRac2N10M6jm6c9
tscVKeN7vxOj0QnTwDUa2S8kZ/JrPVsObK9Fa5jdUVDMrMnzGYivPjdFXharWtcmiqbEegQeMR9a
1k9W6q12rU/NwIOHKwS2X2MnUuSvR3ms3FVrfYbc+prdZYaumiaKneZOgEJlLrLGDZKyNzWyOREa
5NFQwM3blqJTpLHY8XVmsj4k1X2E/aopbnidI7WNnHd71MvQDXcfbp3K82PpVJoOkjVN57NEXh3m
HBefSxDsSteV0yaxI7d4Ki9ptx5uprqqJr3gYOPr+TcPFFImqxM4ohHPisyVZbrUXpHr5ve1hsC8
U4hERE0TkBruFdI/Ip0HTJWRi76SJpq42M8RETkh6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAABHZjEMzFZIZJnxIi66sMKvs7NXmY/ypae1v4V5KTxQkjHPc1HIrm807gMLLcKH+TTmPhH66
Z7iHT8t6F/khzDwj9dM9xDVy+7TvJ3xn1LTQARTvwAADJx3WNb4rfmYxk47rGt8VvzLqd7Fd4J+H
0HF9032IVlEX3TfYhWTrymd70Hh6FAA8AFm36JL7ql4s2/RJfdUrTxQpO5xS/wCnz+8pYL9/0+f3
lLB3VvhhCzvAAXqAAA2vwddeT/DOmnMvB115P8M6acppbxM/EJPF7t6ACMbIAAAAAAHgHmqc1Gvc
artvds06kC1ZnRK5+mre00/y5lP3kn8mWm3NUa0pi6KrybcXKaojW61r3hFTsOS+XMpp6ZJ/Js+x
GQt3LFltmd8qIiaI7sKVW5iNauRom5YtzcmqJ1N1AIePKyvzdukrG7kMe+1e1VMaKTANe2d2idl3
zw2I0iljeqJ3OQza+SklzdikrERkbUVHdqgSgI7N35MZipbMLUc9umiLyIl+Rz8FRLUtau6LdRzk
avHQDZwa/dz064+tPj42ufOumj+xS1YyGdow+MWa9dYW6byMXiBsoIm3nIq9KGVrVdJP92ztVTEn
u52s3p314HQJxcjV85EA2EEU/PVm4dL/AB3HcEb269xhvu51YPGIq8HRab26q+cqAbCCGTMvkwbr
scStkTgrH95hw3topqqWG16u4qbyJrx0A2UEC3PySYN9psSJPGu65q8tS3Ba2ingbK2CqiOTVNXA
bECGyGUsY3GxOmYxbci7qNT7OpjPyOZpJHLdrxOhcqI5I+KpqBsQIXK5eaCzXp0WNdZnbvN3+SIU
QZDJVrkcWRgZ0cnJ8fHRQJ0FEjt2Nzk7E1ICTaGw3EWrTYmrJE/da3vA2IEdhMn5Uxsc70Rsmnnt
TsUjqe0U1raefHdE1IY2qqP7VA2IGs18pnL01jxSCv0UT91FcvFS9Vz88lG708KMtVUVVb2KBsAM
LE2338ZXsyNRrpG7yonYR2UymQiy0VHHxRPc9m8qvXkBPAhaj84thvjUVZItfOVq8THq7RSybRy0
Jo2thbwa/vUDYgQu0uakwuPSaGNJJFdpuqWL2avMp0XVIo3TWUTVHLwQDYQQkL8/0zOliqpHr5yo
7joWbm0b6O0cdCWJOge37adigbCCLy2TfQ8VWJrXpNJuKq9xg5W/nKEcthkNd0DOKarx0A2IEJib
OXtdHLbigbA9qOTdXiY+Z2imx+UjrQRNexER0rl/CgGxgwLc1uWmyTHNjc9ya+evDQhI8tnpMlJR
SvW6WNqOVdeGgG1AhLOUt07FGCeOPfsP3X6LwQqtZeZ951HHRtfOxNXK77KATINfZlshQtxx5aGN
I5V0a+LjovrKb+0b6OfjpvjRazkRVk7gNiBGZTJPpRQvha16SLpx7iqzkXRS1oo2o58/P1ASIIfM
56PFIjFarpXaaJ2GXYtvhpNsNaipoiuT2gZoMeW0yGmth/2UbvcDCw+Zbl3TKxm6xi6JrzAlQQVr
OyeNyQ0oekSHjI7/APhkJnYZMfHYharnSLutZ2qoEqCNqZZk7ZmyNWOWFNXopfx9l9uskr2bmq8E
9QGWAALFpkslZ7YXbr1TgvcQOzLJosjkY7EiyPa5NVU2Ug8PDKzNZJ0kbmscqbqr2gZGVswrV3El
bvb6cNfWc18I/XTPcQ6RlakCVukSJu/vpx/uc38I/XTPcQ1cvgTnJ7xn1LTQART0AAAAycd1jW+K
35mMZOO6xrfFb8y6nexXeCfh3/pmQ12ve5ETdTipbTJVu2Vv8kfnl/6OnsQ1REXvNrKzarFexEa+
x4ln6Srx7uxTTrb35Sq/qtHlKr+q00fRBohrda1+mGl11c9MN48pVf1WjylV/VaaPog0Qda1+mDr
q56YbuuSracJm/yVSyMmpSvY5FTdXkaGqLpzNtxfUsnuL8jcws6q/d2ZjU28PSFWTXNFVOrscnv+
nz+8pYL9/wBPn95Swel2+GFk7wAF6gAANr8HPXk/wzoVjJVakiRzzMY5U10VTnvg568n+GXtum/9
bj79w5fSlO1lTHtCf0PjRk1c3VOre3fy3j/3TB5bx/7lhybdT1/yN1PX/Joc1Do+obfrl1ny3j/3
LB5bx/7lhybdT1/yN1PX/I5qDqG365dZ8t4/90z+T1mZoPcjW2WaryTU5Lup6/5L1BqePwc/td45
qFtWg7cRM7cuxIqKiKnJT0tV1/oM91C6YHOTGqdTTvCD6DW980ftN48ISolGtr+oaLvt15m1b4XX
6H8LT9qjbvB96Vb9iGn77dE4m3eD1yLat6L2ILnDLJpPwtf/AL82/GtQf7ryXwP/AIbKR7MTCzJT
3Uc7pJ2bjk7EQ1XFtco0nrhI71RP9RBM5dE/Empl4O7HkNobU8S82Ijk7lJvHY6PHVFrxKrmK5Xe
d6zHx+z9XG5Ge3XVyOm5t7EAs7W/7dsac9U0/kxI8blLtCGKWwkcKsTVWrx00JrJUI8nSfWlcrWO
01VOZkQxJDCyNvJjUagGs56n4pVpVqvBWu4KveWszBlYsc2SWVHQtVu+iLxVDYr+MiyD4nSOcixr
qmhdtVWW6jq71XdcmmqAQFtInZXD2ODYEZpx5IpsNh7WVZXvVEajFVV/sYTsJA/GJSe5zmt+y9ea
GJHs0qN6OW/YkiT8KrzAhNxfIsNp/oqS/Z/ubRdW0+mx9FzNN3VVdy00L7sdXfR8UWNOh000Idmy
7mKrEyNjoVX7Gv8A6Aw4shLfwt5sqM1jdois5Ke1auXdhdYZmo3dVU49hLw7P1YK88MauRk3FU7j
OrVWVqrYGqqtRNOIGsRPSTZB6aaSo7R696mVQxeQWlErbbmoqaompnpgIEq2IOkfuzrqv/j7DEZs
s6Nm4zKW2tTkiLyAyMlUr2akNO9KrZF+zInPUwLLcpgokkSVtmsiojukXjoSk2EjsY1tWaaR7m8p
V+0YjNmVVGNsXp5mMXVGuXgvtAXa1TMS11SZ9e3u6xqnBdDHktZHC2IW29yes926jl4uRSTyWDiy
HRubI+CWNNGvZzQtVtn0jnZLZtS2FZya/kBKTLrA9f8AxU1GPTyPa15dOhuLmo5itXkqaEYmBrpV
kg337sj99V9YENUnTDpYrvdo601Xxe3Q8x1da+0VRXppK+sqv9pMXtn61+Ss+Rz0dX03VTtMh+Mi
flGXt5ySMjWNG9mgGu4iHIyS3/FHtaxZdOKmc7EeTMHkHySrLNKxXOcvYSuPxkWO6bonOXpXby6l
+3XbbqywPVUbI1WroBhbOf7fpfDIrLwTWNqq7K8isf0WuqF6HZNa8LYosnbaxvBEReRkXdnGXJYJ
fG545Ymbm+1eK+0C7Tx92Gy181pz2JzTUgJq6yW7E7OCwTb7l9RNV9n3wWGSrkrT0auu65eCmXHi
IY1sqiuVLH2kUDX8jM3MNnss86u2v/Dii9FJNQwzInbr1RNFQnKmz1ani56Mb39HNrqq80KLmzkN
upWgSeWPxdNGObzA9hxt9lhj323OYi6qmvMwrFOO9tNZgkT7UHBe5TJj2ckjla9cpbdurroq8FM6
LGRxZJbqPcsis3F15AatZuvTxHHWuFiGfRuv4m95sW0nUNj3Rkdn6uSu17ciubLCuqK3tMy/SZkK
b60iqjHpoqoBaxsjYsNXe9dGtiRVX+xqsU8txuQe6s+R0yqxr0TsNskxzH4vxHfcjNzc3k56F2lU
jo1Y4IvssTTVeagRmy11beJa12qPhXcVF58CzU/3rb+ChI08VFRtzTxOd/V4q3s1PY8XFFlZb6Od
0kjd1U7AI3P9c4v4hVhWMr5a7FIqeMOXe9ehIXcZFet1p5HOR1d281E7Sxk8HHkJknZK+vOiab8f
NUAt7TSNTHJCip00jkSP2ke2k25mpathNdazUVe5SSrYBkc8c1mxJYfHxbv8kMpmNiZk33kc7pHt
3VTsA1ee2+JI8ZbX+tC/Vqr2t7CYqKsu0srH8o4mq1DJyeBq5SzDPLvNkiXVFb2ntmDxbIwTxN13
vNevqAx9qIY1xjpFYm/vJ5xIIxJMU1ruXRJ8j3IUI8jVWCVyo1V11Qs5Hfr4t0cCK56NRjUAx8A9
beGXxhN5Ee5ui9yGPgWIyzeaxNETkiErjqralBkScNU1X2qeUsbFSllkjc5VkXVdQIrZ3REutemk
iKu9qWsLRZfx79HuY1si9G9vNFM27s+2zafPDZlgdJwejOSkjSpRUKrYIE0an/te8CEkpMgn8WSV
0u/508i80RORlVc0100UTonNikXdjdp3GbBj2ROme5Vc+bg5VMStgY69lkqzyPYxVVrF5IBMAAAD
CyeRjxlN08iKunBGpzVSPp5qZbcVe7DuLOmsapy09YGdlvQv8kOYeEfrpnuIdPy3oX+SHMPCP10z
3ENXL4E5yd8Z9S00AEU9AAAAMnHdY1vit+ZjGTjusa3xW/Mup3sV3gn4dtz3U6exDVE+ybXnup09
iGqJ9ks0l3v08A0z4n6egAjkSAAAvI2rF9TSe4vyNVXkbTi+ppPcX5Elorv0rojvp+HKL/p8/vKW
C/f9Pn95SwetW+GG9O8ABeoAADa/Bz15P8MyNuuvI/hmP4OevJ/hmRt115H8M5jSXip+IdVyc76P
iWuAA1HbAAA87C/Q9Pi94sdhfoenxe8JWXOCXXa/o7PdQulqv6Oz3ULpqPP6t8sezSr22o2zEyRE
XVEcmuhjeQsd+0iX/EkBoNcq03a6Y1RVMMDyFjf2kX/EvV8fVqKq1oGRq7nuppqZQGuVZu11Rqmq
f3D0AosAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADxURU4oegAeKi
LzTkegAAAAAAAAAAAIDajhFXc9P6aPTePM2qLNRRi6Sr9gl7tOO9VdBMnmu7uwwKWz8dW02eSeSd
zPsb6/ZA9uQZCzF0beiRvBePMgc1sTJnbSWLUzWPRNNGm6HhbVTFUaqoZbN+5Yq27c6pc7+qxn7l
R9VjP3KnRQYuj2/JudbZv6kudfVYz9yo+qxn7lTooHR7fkdbZv6kudfVYz9ypXD4MWQTMlbYVVY5
HIi+o6EecyvMW/JSdK5k9k3JQ1ujfu1ugesSJ3oR/wBGLH6jDaeQ5i5j27k7Vca5Q93GtXatq5TE
y1f6L2f1GD6L2f1GG0As6HY9MMfQMf0Q1f6L2f1GD6L2f1GG0AdDsemDoGP6Iat9GLP6jCQr0b9a
ssDFiVFTTVSZ04D2l9rHt2p2qI1SyW8WzanaopiJaLN4PFmmfK6dEc9dVKfq4/8A3N9BIRn5Ef8A
cr+Yo8mhfVwn64+rhP1zfQXdYZHrk5i35NC+rhP1x9XCfrm+gdYZHrk5i35NRwmyU2BtPsVZGve9
u6qOK8tstYzFptixIxrmt3dGm1A1671dyrbrnXLYsV1Y867c6paR9AXfrIPoC79ZDeNBoW7dXm2u
scn1y0f6Au/WQfQF36yG8aDQbdXmdY5Prlo30Bd+shXDsK+GZkrZk3mrqhux5zG3V5qTpDJnsmuV
us2RkDWy6byJpwLwBa0wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAH/9k=

--_006_1FFB62CE8AEB0D4298B51122D8903E96223F8EE5IRSMSX110gercor_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=458;
	creation-date="Mon, 29 Sep 2014 16:18:38 GMT";
	modification-date="Mon, 29 Sep 2014 16:18:38 GMT"
Content-ID: <image003.png@01CFDC1A.29933F50>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABgAAAAcCAAAAABejSAyAAAABGdBTUEAALGOfPtRkwAAAAlwSFlz
AAAdYAAAHWABlZu/dAAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAFHSURB
VCjPrZFJb4JAFIBf5OLFChUFikhbe2tvRqwB0x48ulTGpQ1pg1q3SzmMBiYB9acXpC6j136Xmbxv
8rYBBxP/AoIdwAurS2G22qa1wECskkIhS1K+ZBEIkAQ0aZYR34JQiHT86llj+UYAviknszyzDycy
+qRbEBo++G0pZ7zk9oLTZx7K70RTLKBpLZOI35eHmzDyJ2TTmxnc7r1h4zU5iPDYDMscMII+9lx3
dSLIGtuVVFr/XrlLSqxc1/vSHutjfCGWLh7Vn7TPs1S7DBODTVXOikepxrrIAKedthsXN67jhufH
AaN2Rxofj8gb0556HHBe4/ZLyb3WBKkVCUE5rCSC4bNJueND0ORZrcrSqxfN8D86IsOdxeEmFNtR
9f5WvStSVIdbII7dR6j/TmH/EEC9QXT9oBj0EChq8eGCoqrA//EL+AOJz1XyOdIAAAAASUVORK5C
YII=

--_006_1FFB62CE8AEB0D4298B51122D8903E96223F8EE5IRSMSX110gercor_--
