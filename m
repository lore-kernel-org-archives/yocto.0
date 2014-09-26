Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20FB6E007A2; Fri, 26 Sep 2014 01:19:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	NORMAL_HTTP_TO_IP,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 68 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 Sep 2014 01:19:30 PDT
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 543A0E00769
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 01:19:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 26 Sep 2014 01:16:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,603,1406617200"; 
	d="png'150?jpg'150,145?scan'150,145,208,217,150,145";a="579351620"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga001.jf.intel.com with ESMTP; 26 Sep 2014 01:18:14 -0700
Received: from irsmsx109.ger.corp.intel.com (163.33.3.23) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Fri, 26 Sep 2014 09:18:13 +0100
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.199]) by
	IRSMSX109.ger.corp.intel.com ([169.254.13.253]) with mapi id
	14.03.0195.001; Fri, 26 Sep 2014 09:18:13 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.7_M4 weekly test results WW38
Thread-Index: AQHP2MIwsI6zgN6w3EeipVKXBd+e5g==
Date: Fri, 26 Sep 2014 08:18:12 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E96223F6D9B@IRSMSX110.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.4.140807
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Yocto 1.7_M4 weekly test results WW38
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
X-List-Received-Date: Fri, 26 Sep 2014 08:19:33 -0000
X-Groupsio-MsgNum: 21672
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_1FFB62CE8AEB0D4298B51122D8903E96223F6D9BIRSMSX110gercor_";
	type="multipart/alternative"

--_006_1FFB62CE8AEB0D4298B51122D8903E96223F6D9BIRSMSX110gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E96223F6D9BIRSMSX110gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E96223F6D9BIRSMSX110gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
Here are the weekly testing results for 1.7_M4

Issue summary:

  *   6752 - bitbake-prserv-tool has issues when it comes to exporting the =
PR database
  *   On te Distro testing <https://wiki.yoctoproject.org/wiki/Distribution=
_Support#Distro_Testing> side, we have all buildsets finished successfully.
For more details on the test run, you can review the  full test report here=
: https://wiki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M4.


Testing data

 Test type:  Weekly Test

 Branch: master

 Build name: 1.7_M4

 poky commit: 7d80f8e9468253496a7097685aac8f468940a9c5

 Eclipse Plugin commit Kepler: 4a167fd662262ebdaa3cf0d332ac0debb52d7904

 Autobuilder images repository:  http://autobuilder.yoctoproject.org/pub/ni=
ghtly/20140916-2

 Distributions tested: Ubuntu 14.04 64bit, Fedora 20 64bit, Opensuse 13.1 6=
4bit, CentOS 6.5 64 bit

[edit<https://wiki.yoctoproject.org/wiki/index.php?title=3DWW38_-_2014-09-1=
6_-_Weekly_-_1.7_M4&action=3Dedit&section=3D2>]Summary Report
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

2892<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2892>

ADT: master branch

Fedora 20 i686

95.6%

none

4.4%

6613<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6613>

0.0%

none

100.0%

2891<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2891>

ADT: master branch

Ubuntu 14.04 x86_64

98.9%

none

1.1%

6613<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6613>

0.0%

none

100.0%

2897<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2897>

BSP/QEMU: master branch

Beaglebone Black

100.0%

none

0.0%

none

0.0%

none

100.0%

2899<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2899>

BSP/QEMU: master branch

EdgeRouter

100.0%

none

0.0%

none

0.0%

none

100.0%

2911<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2911>

BSP/QEMU: master branch

generic-x86 on Atom N2600

100.0%

none

0.0%

none

0.0%

none

100.0%

2912<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2912>

BSP/QEMU: master branch

genericx86-64 on NUC

97.7%

none

2.3%

6583<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6583>

0.0%

none

100.0%

2900<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2900>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

2898<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2898>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

2916<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2916>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

2893<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2893>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

2895<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2895>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

2894<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2894>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

2917<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2917>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

2896<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2896>

Meta-yocto: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2909<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909>

Toaster: master branch

Fedora 20 x86_64

88.1%

none

11.9%

6681<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6681> 6685<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D6685> 5255<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5255> 5253<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5253> 5226<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D5226> 5811<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D581=
1> 5844<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844> 6688<http=
s://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6688>

0.0%

none

100.0%

2904<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2904>

OE-Core: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2905<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2905>

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

13

PASSED

728

Total: 741


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:13,728&chco=3DFF9933|00FF00&chl=3DFAILED(13)+2%25|PASSED(728)+98%25]



Bug Status Report

[Bug Status]

ID[?]<https://wiki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M=
4>

Priority[?]<https://wiki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-=
_1.7_M4>

