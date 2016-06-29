Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7459BE00D86; Wed, 29 Jun 2016 13:58:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53EAAE00D79
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 13:58:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 29 Jun 2016 13:58:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,548,1459839600"; 
	d="scan'208,217";a="1007760782"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by orsmga002.jf.intel.com with ESMTP; 29 Jun 2016 13:58:15 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.196]) by
	FMSMSX103.amr.corp.intel.com ([169.254.2.253]) with mapi id
	14.03.0248.002; Wed, 29 Jun 2016 13:58:14 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA Test Report for Yocto Project 2.2 M1 rc2
Thread-Index: AdHSBWIfetLCpxp4SQWgKlOBTGv5sA==
Date: Wed, 29 Jun 2016 20:58:13 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A01FB4EA8@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTU3N2QyMTAtNWQyZi00ODVmLWJjNDktZGU4ZTAzZDQ1ZDU3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6Iktkbzl2YTlxY29WOEdvSWRyaHdjQ2hJd1pka3V0eEFyR01Qb0Y2UXVmTGc9In0=
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: QA Test Report for Yocto Project 2.2 M1 rc2
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
X-List-Received-Date: Wed, 29 Jun 2016 20:58:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A01FB4EA8fmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A01FB4EA8fmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All

Here is the status for the Full Test Cycle of Yocto Project 2.2 M1 rc2

Bugs Summary

**Bugs to highlight
               - WIC images fail to boot ( blocking 100% of WIC test suite =
) - 9824 {1]
               - For Toaster there is a total of 13 Bugs that are making fa=
