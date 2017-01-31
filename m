Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 285ACE0097D; Tue, 31 Jan 2017 14:43:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 717F9E00839
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2017 14:43:29 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga104.fm.intel.com with ESMTP; 31 Jan 2017 14:43:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,316,1477983600"; d="scan'208,217";a="60366344"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
	by fmsmga006.fm.intel.com with ESMTP; 31 Jan 2017 14:43:29 -0800
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
	fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Tue, 31 Jan 2017 14:43:29 -0800
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.198]) by
	fmsmsx118.amr.corp.intel.com ([169.254.1.242]) with mapi id
	14.03.0248.002; Tue, 31 Jan 2017 14:43:28 -0800
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Purdie, Richard" <richard.purdie@intel.com>
Thread-Topic: QA Test Report for Yocto Project  2.3 M2 rc1
Thread-Index: AdJ76ejW3MoI4FtxRF+KGONvmR7q4A==
Date: Tue, 31 Jan 2017 22:43:27 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A020A33F7@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWIzNzFiZWEtMjU2OC00OWZmLThjMDEtMDAzZmQwZjIzNDc5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IlNGWHFCS0VLXC9URUk5RVpEc21YSFdudlZXZDNcL3NkdXJQSHBqSGR2TWdXZz0ifQ==
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 03 Feb 2017 06:58:08 -0800
Cc: "Ylinen, Mikko" <mikko.ylinen@intel.com>, "Avery,
	Brian" <brian.avery@intel.com>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>, "Khor,
	Chin Kooi" <chin.kooi.khor@intel.com>, "Bhattaram,
	Jyothi \(Wind River\)" <jyothi.bhattaram@windriver.com>,
	"Cobbley, David A" <david.a.cobbley@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>, "Sivosuo,
	Matti-Pekka" <matti-pekka.sivosuo@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: QA Test Report for Yocto Project 2.3 M2 rc1
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
X-List-Received-Date: Tue, 31 Jan 2017 22:43:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A020A33F7fmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A020A33F7fmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

Here is the report for full QA Cycle on 2.3 M2 rc1

Full Report :  https://wiki.yoctoproject.org/wiki/WW05_-_2017-01-24_-_Full_=
Test_Cycle_2.3_M2_rc1

Summary

The QA cycle for 2.3 M2 rc1 was completed, 6 new issues were found, the mos=
t important was 10964 that is currently blocking all the automated test for=
 BSP module, the biggest module validated during the cycle, the rest of the=
 issues are not representing big blockers. In regards of performance there =
were important degradations on the tasks measured, mostly caused by "recipe=
 specific sysroots" introduced on this release candidate. For this cycle we=
re added two component to the list of validated items, CROPS and KENREL, bo=
th are currently manual executed. Due the Chinese new year festivities we h=
ad  a resource missing from WR team hence some components were not validate=
d, mostly the ones related to non x86 arch. There was also an increase of e=
xecution time on selftest due combination of current performance degradatio=
n and  TC "test_postinst_roofs_and_boot" that is testing different configur=
ations for init/manager packages a patch was sent [1] but still taking cons=
iderable AB time due the nature of the test.

Based on the previous statements the QA conclusion is that and rc2  is need=
ed to test automated BSP (testimage),  Selftest and measurements of perform=
ance.

Bugs

      * New

10964 - testimage: Test suite is not running when images are downloaded fro=
m Autobuilder [2]
10968 - selftest: devtool and recipetool fails on load plugin test. [3]
10970 - pybootchartgui.py has not been migrated to python3 [4]
10983 - [Test Case 810] Avoid cache reload for incremental development usin=
g a backgrounded bitbake server [5]
10984 - [Test Case 1058] bitbake can use alternate download methods than gi=
t [6]
10990 - [crosstap] systemtap error on core-image-minimal with tools-profile=
 [7]

      * High / M+ Not New

             10846 - Toaster: [Test Case 1095] Filter doesn't show a dialog=
ue [8]