Status[?]<https://wiki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1=
.7_M4>

Resolution[?]<https://wiki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly=
_-_1.7_M4>

Test Runs[?]<https://wiki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly_=
-_1.7_M4>

Description[?]<https://wiki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_Weekl=
y_-_1.7_M4>

Version[?]<https://wiki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_=
1.7_M4>

Target Milestone[?]<https://wiki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_=
Weekly_-_1.7_M4>

Age (days)[?]<https://wiki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly=
_-_1.7_M4>

5226<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226>

Medium

NEW

2909<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909>

in 'variables' API, the 'changed' field seems to return always 'FALSE'

1.5

Future

363

5253<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5253>

Medium

RESOLVED

WONTFIX

2909<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909>

[webhob-poky/master] work_directory in tasks table is empty

unspecified

1.6 M1

358

5255<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5255>

Medium

ACCEPTED

2909<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909>

source_url in the tasks table is empty

unspecified

Future

358

5811<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5811>

Medium

IN PROGRESS IMPLEMENTATION

2909<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909>

the orm_variablehistory table should collect the variable value for each fi=
le

unspecified

Future

217

5844<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844>

Medium

ACCEPTED

2909<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909>

Wrong script_type when task is not executed.

unspecified

1.7 M4

210

6583<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6583>

Medium

NEW

2912<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2912>

[Test Case 972] Xorg log: Failed to load module "present"

1.7

1.7

50

6613<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6613>

Medium

RESOLVED

FIXED

2892<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2892> 2891<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2891>

C++ compiler does not work for ppce500v2 cross toolchain

1.7

1.7

41

6681<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6681>

Medium

NEW

2909<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909>

Check if the number of errors from Build table matches the number of level =
entries with value 2 from LogMessage table.

1.7

1.7 M4

12

6685<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6685>

Medium

NEW

2909<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909>

Elapsed_time value null for tasks with outcome=3D0

1.7

1.7 M4

11

6688<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6688>

Medium

NEW

2909<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909>

Build image using managed mode - Toaster web interface tries to load from a=
ddress http://0.0.0.0:8000

1.7

1.8

11

6752<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6752>

Undecided

NEEDINFO

2905<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2905>

bitbake-prserv-tool has issues when it comes to exporting the PR database

1.7

---

NEW

Total: 11




Distro Results


BRANCH

master

COMMIT

Poky: 429802fe6691c8a70ec9735c0db4c6a4e1e1b038

RELEASE

1.7_M3.rc2

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