il around 12 % of the test suite:
                              - 9833 [2], 9831 [3], 9832 [4],
                              - 9836 [5], 8952 [6], 9837 [7]
                              - 8556 [8], 8037 [9[, 9839 [10]
                              - 9841,[11] 9842 [12], 9844 [13], 9846 [14]

-        We have 4 issues making fail about 30 % of Eclipse plugin test sui=
te
               - Failed to run and debug a project to qemux86 in Eclipse: 9=
362 [15]
                              - perf fails on eclipse, sending a weird comm=
and remotely to qemu: 9838 [16]
                              - Bitbake Commander: populate button not work=
ing when creating new recipe: 9840 [17]
                              - OprofileUI needs to be updated to reflect n=
ew oprofile functionality: 7054  [18]

** M+ Non blocker Bugs

-        boot and install from USB failed getting [sdc] error message : 965=
2 [19]

-        Failed to build nativesdk-glibc for qemumips and qemumips64 on Fed=
ora 23 i686 : 9287 [20]

-        Failed to build gobject-introspection for qemumips64 on i686 hosts=
: 9285 [21]


** Other Bugs

-        https://wiki.yoctoproject.org/wiki/WW26_-_2016-06-21_-_Full_Test_C=
ycle_2.2_M1.rc2#Other_Bugs_found_during_QA_Test


Other Important comments :

-        In this milestone was added a the first draft of test run for eSDK=
 [22]

-        There are still  many Open Bugs - Medium+/High for 2.2 M1 [23]


Full Report : https://wiki.yoctoproject.org/wiki/WW26_-_2016-06-21_-_Full_T=
est_Cycle_2.2_M1.rc2


Links :
[1] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9824
[2] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9833
[3] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9831
[5] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9832
[6] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9836
[7] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8952
[8] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9837
[9] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8556
[10] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9839
[11] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9841
[12] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9842
[13] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9844
[14] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9846
[15] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9362
[16] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9838
[17] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9840
[18] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054
[19] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9652
[20] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9287
[21] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9285

[22] - https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D6089
[23] - https://wiki.yoctoproject.org/wiki/WW26_-_2016-06-21_-_Full_Test_Cyc=
le_2.2_M1.rc2#Current_community_Open_Bugs_-_Medium.2B.2FHigh

Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A01FB4EA8fmsmsx101amrcor_
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
	{mso-list-id:1494682262;
	mso-list-type:hybrid;
	mso-list-template-ids:-1080116036 2097212212 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
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
	{mso-list-id:1848976333;
	mso-list-type:hybrid;
	mso-list-template-ids:-1518587098 -1618816580 67698691 67698693 67698689 6=
7698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:9362;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
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
@list l2
	{mso-list-id:2059545801;
	mso-list-type:hybrid;
	mso-list-template-ids:-1152883598 939276014 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3
	{mso-list-id:2129667035;
	mso-list-type:hybrid;
	mso-list-template-ids:-704321894 -1947150538 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l3:level1
	{mso-level-start-at:9362;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:58.8pt;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:94.8pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:130.8pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:166.8pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:202.8pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:238.8pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:274.8pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:310.8pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:346.8pt;
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
<p class=3D"MsoNormal">Hi All <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the status for the Full Test Cycle of Yocto =
Project 2.2 M1 rc2
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Bugs Summary <o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">**Bugs to highlight <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - WIC images fail to boot ( blocking 100% =
of WIC test suite ) &#8211; 9824 {1]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - For Toaster there is a total of 13 Bugs =
that are making fail around 12 % of the test suite:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 9833 [2], 9831 [3], 9832 =
[4],
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 9836 [5], 8952 [6], 9837 =
[7]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 8556 [8], 8037 [9[, 9839 =
[10]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 9841,[11] 9842 [12], 9844=
 [13], 9846 [14]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>We have 4 issues making fail about 30 % of Eclipse =
plugin test suite
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Failed to run=
 and debug a project to qemux86 in Eclipse: 9362 [15]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - perf fails on eclipse, se=
nding a weird command remotely to qemu: 9838 [16]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Bitbake Commander: popula=
te button not working when creating new recipe: 9840 [17]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - OprofileUI needs to be up=
dated to reflect new oprofile functionality: 7054&nbsp; [18]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in"><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">** M&#43; Non blocker Bugs <o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>boot and install from USB failed getting [sdc] erro=
r message : 9652 [19]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Failed to build nativesdk-glibc for qemumips and qe=
mumips64 on Fedora 23 i686 : 9287 [20]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Failed to build gobject-introspection for qemumips6=
4 on i686 hosts: 9285 [21]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">** Other Bugs<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]><a href=3D"https://wiki.yoctoproject.org/wiki/WW26_=
-_2016-06-21_-_Full_Test_Cycle_2.2_M1.rc2#Other_Bugs_found_during_QA_Test">=
https://wiki.yoctoproject.org/wiki/WW26_-_2016-06-21_-_Full_Test_Cycle_2.2_=
M1.rc2#Other_Bugs_found_during_QA_Test</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b>Other Important comments :<o:p></o:p></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>In this milestone was added a the first draft of te=
st run for eSDK [22]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>There are still &nbsp;many Open Bugs - Medium&#43;/=
High for 2.2 M1 [23]<o:p></o:p></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b>Full Report : <a href=3D"https://wiki.yoctoprojec=
t.org/wiki/WW26_-_2016-06-21_-_Full_Test_Cycle_2.2_M1.rc2">
https://wiki.yoctoproject.org/wiki/WW26_-_2016-06-21_-_Full_Test_Cycle_2.2_=
M1.rc2</a>
<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Links :<o:p></o:p></b></p>
<p class=3D"MsoNormal">[1] - <a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D9824">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9824</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[2] - <a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D9833">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9833</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[3] - <a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D9831">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9831</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[5] - <a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D9832">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9832</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[6] - <a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D9836">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9836</a> &nbsp;<o:p></o=
:p></p>
<p class=3D"MsoNormal">[7] - <a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D8952">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8952</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[8] - <a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D9837">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9837</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[9] - <a href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D8556">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8556</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[10] - <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D9839">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9839</a> &nbsp;<o:p></o=
:p></p>
<p class=3D"MsoNormal">[11] - <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D9841">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9841</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[12] - <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D9842">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9842</a> &nbsp;&nbsp;<o=
:p></o:p></p>
<p class=3D"MsoNormal">[13] - <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D9844">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9844</a><o:p></o:p></p>
<p class=3D"MsoNormal">[14] - <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D9846">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9846</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[15] - <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D9362">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9362</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[16] - <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D9838">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9838</a> &nbsp;<o:p></o=
:p></p>
<p class=3D"MsoNormal">[17] - <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D9840">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9840</a> &nbsp;<o:p></o=
:p></p>
<p class=3D"MsoNormal">[18] - <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D7054">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7054</a> &nbsp;<o:p></o=
:p></p>
<p class=3D"MsoNormal">[19] - <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D9652">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9652</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[20] - <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D9287">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9287</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">[21] - <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D9285">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9285</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[22] - <a href=3D"https://bugzilla.yoctoproject.org/=
tr_show_run.cgi?run_id=3D6089">
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D6089</a> <o:p></=
o:p></p>
<p class=3D"MsoNormal">[23] - <a href=3D"https://wiki.yoctoproject.org/wiki=
/WW26_-_2016-06-21_-_Full_Test_Cycle_2.2_M1.rc2#Current_community_Open_Bugs=
_-_Medium.2B.2FHigh">
https://wiki.yoctoproject.org/wiki/WW26_-_2016-06-21_-_Full_Test_Cycle_2.2_=
M1.rc2#Current_community_Open_Bugs_-_Medium.2B.2FHigh</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Jos=E9</b><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A01FB4EA8fmsmsx101amrcor_--