Other bugs : https://wiki.yoctoproject.org/wiki/WW52_-_2016-12-19_-_Full_Te=
st_Cycle_2.3_M1_rc1#Other_Bugs_found_during_QA_Test_.28NOT_NEW.29

Performance
            Results were only delivered by Ubuntu machine due fedora machin=
e is being used to do debugging activities for bug 10844 [9]
                                                                 M1        =
      M2              %

-        core-image-sato                     01:02:07      01:14:59      +2=
0.71

-        core-image-sato -c rootfs      00:02:47      00:04:14      +52.10

-        core-image-sato (rmwork)     01:00:33      01:08:02      +12.36

-        virtual/kernel                         00:04:53      00:05:01     =
 +2.73

-        eSDK deploy time                  04:23:00       03:47:00     -13.=
69


pTest

-        Still 12 issues open

-        There were improvements on execution % of busybox, e2fsprogs, open=
ssl

-        There were regression on executions % for lttng-tools, strace, tcl=
, util-linux


            Full report : https://wiki.yoctoproject.org/wiki/WW05_-_2017-01=
-24_-_Full_Test_Cycle_2.3_M2_rc1#pTest_for_genericx86-64_on_NUC

Links


1-     http://lists.openembedded.org/pipermail/openembedded-core/2017-Janua=
ry/131986.html

2-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10964

3-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10968

4-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10970

5-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10983

6-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10984

7-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10990

8-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10846