--_000_1FFB62CE8AEB0D4298B51122D8903E96223F6D9BIRSMSX110gercor_
Content-Type: text/html; charset="us-ascii"
Content-ID: <26CE955BDAA27F4691006E59E7123F0F@intel.com>
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
	{mso-list-id:2064017700;
	mso-list-template-ids:-1758666438;}
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
libri&quot;,&quot;sans-serif&quot;;color:black">Here are the weekly testing=
 results for 1.7_M4<o:p></o:p></span></p>
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
serif&quot;">6752 - bitbake-prserv-tool has issues when it comes to exporti=
ng the PR database&nbsp;<o:p></o:p></span></li><li class=3D"MsoNormal" styl=
e=3D"color:black;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-lis=
t:l0 level1 lfo1">
<span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">On te <a href=3D"https://wiki.yoctoproject.org/wiki/Distributi=
on_Support#Distro_Testing">
Distro testing </a>side, we have all buildsets finished successfully.&nbsp;=
<o:p></o:p></span></li></ul>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">For more details on the tes=
t run, you can review the &nbsp;full test report here:&nbsp;<a href=3D"http=
s://wiki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M4">https:/=
/wiki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M4</a>.<o:p></=
o:p></span></p>
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
g:0in;background-position:initial initial;background-repeat:initial initial=
;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:17.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testi=
ng data</span></span><span style=3D"font-size:17.5pt;font-family:&quot;Aria=
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
"><span style=3D"color:black"> poky commit: 7d80f8e9468253496a7097685aac8f4=
68940a9c5<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Kepler: 4a167fd662262e=
bdaa3cf0d332ac0debb52d7904<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository:&nbsp; <a href=
=3D"http://autobuilder.yoctoproject.org/pub/nightly/20140916-2">http://auto=
builder.yoctoproject.org/pub/nightly/20140916-2</a><o:p></o:p></span></pre>
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
<span class=3D"editsection"><span style=3D"font-size:9.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">[<a hr=
ef=3D"https://wiki.yoctoproject.org/wiki/index.php?title=3DWW38_-_2014-09-1=
6_-_Weekly_-_1.7_M4&amp;action=3Dedit&amp;section=3D2" title=3D"Edit sectio=
n: Summary Report"><span style=3D"color:#5A3696;text-decoration:none">edit<=
/span></a>]</span></span><span class=3D"mw-headline"><span style=3D"font-si=
ze:17.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;=
font-weight:normal">Summary
 Report</span></span><span style=3D"font-size:17.5pt;font-family:&quot;Aria=
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
n style=3D"font-size:9.0pt">Testing Summary Report<o:p></o:p></span></b></p=
>
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
<b><span style=3D"font-size:9.0pt">Test Run<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Test Plan<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Environment<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Passed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Other issues<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Failed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Failing bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Blocked<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Blocking bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Complete<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2892"><span style=3D"color:#5A3696;text-decorati=
on:none">2892</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Fedora 20 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">95.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">4.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D6613"><span style=3D"color:#5A3696;text-decoration:none=
">6613</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2891"><span style=3D"color:#5A3696;text-decorati=
on:none">2891</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">98.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">1.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D6613"><span style=3D"color:#5A3696;text-decoration:none=
">6613</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2897"><span style=3D"color:#5A3696;text-decorati=
on:none">2897</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Beaglebone Black<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2899"><span style=3D"color:#5A3696;text-decorati=
on:none">2899</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">EdgeRouter<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2911"><span style=3D"color:#5A3696;text-decorati=
on:none">2911</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">generic-x86 on Atom N2600<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2912"><span style=3D"color:#5A3696;text-decorati=
on:none">2912</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">genericx86-64 on NUC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">97.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">2.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D6583"><span style=3D"color:#5A3696;text-decoration:none=
">6583</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2900"><span style=3D"color:#5A3696;text-decorati=
on:none">2900</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">MPC8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2898"><span style=3D"color:#5A3696;text-decorati=
on:none">2898</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">P1022ds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2916"><span style=3D"color:#5A3696;text-decorati=
on:none">2916</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">qemu-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2893"><span style=3D"color:#5A3696;text-decorati=
on:none">2893</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2895"><span style=3D"color:#5A3696;text-decorati=
on:none">2895</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2894"><span style=3D"color:#5A3696;text-decorati=
on:none">2894</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2917"><span style=3D"color:#5A3696;text-decorati=
on:none">2917</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2896"><span style=3D"color:#5A3696;text-decorati=
on:none">2896</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Meta-yocto: master branch<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2909"><span style=3D"color:#5A3696;text-decorati=
on:none">2909</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Toaster: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Fedora 20 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">88.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">11.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D6681"><span style=3D"color:#5A3696;text-decoration:none=
">6681</span></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D6685"><span style=3D"color:#5A3696;text-decoration:none">6685</s=
pan></a>&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D5255"><span style=3D"color:#5A3696;text-decoration:none">5255</span></a>=
&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5253">=
<span style=3D"color:#5A3696;text-decoration:none">5253</span></a>&nbsp;<a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226"><span sty=
le=3D"color:#5A3696;text-decoration:none">5226</span></a>&nbsp;<a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5811"><span style=3D"col=
or:#5A3696;text-decoration:none">5811</span></a>&nbsp;<a href=3D"https://bu=
gzilla.yoctoproject.org/show_bug.cgi?id=3D5844"><span style=3D"color:#5A369=
6;text-decoration:none">5844</span></a>&nbsp;<a href=3D"https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D6688"><span style=3D"color:#5A3696;text-de=
coration:none">6688</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2904"><span style=3D"color:#5A3696;text-decorati=
on:none">2904</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">OE-Core: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2905"><span style=3D"color:#5A3696;text-decorati=
on:none">2905</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BitBake: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">93.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">6.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D6752"><span style=3D"color:#5A3696;text-decoration:none=
">6752</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.0pt">Total: 17</span></b><span style=3D"font-=
size:9.0pt"><o:p></o:p></span></p>
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
n style=3D"font-size:9.0pt">Test Case Status Report<o:p></o:p></span></b></=
p>
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
<b><span style=3D"font-size:9.0pt">Status<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Count<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">13<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">728<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.0pt">Total: 741</span></b><span style=3D"font=
-size:9.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><img border=3D"0" wi=
dth=3D"860" height=3D"239" id=3D"_x0000_i1035" src=3D"cid:image001.jpg@01CF=
D97B.8F387380" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;chs=
=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:13,728&amp;chco=3DFF9933|00FF00&amp;chl=
=3DFAILED(13)&#43;2%25|PASSED(728)&#43;98%25"></span><span style=3D"font-si=
ze:9.0pt"><o:p></o:p></span></p>
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
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black">Bug Status Report<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><=
img border=3D"0" width=3D"740" height=3D"239" id=3D"_x0000_i1034" src=3D"ci=
d:image002.jpg@01CFD97B.8F387380" alt=3D"Bug Status"></span><span style=3D"=
font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
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
n style=3D"font-size:9.0pt">ID</span></b><a href=3D"https://wiki.yoctoproje=
ct.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M4"><b><span style=3D"font-siz=
e:9.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D"24" =
height=3D"28" id=3D"_x0000_i1033" src=3D"cid:image003.png@01CFD97B.8F387380=
" alt=3D"?"></span></b></a><b><span style=3D"font-size:9.0pt"><o:p></o:p></=
span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M4"><b><span style=3D"fo=
nt-size:9.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"24" height=3D"28" id=3D"_x0000_i1032" src=3D"cid:image003.png@01CFD97B.=
8F387380" alt=3D"?"></span></b></a><b><span style=3D"font-size:9.0pt"><o:p>=
</o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M4"><b><span style=3D"font=
-size:9.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D"=
24" height=3D"28" id=3D"_x0000_i1031" src=3D"cid:image003.png@01CFD97B.8F38=
7380" alt=3D"?"></span></b></a><b><span style=3D"font-size:9.0pt"><o:p></o:=
p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M4"><b><span style=3D"=
font-size:9.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"24" height=3D"28" id=3D"_x0000_i1030" src=3D"cid:image003.png@01CFD97B.=
8F387380" alt=3D"?"></span></b></a><b><span style=3D"font-size:9.0pt"><o:p>=
</o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M4"><b><span style=3D"f=
ont-size:9.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"24" height=3D"28" id=3D"_x0000_i1029" src=3D"cid:image003.png@01CFD97B.=
8F387380" alt=3D"?"></span></b></a><b><span style=3D"font-size:9.0pt"><o:p>=
</o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M4"><b><span style=3D=
"font-size:9.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" widt=
h=3D"24" height=3D"28" id=3D"_x0000_i1028" src=3D"cid:image003.png@01CFD97B=
.8F387380" alt=3D"?"></span></b></a><b><span style=3D"font-size:9.0pt"><o:p=
></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M4"><b><span style=3D"fon=
t-size:9.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D=
"24" height=3D"28" id=3D"_x0000_i1027" src=3D"cid:image003.png@01CFD97B.8F3=
87380" alt=3D"?"></span></b></a><b><span style=3D"font-size:9.0pt"><o:p></o=
:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M4"><b><span sty=
le=3D"font-size:9.0pt;color:#5A3696;text-decoration:none"><img border=3D"0"=
 width=3D"24" height=3D"28" id=3D"_x0000_i1026" src=3D"cid:image003.png@01C=
