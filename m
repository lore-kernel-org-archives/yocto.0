Return-Path: <jair.de.jesus.gonzalez.plascencia@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE68AE00970; Wed,  5 Apr 2017 16:26:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 666A3E0095F
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 16:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491434803; x=1522970803;
	h=from:to:cc:subject:date:message-id:mime-version;
	bh=+Qs6KArTEKMq2M1z9j4xK5CS3jExmsPDMTJZUiJqzT4=;
	b=BgBODvF0BXh1+0FM6BCt5n93GNsC0ztKj/aCbX/ZG8zi79gI0r9Mmab2
	EOJ1EQe8+QqYk/RJjy8T0CuelWyygw==;
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Apr 2017 16:26:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,281,1488873600"; 
	d="scan'208,217";a="1131575523"
Received: from jairdeje-mobl3.amr.corp.intel.com (HELO jairdejeMOBL3)
	([10.219.17.104])
	by fmsmga001.fm.intel.com with ESMTP; 05 Apr 2017 16:26:35 -0700
From: "Jair Gonzalez" <jair.de.jesus.gonzalez.plascencia@linux.intel.com>
To: <yocto@yoctoproject.org>
Date: Wed, 5 Apr 2017 18:26:35 -0500
Message-ID: <001901d2ae64$11c6a780$3553f680$@linux.intel.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdKuYfNvebTu479aTjWtioI2/bvEaw==
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzQwNzI3MzUtMDZhMC00OGU1LWIwYjgtOTE0YmUwYjFhOTJhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6ImZhRWpxXC9XK1VkSnB2czdiTzlPTnlrV1NlSlZXYllvRzlrQWR0UXBGZlpZPSJ9
x-ctpclassification: CTP_IC
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
Cc: "Lock, Joshua G" <joshua.g.lock@intel.com>, "Purdie,
	Richard" <richard.purdie@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: QA Test Report for Yocto Project Release 2.3 M3 rc2
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
X-List-Received-Date: Wed, 05 Apr 2017 23:26:46 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_001A_01D2AE3A.2BAC8B30"
Content-Language: en-us

------=_NextPart_000_001A_01D2AE3A.2BAC8B30
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello All,

 

Here is the report for the Full QA Cycle on Release 2.3 M3 rc2

 

Full Report :
https://wiki.yoctoproject.org/wiki/WW14_-_2017-03-28_-_Full_Test_Cycle_2.3_M
3_rc2

 

 

======== Summary ========

 

The QA cycle for release 2.3 M3 rc2 is complete. There are 3 new issues
found, 2 of them are High and one is M+.  Bug 11284 was not allowing
Selftest execution so a workaround was provided (read more details within
the bug description). Although it does not block M3 rc2, this issue will
need to get addressed before the mayor release. In relation to Performance,
all of the tasks measurements remained relatively without changes compared
to the previous version with small percentage variations between -1.35% to
3.31% on both machines. pTest shows improvements on strace and valgrind, but
small regressions on tcl and util-linux.

 

QA Hints

       - There are 5 high bugs that are still open, so we should keep focus
on this for M4.

 

=========================

 

 

======== Details ========

Bugs

      * New

          - High

            o   11267         X can not launch on beaglebone [1]

            o   11284         selftest: tests that capture output fail on
GDC Autobuilders [2]

          - M+

            o   11266         runqemu: fails when rm_work is active [3]

      * High / M+ Not New

            o   11119         runqemu-extract-sdk is failing when extracting
.tar.bz file [4]

            o   11222         [eclipse] C compiler cannot create executables
when reconfiguring project [5]

            o   10477         yocto-bsp: tool should output a conf file to
be consume by the qemu runner [6]

            o   11193         runqemu can not launch image if enable
"rm_work" [7]

            o   11223         devtool runqemu doesn't work in eSDK [8]

 

Full Bug Report :
https://wiki.yoctoproject.org/wiki/WW14_-_2017-03-28_-_Full_Test_Cycle_2.3_M
3_rc2#Bugs_Found_during_QA_Test

 

