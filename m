Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E337E00D8D; Thu, 14 Jul 2016 12:22:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4301AE00D3B
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 12:22:35 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 14 Jul 2016 12:22:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,364,1464678000"; 
	d="scan'208,217";a="846443759"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by orsmga003.jf.intel.com with ESMTP; 14 Jul 2016 12:22:35 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 14 Jul 2016 12:22:31 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.196]) by
	FMSMSX154.amr.corp.intel.com ([10.18.116.70]) with mapi id
	14.03.0248.002; Thu, 14 Jul 2016 12:22:31 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Test Report for Yocto Project 2.1.1 rc1 release 
Thread-Index: AdHd2KVnKbPCjaUuTwGPW+YZhiML8Q==
Date: Thu, 14 Jul 2016 19:22:30 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A01FB953B@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjc2ZTE5ODctY2JiNi00ZDYxLWEzNjMtYmE5YWEyMjQwMjM0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6InlKY0U3SjBWZ3IyZ3FzQUlrbzlUWklrZHQwdSthZHpFc1wvWm9zd29OcVhnPSJ9
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "Lock, Joshua G" <joshua.g.lock@intel.com>, "Purdie,
	Richard" <richard.purdie@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Test Report for Yocto Project 2.1.1 rc1 release
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
X-List-Received-Date: Thu, 14 Jul 2016 19:22:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A01FB953Bfmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A01FB953Bfmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

Here is the final report for QA Test Cycle on Yocto Project 2.1.1 rc1 relea=
se :

* Bugs Summary

** High / M+

-         test_rpm_query_nonroot  - Failed to create new user - need to be =
backported to 2.1.2 : 8988 [1]

-         test_parselogs failed on udevd[342] inotify_add_watch /dev/loop: =
9520 [2]

-         Failed to build gst-player for qemuarm64 on Fedora23 i686: 9286 [=
3]

-         Failed to build nativesdk-glibc for qemumips and qemumips64 on Fe=
dora 23 i686 - need to be backported to 2.1.2: 9287 [4]

-        [Krogoth] Failed to build pkgconfig-native on Fedora24: 9897 [5]

** Other bugs

-        Failed to build iptables with extensible sdk on Fedora 23 i686 - -=
 need to be backported to 2.1.2: 9048 [6]

-        test_parselogs (oeqa.runtime.parselogs.ParseLogsTest) - - need to =
be backported to 2.1.2: 9271 [7]

* Important Notes
               - Performance test was already applied on GDC machines, with=
 not much difference in times between 2.1 and 2.1.1  [8]
               - Performance test now have 2 stages form 1.6 to 2.1 with RO=
 results and 2.1 and forward with GDC results [9]
- Some components were not tested due QA resources bandwidth (Eclipse Plug =
In, Meta-Yocto, BSP Manual TCs, Toaster Manual TCs)

* Full Report : https://wiki.yoctoproject.org/wiki/WW28_-_2016-07-07_-_Test=
_Cycle_2.1.1_rc1

*  Links
1- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8988
2- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9520
3- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9286
4- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9287
5- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9897
6- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9048
7- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9271
8- https://wiki.yoctoproject.org/wiki/WW28_-_2016-07-07_-_Test_Cycle_2.1.1_=
rc1#Performance_Charts
9- https://wiki.yoctoproject.org/wiki/WW28_-_2016-07-07_-_Test_Cycle_2.1.1_=
rc1#Build_Performance_Test


Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A01FB953Bfmsmsx101amrcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
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
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:384180877;
	mso-list-type:hybrid;
	mso-list-template-ids:2063527846 -1782560276 67698713 67698715 67698703 67=
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
	{mso-list-id:686490666;
	mso-list-type:hybrid;
	mso-list-template-ids:-1696978606 -1691342450 67698691 67698693 67698689 6=
7698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:9;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:5.25in;
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
<p class=3D"MsoNormal">Hi <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the final report for QA Test Cycle on Yocto =
Project 2.1.1 rc1 release :<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">*<b> Bugs Summary<o:p></o:p></b></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">** High / M&#43; <o:p></o=
:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>&nbsp;test_rpm_query_nonroot&nbsp; - Failed to crea=
te new user - need to be backported to 2.1.2 : 8988 [1]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>&nbsp;test_parselogs failed on udevd[342] inotify_a=
dd_watch /dev/loop: 9520 [2]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>&nbsp;Failed to build gst-player for qemuarm64 on F=
edora23 i686: 9286 [3]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>&nbsp;Failed to build nativesdk-glibc for qemumips =
and qemumips64 on Fedora 23 i686 - need to be backported to 2.1.2: 9287 [4]=
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]><span style=3D"font-size:9.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;background:white">[Krogoth] Failed to buil=
d pkgconfig-native on Fedora24: 9897 [5]</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">** Other bugs <o:p></o:p>=
</p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Failed to build iptables with extensible sdk on Fed=
ora 23 i686 - - need to be backported to 2.1.2: 9048 [6]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>test_parselogs (oeqa.runtime.parselogs.ParseLogsTes=
t) - - need to be backported to 2.1.2: 9271 [7]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">*<b> Important Notes <o:p></o:p></b></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Performance test was already applied on =
GDC machines, with not much difference in times between 2.1 and 2.1.1 &nbsp=
;[8]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Performance test now have 2 stages form =
1.6 to 2.1 with RO results and 2.1 and forward with GDC results [9]<o:p></o=
:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- Some components were no=
t tested due QA resources bandwidth (Eclipse Plug In, Meta-Yocto, BSP Manua=
l TCs, Toaster Manual TCs)
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">*<b> Full Report : <a href=3D"https://wiki.yoctoproj=
ect.org/wiki/WW28_-_2016-07-07_-_Test_Cycle_2.1.1_rc1">
https://wiki.yoctoproject.org/wiki/WW28_-_2016-07-07_-_Test_Cycle_2.1.1_rc1=
</a> <o:p>
</o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>* &nbsp;Links&nbsp;&nbsp; <o:p></o:p></b></p>
<p class=3D"MsoNormal">1- <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D8988">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8988</a><o:p></o:p></p>
<p class=3D"MsoNormal">2- <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D9520">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9520</a><o:p></o:p></p>
<p class=3D"MsoNormal">3- <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D9286">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9286</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">4- <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D9287">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9287</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">5- <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D9897">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9897</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">6- <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D9048">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9048</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">7- <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D9271">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9271</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">8- <a href=3D"https://wiki.yoctoproject.org/wiki/WW2=
8_-_2016-07-07_-_Test_Cycle_2.1.1_rc1#Performance_Charts">
https://wiki.yoctoproject.org/wiki/WW28_-_2016-07-07_-_Test_Cycle_2.1.1_rc1=
#Performance_Charts</a>
<o:p></o:p></p>
<p class=3D"MsoNormal">9- <a href=3D"https://wiki.yoctoproject.org/wiki/WW2=
8_-_2016-07-07_-_Test_Cycle_2.1.1_rc1#Build_Performance_Test">
https://wiki.yoctoproject.org/wiki/WW28_-_2016-07-07_-_Test_Cycle_2.1.1_rc1=
#Build_Performance_Test</a>
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

--_000_0A5D9A624DF90343892F8F3FE7DE525A01FB953Bfmsmsx101amrcor_--
