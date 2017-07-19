Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0817E00BBF; Wed, 19 Jul 2017 14:58:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 184CFE00B3D
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 14:58:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP; 19 Jul 2017 14:58:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,381,1496127600"; 
	d="scan'208,217";a="1153218712"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by orsmga001.jf.intel.com with ESMTP; 19 Jul 2017 14:58:06 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Wed, 19 Jul 2017 14:58:05 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.4]) by
	FMSMSX153.amr.corp.intel.com ([169.254.9.113]) with mapi id
	14.03.0319.002; Wed, 19 Jul 2017 14:58:05 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>
Thread-Topic: QA cycle report for 2.3.1 rc2
Thread-Index: AdMAnN7A3atyBoOKQ9+TofCvS54OZg==
Date: Wed, 19 Jul 2017 21:58:05 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC531EC860D@fmsmsx107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzA0ZTM2YjMtZTI1ZC00ZjY4LTlmMTQtMzIwMmU5YWVhMGU4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6InFVN2ZEN0dNM3dVelZubmtRZ3lIc3lRcmx3cm03Q000bllIMUtOaytZODg9In0=
x-ctpclassification: CTP_IC
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Cc: "Lock, Joshua G" <joshua.g.lock@intel.com>, "Cruz Alcaraz,
	Juan M" <juan.m.cruz.alcaraz@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: QA cycle report for 2.3.1 rc2
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
X-List-Received-Date: Wed, 19 Jul 2017 21:58:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_58D9E2E50A021A45AD740492365FCDC531EC860Dfmsmsx107amrcor_"

--_000_58D9E2E50A021A45AD740492365FCDC531EC860Dfmsmsx107amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,



Here is the report for the 2.3.1 rc2 full point release test cycle.

Full Report : https://wiki.yoctoproject.org/wiki/WW29_-_2017-07-18-_Full_Te=
st_Cycle_-_2.3.1_rc2#Testing_data



=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.3.1 rc2 is complete, no blockers. 10832 [3] was =
reopened after issue reappeared when trying to install eSDK. Only one new b=
ug about tcf-agent daemon not being able to be stopped. [1]



There was a 8.05% regression on building rootfs in Fedora 23. The performan=
ce test results for Ubuntu 15 are misleading because there is a problem wit=
h the machine running the OS, this is currently being investigated by the Q=
A team.



For ptest there was an improvement of the pass rate for gdk-pixbuf of 5% an=
 improvement of 1.30% of valgrind. On the other side there was a regression=
 on the pass rate of libxml2 of 1.20% [5], on openssh of 2.9%[6] and on bus=
ybox of 0.20%[4].



QA-Hint: QA sees no mayor issues, blockers on this point release. Current b=
ugs don't block full functionalities, on any component.



       New Bugs
            -11795     [Yocto 2.3.1] Can not stop tcf-agent daemon [1]
            -11811 - ptest-busybox
            -11812 - ptest- libxml2 cases failed
            -11813 - ptest- openssh

      * M+ bugs
            - 10477 yocto-bsp: tool should output a conf file to be consume=
 by the qemu runner [2]

            - 10832  eSDK install script failed with "tasks executed unexpe=
ctedly" messages [3]





Full Bug Report : https://wiki.yoctoproject.org/wiki/WW29_-_2017-07-18-_Ful=
l_Test_Cycle_-_2.3.1_rc2#Bugs_Found_during_QA_Test





=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D



    1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11795 <https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11795%20> [1]

    2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477 <https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477%20> [2]

    3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10832 <https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D10832%20> [3]

    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11811 <https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11811%20> [4]

    5.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11812 <https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11812%20> [5]

    6.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11813 [6]











Regards

Libertad G.


--_000_58D9E2E50A021A45AD740492365FCDC531EC860Dfmsmsx107amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Calibri Light";
	panose-1:2 15 3 2 2 2 4 3 2 4;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
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
	{mso-list-id:409936447;
	mso-list-type:hybrid;
	mso-list-template-ids:2121806452 -607866720 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:45.0pt;
	text-indent:-.25in;
	font-family:"Calibri Light",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:81.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:117.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:153.0pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:189.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:225.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:261.0pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:297.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:333.0pt;
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
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Hello All,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Here is the report for the 2.3.1 rc2 full point release tes=
t cycle.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Full Report :
</span><a href=3D"https://wiki.yoctoproject.org/wiki/WW29_-_2017-07-18-_Ful=
l_Test_Cycle_-_2.3.1_rc2#Testing_data"><span style=3D"font-family:&quot;Cal=
ibri Light&quot;,sans-serif">https://wiki.yoctoproject.org/wiki/WW29_-_2017=
-07-18-_Full_Test_Cycle_-_2.3.1_rc2#Testing_data</span></a><span style=3D"f=
ont-family:&quot;Calibri Light&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">The QA cycle for release 2.3.1 rc2 is complete, no blockers=
. 10832 [3] was reopened after issue reappeared when trying to install eSDK=
. Only one new bug about tcf-agent daemon not
 being able to be stopped. [1]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">There was a 8.05% regression on building rootfs in Fedora 2=
3. The performance test results for Ubuntu 15 are misleading because there =
is a problem with the machine running the OS,
 this is currently being investigated by the QA team.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">For ptest there was an improvement of the pass rate for gdk=
-pixbuf of 5% an improvement of 1.30% of valgrind. On the other side there =
was a regression on the pass rate of libxml2 of
 1.20% [5], on openssh of 2.9%[6] and on busybox of 0.20%[4].<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">QA-Hint: QA sees no mayor issues, blockers on this point re=
lease. Current bugs don&#8217;t block full functionalities, on any componen=
t.
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Bugs<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-11795 &nbsp;=
&nbsp;&nbsp; [Yocto 2.3.1] Can not stop tcf-agent daemon [1]<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-11811 - ptes=
t-busybox
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-11812 - ptes=
t- libxml2 cases failed
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-11813 - ptes=
t- openssh
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; * M&#43; bugs<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 10477 yocto-bsp:=
 tool should output a conf file to be consume by the qemu runner [2]<o:p></=
o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; - 10832&nbsp; eSDK install script failed with &quot;tasks executed =
unexpectedly&quot; messages [3]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Full Bug Report :
<a href=3D"https://wiki.yoctoproject.org/wiki/WW29_-_2017-07-18-_Full_Test_=
Cycle_-_2.3.1_rc2#Bugs_Found_during_QA_Test">
https://wiki.yoctoproject.org/wiki/WW29_-_2017-07-18-_Full_Test_Cycle_-_2.3=
.1_rc2#Bugs_Found_during_QA_Test</a><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D<=
o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 1.&nbsp;&nbsp;&nbsp;
</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11795=
%20"><span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11795
</span></a><span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif"=
>[1]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 2.&nbsp;&nbsp;&nbsp;
</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477=
%20"><span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477
</span></a><span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif"=
>[2]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 3.&nbsp;&nbsp;&nbsp;
</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10832=
%20"><span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10832
</span></a><span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif"=
>[3]<span style=3D"color:#1F497D"><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 4.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11811%20">ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11811
</a>[4]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 5.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11812%20">ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11812
</a>[5]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 6.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11813">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11813</a> [6]<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Regards<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Libertad G.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_58D9E2E50A021A45AD740492365FCDC531EC860Dfmsmsx107amrcor_--