=========================

 

 

====== Performance ======

 

Performance measurements on both Fedora and Ubuntu machines were relatively
stable compared to the previous release, with percentage variations between
-1.35% to 3.31%. The Fedora machine showed improvements in all tasks except
a small regression on rmwork. Below are the tables with the times of the
tests:

 

-        Ubuntu

 

Test         2.3 M3 rc1        2.3 M3 rc2        %

sato         1:10:15           1:10:00           -0.36

rootfs       2:28              2:26              -1.35

rmwork       1:05:28           1:04:47           -1.04

kernel       5:11              5:12              0.32

eSDK         3:01              3:07              3.31

 

-        Fedora

 

Test       2.3 M3 rc1         2.3 M3 rc2        %

sato       1:12:34            1:14:57           3.28

rootfs     2:40               2:44              2.50

rmwork     1:07:10            1:06:45           -0.62

kernel     6:29               6:38              2.31

eSDK       3:17               3:20              1.52

 

 

Performance Charts :
https://wiki.yoctoproject.org/charts/perf_milestone_GDC/performance_test.htm
l

 

========================

 

 

========= pTest ========

 

    -  There were improvements on pass rates for the strace and valgrind
modules

    -  Modules that decreased pass rate were tcl and util-linux

    -  No new bugs were added, although there are 12 issues still open

 

pTest full report :
https://wiki.yoctoproject.org/wiki/WW14_-_2017-03-28_-_Full_Test_Cycle_2.3_M
3_rc2#pTest_for_genericx86-64_on_NUC

 

========================

 

 

Direct links to the Bugs

1.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=11267

2.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=11284

3.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=11266

4.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=11119

5.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=11222

6.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=10477

7.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=11193

8.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=11223

 

 

Regards,

Jair Gonzalez

 

 

 


