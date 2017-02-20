Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01481E0049D; Mon, 20 Feb 2017 14:19:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A8A1E003D7
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 14:19:16 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga105.fm.intel.com with ESMTP; 20 Feb 2017 14:19:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,187,1484035200"; 
	d="scan'208,217";a="826523293"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
	by FMSMGA003.fm.intel.com with ESMTP; 20 Feb 2017 14:19:16 -0800
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
	FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Mon, 20 Feb 2017 14:19:16 -0800
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.65]) by
	FMSMSX102.amr.corp.intel.com ([169.254.10.201]) with mapi id
	14.03.0248.002; Mon, 20 Feb 2017 14:19:15 -0800
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>
Thread-Topic: QA Test Report for Yocto Project  Point Release 2.2.1 rc1
Thread-Index: AdKLucNVzLiQwTzwQrydnvQAiA2qFw==
Date: Mon, 20 Feb 2017 22:19:15 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A020AAD0E@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYmRlZDc4NGYtMzMwMy00NDBjLTliMzQtODBjZjYzNzNhMmFmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6InlcLzVFTTYyUWN6a20yZngzcCtcL1lqOTRKN2xGbFdwdEJHbjcwdjNFNnJVST0ifQ==
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Cc: "Lock, Joshua G" <joshua.g.lock@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>
Subject: QA Test Report for Yocto Project Point Release 2.2.1 rc1
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
X-List-Received-Date: Mon, 20 Feb 2017 22:19:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A020AAD0Efmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A020AAD0Efmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

Here is the report for Partial QA Cycle on Point Release 2.2.1 rc1

Full Report :  https://wiki.yoctoproject.org/wiki/WW07_-_2017-02-13_-_Full_=
Point_Release_Test_Cycle_2.2.1_rc1

Summary

The QA cycle for point release 2.2.1 is complete, 3 new bugs were found non=
e of them is a big blocker. There were 7 bugs already found (3 M+)  that ar=
e still applicable for 2.2.1 hence when they are fixed a backport should be=
 applied for 2.2.2 . In regards of performance measurements were increased =
compared to 2.2 rc6 release but are on the same level for 2.3 M1 hence all =
the bugs related to this degradation were already addressed.

Bugs

      * New

-        11063           Cannot run multiple QEMU machines under UNFS for Y=
octo 2.2.1 [1]

-        11064           [Yocto 2.2.1] kernel version mismatched when using=
 yocto-bsp to create custom qemu bsp [2]

-        11054           selftest: Signing packages failing on ubuntu 16.10=
 with gpg (GnuPG) 2.1.15 [3]

      * High / M+ Not New

-        10983           [Test Case 810] Avoid cache reload for incremental=
 development using a backgrounded bitbake server [4]

-        10456           X can not launch on qemumips64 [5]

-        10990           [crosstap] systemtap error on core-image-minimal w=
ith tools-profile [6]

Full bugs Report : https://wiki.yoctoproject.org/wiki/WW07_-_2017-02-13_-_F=
ull_Point_Release_Test_Cycle_2.2.1_rc1#Bugs_Found_during_QA_Test

Performance
Performance measurements were increased compared with 2.2 release but are o=
n the same level of 2.3 M1, bugs were already addressed, for more informati=
on regarding this bugs and discussion please refer to the reports for the Q=
A cycles
on 2.3 [7]


M               2.2        2.2.1             %
sato       0:59:42   1:02:41     +5.00
rootfs    2:14        2:43           +21.64
rmwork 0:59:35   1:01:13     +2.74
kernel    4:39        5:05           +9.32
eSDK      3:32        3:28           -1.89


Performance Charts : https://wiki.yoctoproject.org/charts/perf_milestone_GD=
C/performance_test.html

Links


1-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11063

2-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11064

3-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11054

4-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10983

5-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10456

6-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10990

7-     https://wiki.yoctoproject.org/wiki/Yocto_Project_2.3_Release_Test_Pl=
an#Execution_History