FD97B.8F387380" alt=3D"?"></span></b></a><b><span style=3D"font-size:9.0pt"=
><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW38_-_2014-09-16_-_Weekly_-_1.7_M4"><b><span style=3D"=
font-size:9.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"24" height=3D"28" id=3D"_x0000_i1025" src=3D"cid:image003.png@01CFD97B.=
8F387380" alt=3D"?"></span></b></a><b><span style=3D"font-size:9.0pt"><o:p>=
</o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5226"><span style=3D"color:#5A3696;text-decoration:none">5226<=
/span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909"><span style=3D"colo=
r:#5A3696;text-decoration:none">2909</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">in 'variables' API, =
the 'changed' field seems to return always 'FALSE'<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Future<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">363<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5253"><span style=3D"color:#5A3696;text-decoration:none">5253<=
/span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">WONTFIX<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909"><span style=3D"colo=
r:#5A3696;text-decoration:none">2909</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">[webhob-poky/master]=
 work_directory in tasks table is empty<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.6 M1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">358<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5255"><span style=3D"color:#5A3696;text-decoration:none">5255<=
/span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909"><span style=3D"colo=
r:#5A3696;text-decoration:none">2909</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">source_url in the ta=
sks table is empty<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Future<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">358<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5811"><span style=3D"color:#5A3696;text-decoration:none">5811<=
/span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">IN PROGRESS IMPLEMENTATION<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909"><span style=3D"colo=
r:#5A3696;text-decoration:none">2909</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">the orm_variablehist=
ory table should collect the variable value for each file<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Future<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">217<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5844"><span style=3D"color:#5A3696;text-decoration:none">5844<=
/span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909"><span style=3D"colo=
r:#5A3696;text-decoration:none">2909</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">Wrong script_type wh=
en task is not executed.<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.7 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">210<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D6583"><span style=3D"color:#5A3696;text-decoration:none">6583<=
/span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2912"><span style=3D"colo=
r:#5A3696;text-decoration:none">2912</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">[Test Case 972] Xorg=
 log: Failed to load module &quot;present&quot;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">50<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D6613"><span style=3D"color:#5A3696;text-decoration:none">6613<=