------=_NextPart_000_001A_01D2AE3A.2BAC8B30
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier New"'>Hello =
All,<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier New"'>Here is =
the report for the Full&nbsp;QA Cycle on Release 2.3 M3 =
rc2<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier New"'>Full =
Report : <a =
href=3D"https://wiki.yoctoproject.org/wiki/WW14_-_2017-03-28_-_Full_Test_=
Cycle_2.3_M3_rc2">https://wiki.yoctoproject.org/wiki/WW14_-_2017-03-28_-_=
Full_Test_Cycle_2.3_M3_rc2</a><o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>=3D=3D=3D=3D=3D=3D=3D=3D Summary =
=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>The QA cycle for release 2.3 M3 rc2 =
is complete. There are 3 new issues found, 2 of them are High and one is =
M+.&nbsp; Bug 11284 was not allowing Selftest execution so a workaround =
was provided (read more details within the bug description). Although it =
does not block M3 rc2, this issue will need to get addressed before the =
mayor release. In relation to Performance, all of the tasks measurements =
remained relatively without changes compared to the previous version =
with small percentage variations between -1.35% to 3.31% on both =
machines. pTest shows improvements on strace and valgrind, but small =
regressions on tcl and util-linux.<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>QA Hints<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - There are 5 high bugs that =
are still open, so we should keep focus on this for =
M4.<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>=3D=3D=3D=3D=3D=3D=3D=3D Details =
=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>Bugs<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * =
New<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;- =
High<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;o&nbsp;&nbsp; =
11267&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;X can not =
launch on beaglebone [1]<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;o&nbsp;&nbsp; =
11284&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;selftest: =
tests that capture output fail on GDC Autobuilders =
[2]<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - =
M+<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;o&nbsp;&nbsp; =
11266&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; runqemu: fails =
when rm_work is active [3]<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * High / M+ Not =
New<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;o&nbsp; &nbsp;11119&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
runqemu-extract-sdk is failing when extracting .tar.bz file =
[4]<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;o&nbsp; &nbsp;11222&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
[eclipse] C compiler cannot create executables when reconfiguring =
project [5]<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;o &nbsp; =
10477&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; yocto-bsp: tool =
should output a conf file to be consume by the qemu runner =
[6]<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;o &nbsp; 11193&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
runqemu can not launch image if enable &quot;rm_work&quot; =
[7]<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;o &nbsp;&nbsp;11223&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;devtool runqemu doesn't work in eSDK [8]<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>Full Bug Report : <a =
href=3D"https://wiki.yoctoproject.org/wiki/WW14_-_2017-03-28_-_Full_Test_=
Cycle_2.3_M3_rc2#Bugs_Found_during_QA_Test">https://wiki.yoctoproject.org=
/wiki/WW14_-_2017-03-28_-_Full_Test_Cycle_2.3_M3_rc2#Bugs_Found_during_QA=
_Test</a><o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>=3D=3D=3D=3D=3D=3D Performance =
=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>Performance measurements on both Fedora and Ubuntu machines were =
relatively stable compared to the previous release, with percentage =
variations between -1.35% to 3.31%. The Fedora machine showed =
improvements in all tasks except a small regression on rmwork. Below are =
the tables with the times of the tests:<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Ubuntu<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>Test&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.3 M3 =
rc1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.3 M3 =
rc2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;%<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>sato&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
1:10:15&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
1:10:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
-0.36<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>rootfs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
2:28&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; =
2:26&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; -1.35<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>rmwork&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;1:05:28&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =
1:04:47&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
-1.04<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>kernel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;5:11&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =
5:12&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; &nbsp;0.32<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>eSDK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;3:01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; =
3:07&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; &nbsp;3.31<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Fedora<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>Test&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.3 M3 =
rc1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.3 M3 =
rc2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>sato&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
1:12:34&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 1:14:57&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
3.28<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>rootfs&nbsp;&nbsp;&nbsp;&nbsp; =
2:40&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =
2:44&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 2.50<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>rmwork&nbsp;&nbsp;&nbsp;&nbsp; =
1:07:10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 1:06:45&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
-0.62<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>kernel&nbsp;&nbsp;&nbsp;&nbsp; =
6:29&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =
6:38&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 2.31<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>eSDK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
3:17&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =
3:20&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 1.52<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>&nbsp;<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>Performance Charts : <a =
href=3D"https://wiki.yoctoproject.org/charts/perf_milestone_GDC/performan=
ce_test.html">https://wiki.yoctoproject.org/charts/perf_milestone_GDC/per=
formance_test.html</a><o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier =
New"'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>=3D=3D=3D=3D=3D=3D=3D=3D=3D pTest =
=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; -&nbsp; There =
were improvements on pass rates for the strace and valgrind =
modules<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; -&nbsp; Modules =
that decreased pass rate were tcl and util-linux<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp; -&nbsp; No new bugs were added, although there =
are 12 issues still open<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>pTest full report : <a =
href=3D"https://wiki.yoctoproject.org/wiki/WW14_-_2017-03-28_-_Full_Test_=
Cycle_2.3_M3_rc2#pTest_for_genericx86-64_on_NUC">https://wiki.yoctoprojec=
t.org/wiki/WW14_-_2017-03-28_-_Full_Test_Cycle_2.3_M3_rc2#pTest_for_gener=
icx86-64_on_NUC</a><o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>Direct links to the =
Bugs<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11267">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11267</a><o:p></o:p></span>=
</p><p class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11284">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11284</a><o:p></o:p></span>=
</p><p class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11266">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11266</a><o:p></o:p></span>=
</p><p class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11119">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11119</a><o:p></o:p></span>=
</p><p class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11222">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11222</a><o:p></o:p></span>=
</p><p class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477</a><o:p></o:p></span>=
</p><p class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11193">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11193</a><o:p></o:p></span>=
</p><p class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11223">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11223</a><o:p></o:p></span>=
</p><p class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:"Courier =
New"'>Regards,<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'font-family:"Courier New"'>Jair =
Gonzalez<o:p></o:p></span></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_001A_01D2AE3A.2BAC8B30--