Regards,
Jos=E9



Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A020AAD0Efmsmsx101amrcor_
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
	{mso-list-id:818112617;
	mso-list-type:hybrid;
	mso-list-template-ids:-114361522 1718405112 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l1:level1
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
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2
	{mso-list-id:2087069369;
	mso-list-type:hybrid;
	mso-list-template-ids:-1200991238 104001188 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
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
<p class=3D"MsoNormal">Here is the report for Partial QA Cycle on Point Rel=
ease 2.2.1 rc1
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Report :&nbsp; <a href=3D"https://wiki.yoctopro=
ject.org/wiki/WW07_-_2017-02-13_-_Full_Point_Release_Test_Cycle_2.2.1_rc1">
https://wiki.yoctoproject.org/wiki/WW07_-_2017-02-13_-_Full_Point_Release_T=
est_Cycle_2.2.1_rc1</a> &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Summary <o:p></o=
:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">The QA cycle for point re=
lease 2.2.1 is complete, 3 new bugs were found none of them is a big blocke=
r. There were 7 bugs already found (3 M&#43;) &nbsp;that are still applicab=
le for 2.2.1 hence when they are fixed a backport
 should be applied for 2.2.2 . In regards of performance measurements were =
increased compared to 2.2 rc6 release but are on the same level for 2.3 M1 =
hence all the bugs related to this degradation were already addressed.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Bugs <o:p></o:p>=
</span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * New<o:p></o:p></=
b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>11063&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; Cannot run multiple QEMU machines under UNFS for Yoct=
o 2.2.1 [1]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>11064&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; [Yocto 2.2.1] kernel version mismatched when using yo=
cto-bsp to create custom qemu bsp [2]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>11054&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; selftest: Signing packages failing on ubuntu 16.10 wi=
th gpg (GnuPG) 2.1.15 [3]<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>* High / M&#43; No=
t New<o:p></o:p></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>10983&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; [Test Case 810] Avoid cache reload for incremental de=
velopment using a backgrounded bitbake server [4]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>10456&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; X can not launch on qemumips64 [5]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>10990&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; [crosstap] systemtap error on core-image-minimal with=
 tools-profile [6]<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal">Full bugs Report : <a href=3D"https://wiki.yoctoproj=
ect.org/wiki/WW07_-_2017-02-13_-_Full_Point_Release_Test_Cycle_2.2.1_rc1#Bu=
gs_Found_during_QA_Test">
https://wiki.yoctoproject.org/wiki/WW07_-_2017-02-13_-_Full_Point_Release_T=
est_Cycle_2.2.1_rc1#Bugs_Found_during_QA_Test</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Performance<o:p>=
</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Performance measurements =
were increased compared with 2.2 release but are on the same level of 2.3 M=
1, bugs were already addressed, for more information regarding this bugs an=
d discussion please refer to the reports
 for the QA cycles <o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">on 2.3 [7]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">M&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 2.2 &nbsp;&nbsp;&nb=
sp; &nbsp;&nbsp;&nbsp;2.2.1&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;%<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">sato&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; 0:59:42&nbsp; &nbsp;1:02:41&nbsp;&nbsp; &nbsp;&nbsp;&#43;5.=
00<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">rootfs&nbsp;&nbsp;&nbsp; =
2:14&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2:43&nbsp;&nbsp;&nbsp; &nbsp=
;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&#43;21.64<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">rmwork 0:59:35&nbsp; &nbs=
p;1:01:13&nbsp; &nbsp;&nbsp;&nbsp;&#43;2.74<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">kernel&nbsp;&nbsp;&nbsp; =
4:39&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;5:05&nbsp;&nbsp;&nbsp; &nbsp=
;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&#43;9.32<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">eSDK&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 3:32&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;3:28&nbsp;&nbsp;&n=
bsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;-1.89<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></b></=
p>
<p class=3D"MsoNormal">Performance Charts : <a href=3D"https://wiki.yoctopr=
oject.org/charts/perf_milestone_GDC/performance_test.html">
https://wiki.yoctoproject.org/charts/perf_milestone_GDC/performance_test.ht=
ml</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Links<o:p></o:p>=
</span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo3"><![if !supportLists]><span style=3D"mso-list:Ignore">1-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11063">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1106=
3</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo3"><![if !supportLists]><span style=3D"mso-list:Ignore">2-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11064">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1106=
4</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo3"><![if !supportLists]><span style=3D"mso-list:Ignore">3-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11054">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1105=
4</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo3"><![if !supportLists]><span style=3D"mso-list:Ignore">4-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10983">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1098=
3</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo3"><![if !supportLists]><span style=3D"mso-list:Ignore">5-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10456">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1045=
6</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo3"><![if !supportLists]><span style=3D"mso-list:Ignore">6-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10990">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1099=
0</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo3"><![if !supportLists]><span style=3D"mso-list:Ignore">7-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto=
_Project_2.3_Release_Test_Plan#Execution_History">https://wiki.yoctoproject=
.org/wiki/Yocto_Project_2.3_Release_Test_Plan#Execution_History</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Jos=E9</b><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span lang=3D"ES-MX">Jos=E9</span></b><b><span la=
ng=3D"ES-MX" style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p>=
</span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A020AAD0Efmsmsx101amrcor_--