9-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10844


Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A020A33F7fmsmsx101amrcor_
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
	{mso-list-id:267393920;
	mso-list-type:hybrid;
	mso-list-template-ids:1086588320 -1197681960 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
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
	{mso-list-id:777061654;
	mso-list-type:hybrid;
	mso-list-template-ids:-647880052 591687658 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-text:%1-;
	mso-level-tab-stop:none;
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
	{mso-list-id:786505540;
	mso-list-type:hybrid;
	mso-list-template-ids:1160512358 434415860 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-text:%1-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l3
	{mso-list-id:1090353385;
	mso-list-type:hybrid;
	mso-list-template-ids:-332992486 643087780 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
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
	{mso-list-id:1928612590;
	mso-list-type:hybrid;
	mso-list-template-ids:1105780990 -1111575796 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l4:level1
	{mso-level-text:%1-;
	mso-level-tab-stop:none;
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
<p class=3D"MsoNormal">Here is the report for full QA Cycle on 2.3 M2 rc1<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Report :&nbsp; <a href=3D"https://wiki.yoctopro=
ject.org/wiki/WW05_-_2017-01-24_-_Full_Test_Cycle_2.3_M2_rc1">
https://wiki.yoctoproject.org/wiki/WW05_-_2017-01-24_-_Full_Test_Cycle_2.3_=
M2_rc1</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Summary <o:p></o=
:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">The QA cycle for 2.3 M2 r=
c1 was completed, 6 new issues were found, the most important was 10964 tha=
t is currently blocking all the automated test for BSP module, the biggest =
module validated during the cycle, the
 rest of the issues are not representing big blockers. In regards of perfor=
mance there were important degradations on the tasks measured, mostly cause=
d by &#8220;recipe specific sysroots&#8221; introduced on this release cand=
idate. For this cycle were added two component
 to the list of validated items, CROPS and KENREL, both are currently manua=
l executed. Due the Chinese new year festivities we had &nbsp;a resource mi=
ssing from WR team hence some components were not validated, mostly the one=
s related to non x86 arch. There was
 also an increase of execution time on selftest due combination of current =
performance degradation and &nbsp;TC &#8220;test_postinst_roofs_and_boot&#8=
221; that is testing different configurations for init/manager packages a p=
atch was sent [1] but still taking considerable AB
 time due the nature of the test.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Based on the previous sta=
tements the QA conclusion is that and rc2 &nbsp;is needed to test automated=
 BSP (testimage), &nbsp;Selftest and measurements of performance.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Bugs <o:p></o:p>=
</span></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * New<o:p></o:p></=
b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10964 - testimage: Test s=
uite is not running when images are downloaded from Autobuilder [2]<o:p></o=
:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10968 - selftest: devtool=
 and recipetool fails on load plugin test. [3]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10970 - pybootchartgui.py=
 has not been migrated to python3 [4]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10983 - [Test Case 810] A=
void cache reload for incremental development using a backgrounded bitbake =
server [5]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10984 - [Test Case 1058] =
bitbake can use alternate download methods than git [6]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10990 - [crosstap] system=
tap error on core-image-minimal with tools-profile [7]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;* High / M&#43; No=
t New<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>10846 - Toaster: [Test Case 1095] Filter d=
oesn't show a dialogue [8]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Other bugs : <a href=3D"h=
ttps://wiki.yoctoproject.org/wiki/WW52_-_2016-12-19_-_Full_Test_Cycle_2.3_M=
1_rc1#Other_Bugs_found_during_QA_Test_.28NOT_NEW.29">
https://wiki.yoctoproject.org/wiki/WW52_-_2016-12-19_-_Full_Test_Cycle_2.3_=
M1_rc1#Other_Bugs_found_during_QA_Test_.28NOT_NEW.29</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Performance<o:p>=
</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></b>Results were =
only delivered by Ubuntu machine due fedora machine is being used to do deb=
ugging activities for bug 10844 [9]
<b><span style=3D"font-size:14.0pt"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span=
></b>M1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;M2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;%<b><span style=3D"font-size:14.0pt"><o:p></o:p></span></b=
></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l3 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>core-image-sato&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 01:02:07&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 01:14:59 &nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&#43;20.71<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l3 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>core-image-sato -c rootfs&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 00:02:47&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00:04:14 &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&#43;52.10<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l3 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>core-image-sato (rmwork)&nbsp;&nbsp;&nbsp;&nbsp; 01=
:00:33&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 01:08:02&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;&#43;12.36<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l3 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>virtual/kernel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;00:04:53 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;00:=
05:01 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#43;2.73<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l3 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>eSDK deploy time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;04:23:0=
0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 03:47:00 &nbsp;&nbsp;&nbsp;&nbsp;-13.=
69<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></b></=
p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">pTest<o:p></o:p>=
</span></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l3 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Still 12 issues open <o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l3 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>There were improvements on execution % of busybox, =
e2fsprogs, openssl<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l3 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>There were regression on executions % for lttng-too=
ls, strace, tcl, util-linux
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in"><o:p>&nbsp;</o:p>=
</p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></b>Full report :
<a href=3D"https://wiki.yoctoproject.org/wiki/WW05_-_2017-01-24_-_Full_Test=
_Cycle_2.3_M2_rc1#pTest_for_genericx86-64_on_NUC">
https://wiki.yoctoproject.org/wiki/WW05_-_2017-01-24_-_Full_Test_Cycle_2.3_=
M2_rc1#pTest_for_genericx86-64_on_NUC</a>
<b><span style=3D"font-size:14.0pt"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Links<o:p></o:p>=
</span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo5"><![if !supportLists]><span style=3D"mso-list:Ignore">1-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"http://lists.openembedded.org/pipermail/=
openembedded-core/2017-January/131986.html">http://lists.openembedded.org/p=
ipermail/openembedded-core/2017-January/131986.html</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo5"><![if !supportLists]><span style=3D"mso-list:Ignore">2-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10964">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1096=
4</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo5"><![if !supportLists]><span style=3D"mso-list:Ignore">3-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10968">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1096=
8</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo5"><![if !supportLists]><span style=3D"mso-list:Ignore">4-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10970">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1097=
0</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo5"><![if !supportLists]><span style=3D"mso-list:Ignore">5-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10983">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1098=
3</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo5"><![if !supportLists]><span style=3D"mso-list:Ignore">6-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10984">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1098=
4</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo5"><![if !supportLists]><span style=3D"mso-list:Ignore">7-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10990">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1099=
0</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo5"><![if !supportLists]><span style=3D"mso-list:Ignore">8-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10846">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1084=
6</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo5"><![if !supportLists]><span style=3D"mso-list:Ignore">9-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10844">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1084=
4</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Jos=E9</b><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A020A33F7fmsmsx101amrcor_--
