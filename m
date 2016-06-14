Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8CA3E009EF; Tue, 14 Jun 2016 05:08:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23EE0E009CB
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 05:08:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 14 Jun 2016 05:08:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,470,1459839600"; 
	d="scan'208,217";a="997292599"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
	by orsmga002.jf.intel.com with ESMTP; 14 Jun 2016 05:08:28 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
	FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Tue, 14 Jun 2016 05:08:27 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.196]) by
	FMSMSX109.amr.corp.intel.com ([169.254.15.235]) with mapi id
	14.03.0248.002; Tue, 14 Jun 2016 05:08:27 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Test Cycle Report for Yocto Project master branch 
Thread-Index: AdHGNClhCgSMvGfcTcS4Ul9SeMayWg==
Date: Tue, 14 Jun 2016 12:08:26 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A01FB0CBE@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmUzMzkxZmUtN2Y1My00ZjdhLWJmODktMWRmMTFlMzY4NWQzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6Ikp6QTVJcEhHRFh3QVYxZ1poVWJTamRcL3BSK0U2XC9KN3Y0QzJoeE1salwvM2s9In0=
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Test Cycle Report for Yocto Project master branch
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
X-List-Received-Date: Tue, 14 Jun 2016 12:08:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A01FB0CBEfmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A01FB0CBEfmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

Here is the status for the test cycle of automated tests on master branch c=
ommit 6c5d7f1fb276cbe0a461ece6c8f0ca17a478fa8c

Summary :


-         Toaster - NameError when trying to search a table due Django, thi=
s one is blocking around 30% of the execution : 9749 [1]

-         Build Appliance : bitbake fails to build image this one is blocki=
ng 50% of the  execution of the component: 9758 [2]

-         Failed to extract rootfs by using runqemu-extract-sd: is blocking=
 around 11% of the execution of ADT in 2 ditros: 9761 [3]

-         Missing smart packages: 9754 duplicated of 9717 [4]

-         Failure with Git-Phyton 9742 duplicated of 9716 [5]

-         distrodata class don't work with python3: 9744 [6]

-         AUH: Make sure that works with python3: 9747 [7]

-         Parse logs failed: 9520 [8]

-         oe-selftest is not running test cases from meta-yocto-bsp: [9] 97=
67


[1]-  https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9749
[2] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9758
[3] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9761
[4] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9717
[5]-  https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9716
[6]- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9744
[7]- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9747
[8]-  https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9520
[9]- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9767


The full report can be found here: https://wiki.yoctoproject.org/wiki/WW24_=
-_2016-06-07_-_Automated_Tests_-_Master

Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A01FB0CBEfmsmsx101amrcor_
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
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1519352809;
	mso-list-type:hybrid;
	mso-list-template-ids:-2012813382 -1938265310 67698691 67698693 67698689 6=
7698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:9.5pt;
	font-family:"Arial",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
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
<p class=3D"MsoNormal">Here is the status for the test cycle of automated t=
ests on master branch commit
<b>6c5d7f1fb276cbe0a461ece6c8f0ca17a478fa8c</b><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary :<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:9.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore">-<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]>Toaster - NameError when trying to search a =
table due Django, this one is blocking around 30% of the execution : 9749 [=
1]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:9.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore">-<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]>Build Appliance : bitbake fails to build ima=
ge this one is blocking 50% of the&nbsp; execution of the component: 9758 [=
2]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:9.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore">-<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]>Failed to extract rootfs by using runqemu-ex=
tract-sd: is blocking around 11% of the execution of ADT in 2 ditros: 9761 =
[3]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:9.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore">-<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]>Missing smart packages: 9754 duplicated of 9=
717 [4]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:9.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore">-<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]>Failure with Git-Phyton 9742 duplicated of 9=
716 [5]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:9.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore">-<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]>distrodata class don't work with python3: 97=
44 [6]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:9.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore">-<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]>AUH: Make sure that works with python3: 9747=
 [7]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:9.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore">-<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]>Parse logs failed: 9520 [8]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:9.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore">-<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]>oe-selftest is not running test cases from m=
eta-yocto-bsp: [9] 9767
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.25in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[1]- &nbsp;<a href=3D"https://bugzilla.yoctoproject.=
org/show_bug.cgi?id=3D9749">https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D9749</a> &nbsp;&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">[2] - <a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D9758">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9758</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[3] - <a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D9761">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9761</a><o:p></o:p></p>
<p class=3D"MsoNormal">[4] - <a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D9717">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9717</a> &nbsp;<o:p></o=
:p></p>
<p class=3D"MsoNormal">[5]- &nbsp;<a href=3D"https://bugzilla.yoctoproject.=
org/show_bug.cgi?id=3D9716">https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D9716</a> &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">[6]- <a href=3D"https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D9744">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9744</a> &nbsp;&nbsp;<o=
:p></o:p></p>
<p class=3D"MsoNormal">[7]- <a href=3D"https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D9747">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9747</a> &nbsp;<o:p></o=
:p></p>
<p class=3D"MsoNormal">[8]- &nbsp;<a href=3D"https://bugzilla.yoctoproject.=
org/show_bug.cgi?id=3D9520">https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D9520</a><o:p></o:p></p>
<p class=3D"MsoNormal">[9]- <a href=3D"https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D9767">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9767</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The full report can be found here<b>: https://wiki.y=
octoproject.org/wiki/WW24_-_2016-06-07_-_Automated_Tests_-_Master<o:p></o:p=
></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Jos=E9</b><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A01FB0CBEfmsmsx101amrcor_--