/span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2892"><span style=3D"colo=
r:#5A3696;text-decoration:none">2892</span></a>&nbsp;<a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2891"><span style=3D"color:=
#5A3696;text-decoration:none">2891</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">C&#43;&#43; compiler=
 does not work for ppce500v2 cross toolchain<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">41<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D6681"><span style=3D"color:#5A3696;text-decoration:none">6681<=
/span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909"><span style=3D"colo=
r:#5A3696;text-decoration:none">2909</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">Check if the number =
of errors from Build table matches the number of level entries with value 2=
 from LogMessage table.<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.7 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">12<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D6685"><span style=3D"color:#5A3696;text-decoration:none">6685<=
/span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909"><span style=3D"colo=
r:#5A3696;text-decoration:none">2909</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">Elapsed_time value n=
ull for tasks with outcome=3D0<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.7 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">11<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D6688"><span style=3D"color:#5A3696;text-decoration:none">6688<=
/span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2909"><span style=3D"colo=
r:#5A3696;text-decoration:none">2909</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">Build image using ma=
naged mode - Toaster web interface tries to load from address
<a href=3D"http://0.0.0.0:8000">http://0.0.0.0:8000</a><o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.8<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">11<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D6752"><span style=3D"color:#5A3696;text-decoration:none">6752<=
/span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEEDINFO<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2905"><span style=3D"colo=
r:#5A3696;text-decoration:none">2905</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">bitbake-prserv-tool =
has issues when it comes to exporting the PR database<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:9.0pt">Total: 11</span></b><span style=3D"font-size:9.0pt"><o:p></o:=
p></span></p>
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
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:14.3pt;background:white;border:none;padding:0in;ba=
ckground-position:initial initial;background-repeat:initial initial;overflo=
w:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:14.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Distr=
o Results</span></span><span style=3D"font-size:14.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p=
></span></h2>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&nbsp;&nbsp; &nbsp;&nbsp;<o:p></o:p></span></p>
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
<b><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black">BRANCH<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#F2F2F2=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:12.0pt;=
margin-right:0in;margin-bottom:12.0pt;margin-left:0in;text-align:center;lin=
e-height:14.3pt">
<b><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black">master<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">COMMIT<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">Poky: 429802fe6691c8a70ec9735c0db4c6a4e1e1b038<o:p></=
o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">RELEASE<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">1.7_M3.rc2<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:lightblu=
e;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">Ubuntu 14.04 LTS<o:p></o:p></span></p>
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
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
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
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">Fedora 20<o:p></o:p></span></p>
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
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
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
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">CentOS 6.5<o:p></o:p></span></p>
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
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
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
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">OpenSuse 13.1<o:p></o:p></span></p>
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
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">PASS<o:p></o:p></span></p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E96223F6D9BIRSMSX110gercor_--

--_006_1FFB62CE8AEB0D4298B51122D8903E96223F6D9BIRSMSX110gercor_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=9134;
	creation-date="Fri, 26 Sep 2014 08:18:11 GMT";
	modification-date="Fri, 26 Sep 2014 08:18:11 GMT"
Content-ID: <image001.jpg@01CFD97B.8F387380>
Content-Transfer-Encoding: base64

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
AAAAAAAAAAAAAAAAAAAAAAAAAAf/2Q==

--_006_1FFB62CE8AEB0D4298B51122D8903E96223F6D9BIRSMSX110gercor_
Content-Type: image/jpeg; name="image002.jpg"
Content-Description: image002.jpg
Content-Disposition: inline; filename="image002.jpg"; size=13585;
	creation-date="Fri, 26 Sep 2014 08:18:11 GMT";
	modification-date="Fri, 26 Sep 2014 08:18:11 GMT"
Content-ID: <image002.jpg@01CFD97B.8F387380>
Content-Transfer-Encoding: base64

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
2Q==

--_006_1FFB62CE8AEB0D4298B51122D8903E96223F6D9BIRSMSX110gercor_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=458;
	creation-date="Fri, 26 Sep 2014 08:18:11 GMT";
	modification-date="Fri, 26 Sep 2014 08:18:11 GMT"
Content-ID: <image003.png@01CFD97B.8F387380>
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

--_006_1FFB62CE8AEB0D4298B51122D8903E96223F6D9BIRSMSX110gercor_--
