Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F8DEE0050B; Thu, 17 Nov 2016 09:07:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC5F4E0049D
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2016 09:07:32 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 17 Nov 2016 09:07:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,506,1473145200"; 
	d="scan'208,217";a="1069885286"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2016 09:07:32 -0800
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 17 Nov 2016 09:07:32 -0800
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.55]) by
	fmsmsx158.amr.corp.intel.com ([169.254.15.148]) with mapi id
	14.03.0248.002; Thu, 17 Nov 2016 09:07:31 -0800
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>
Thread-Topic: QA Test Report for Yocto Project  2.1.2 rc1
Thread-Index: AdJA2AJhBBX7j+uGQWmK0SFnAXa2lg==
Date: Thu, 17 Nov 2016 17:07:30 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A020721A7@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGY5ODg2ZGQtNTM1Yy00MjA1LWI1MGMtODBkYzE0NTUyNjZlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6Ik9LUDNlRU5jZlJsUHY5VmRoUCtxSHVVdmtpWHlocWp6eEdmUmxSZVZrYzA9In0=
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "Avery, Brian" <brian.avery@intel.com>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: QA Test Report for Yocto Project 2.1.2 rc1
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
X-List-Received-Date: Thu, 17 Nov 2016 17:07:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A020721A7fmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A020721A7fmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

Here is the report for Partial QA Cycle on 2.1.2 rc1

Full Report :  https://wiki.yoctoproject.org/wiki/WW46_-_2016-11-10_-_Test_=
Cycle_2.1.2_rc1

Summary

There 3 new bugs found during this validation, met-yocto, ADT and eclipse-p=
lugin were the components with the bugs, there was also one bug from toaste=
r that was found on 2.2 release and is reproducible on this release. Perfor=
mance measurements were on the same levels of 2.1.1. There was an error on =
Testopia database and the results for Build Appliance cannot be uploaded, n=
o issues were found for this component.

Bugs

*New bugs found
               - 10685 - Project runs successfully but debugging throws Nul=
lPointerException [1]
- 10674 - The patch file is not applied to linux-yocto by yocto-kernel add =
patch command in 2.1.2 rc1 [2]
- 10675 - Failed to build cvs and iptables with extensible sdk on Fedora 24=
 i686 in Yocto 2.1.2 [3]

               *Bugs Found on 2.2 release and are reproducible on this rele=
ase
- 10281 Configuration variables: I can set a value for standard shell envir=
onment variable http_proxy [4]
Performance

-        In general all the measurements were at the same level showed on 2=
.1.1 release.

-        Full performance charts: https://wiki.yoctoproject.org/charts/perf=
_milestone_GDC/performance_test.html


Links

1.- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10685
2.- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10674
3.- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10675
4.- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10281


Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A020721A7fmsmsx101amrcor_
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
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1257591570;
	mso-list-type:hybrid;
	mso-list-template-ids:1459778060 -429347464 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:8;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1462304949;
	mso-list-type:hybrid;
	mso-list-template-ids:1841435650 34398344 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:8;
	mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
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
<p class=3D"MsoNormal">Here is the report for Partial QA Cycle on 2.1.2 rc1=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Report : &nbsp;<a href=3D"https://wiki.yoctopro=
ject.org/wiki/WW46_-_2016-11-10_-_Test_Cycle_2.1.2_rc1">https://wiki.yoctop=
roject.org/wiki/WW46_-_2016-11-10_-_Test_Cycle_2.1.2_rc1</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Summary <o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">There 3 new bugs found du=
ring this validation, met-yocto, ADT and eclipse-plugin were the components=
 with the bugs, there was also one bug from toaster that was found on 2.2 r=
elease and is reproducible on this release.
 Performance measurements were on the same levels of 2.1.1. There was an er=
ror on Testopia database and the results for Build Appliance cannot be uplo=
aded, no issues were found for this component.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Bugs <o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><b>*</b>New bugs found<o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 10685 - Proje=
ct runs successfully but debugging throws NullPointerException [1]<o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in">- 10674 =
- The patch file is not applied to linux-yocto by yocto-kernel add patch co=
mmand in 2.1.2 rc1 [2]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in">- 10675 =
- Failed to build cvs and iptables with extensible sdk on Fedora 24 i686 in=
 Yocto 2.1.2 [3]<o:p></o:p></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *Bugs Found on 2.2 release and are reprodu=
cible on this release
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in">- 10281 =
Configuration variables: I can set a value for standard shell environment v=
ariable http_proxy [4]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"><b>Performance<o:p></o:p></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>In general all the measurements were at the same le=
vel showed on 2.1.1 release.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Full performance charts: <a href=3D"https://wiki.yo=
ctoproject.org/charts/perf_milestone_GDC/performance_test.html">
https://wiki.yoctoproject.org/charts/perf_milestone_GDC/performance_test.ht=
ml</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in"><o:p>&nbsp;</o:p>=
</p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in"><o:p></o:p></p>
<p class=3D"MsoNormal"><b>Links<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal">1.- <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10685">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10685</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">2.- <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10674">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10674</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">3.- <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10675">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10675</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">4.- <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10281">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10281</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Jos=E9</b><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A020721A7fmsmsx101amrcor_--
