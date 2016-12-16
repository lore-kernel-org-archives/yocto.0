Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B295E00E08; Fri, 16 Dec 2016 13:09:50 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F12BE00D98
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 13:09:47 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 16 Dec 2016 13:09:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,359,1477983600"; 
	d="scan'208,217";a="913046669"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
	by orsmga003.jf.intel.com with ESMTP; 16 Dec 2016 13:09:46 -0800
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
	FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 16 Dec 2016 13:09:45 -0800
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.55]) by
	FMSMSX126.amr.corp.intel.com ([169.254.1.42]) with mapi id
	14.03.0248.002; Fri, 16 Dec 2016 13:09:45 -0800
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: QA Test Report for Yocto Project  2.0.3 rc6
Thread-Index: AdJXzP2+6j9n1VnXQRShZWvk8N3X1w==
Date: Fri, 16 Dec 2016 21:09:44 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A0208139E@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGM2YTI0MDEtZmZlYS00NzBlLWJkZDItNzdhZTUwMzY5MzcyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6ImVvMmFKVFwvNVwvTEFNOWR2R3A1cjNaSnJIVWdyZ3BVRHBwREw4VmJxQ0Vjbz0ifQ==
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "Lock, Joshua G" <joshua.g.lock@intel.com>,
	"iezhi.yang@windriver.com" <iezhi.yang@windriver.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>
Subject: QA Test Report for Yocto Project 2.0.3 rc6
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
X-List-Received-Date: Fri, 16 Dec 2016 21:09:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A0208139Efmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A0208139Efmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

Here is the report for QA Cycle on 2.0.3 rc6

Full Report :  https://wiki.yoctoproject.org/wiki/WW50_-_2016-12-09_-_QA_Cy=
cle_2.0.3.rc6

Summary

The QA cycle for 2.0.3 rc6 was completed, there were 4 new bugs found, One =
important issue related to ADT repo missing that was already triaged and th=
e fix is under implementation, another issue that is not blocker related to=
 parselogs that was already triaged and the solution is ongoing, two of the=
 issues found were closed as won't fix due current NUC6  used to test is un=
supported on versions before krogoth. There were also 4 bugs already found =
on newer releases that fix may be backported to jethro branch. In regards t=
o performance measurements, is the first time that jethro branch is tested =
at GDC machines hence there is no previous data to compare with but in gene=
ral all the values are in the same levels of the first measurements availab=
le for GDC machines that belongs to 2.1 M4 release.

Bugs

      * New
               - 10786 - Missing adt repo for 2.0.3 build [1]
             - 10791   - failed to add i915 component master [2]
             - 10808   - [Test Case 191] LSB Image does not boot on NUC6i5 =
[3] - WONTFIX
             - 10809   - usb 1-1.2: device descriptor read/all, error -110 =
[4] - WONTFIX

      * Found on newer releases that may need to be backported
- 7897  -  Dmesg error BAR 14 and BAR 15 failed to assign in Minnow Max [5]
               - 9120  -  The patch file is not applied to linux-yocto by y=
octo-kernel add patch command [6]
               - 9656  -  NFS boot failed due No working init found kernel =
panic on qemu [7]
               - 10281 -  Configuration variables: I can set a value for st=
andard shell environment variable http_proxy          [8]

Performance

-        The is the first time that jethro branch was executed on GDC machi=
nes hence there is no previous data to compare, but compared to the first m=
easurements present for current setup (2.1 M4) all the values are on the sa=
me levels

-        Charts can be found at  https://wiki.yoctoproject.org/charts/perf_=
milestone_GDC/performance_test.html

Links

1.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10786

2.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10791

3.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10808

4.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10809

5.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7897

6.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9120

7.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9656

8.      https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10281



Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A0208139Efmsmsx101amrcor_
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
	{mso-list-id:1213929943;
	mso-list-type:hybrid;
	mso-list-template-ids:-2091595596 1263574652 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:30.0pt;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";
	mso-ansi-font-weight:bold;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:66.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:102.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:138.0pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:174.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:210.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:246.0pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:282.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:318.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1369455589;
	mso-list-type:hybrid;
	mso-list-template-ids:1903730698 817924252 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:*;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:34.8pt;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:70.8pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:106.8pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:142.8pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:178.8pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:214.8pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:250.8pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:286.8pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:322.8pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2
	{mso-list-id:1482312105;
	mso-list-type:hybrid;
	mso-list-template-ids:-753345262 -109264226 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-start-at:654;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3
	{mso-list-id:1643846319;
	mso-list-type:hybrid;
	mso-list-template-ids:2137834148 948454008 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:30.0pt;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:66.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:102.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:138.0pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:174.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:210.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:246.0pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:282.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:318.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l4
	{mso-list-id:1718354992;
	mso-list-type:hybrid;
	mso-list-template-ids:202541968 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l4:level1
	{mso-level-tab-stop:none;
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
<p class=3D"MsoNormal">Here is the report for QA Cycle on 2.0.3 rc6<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Report :&nbsp; <a href=3D"https://wiki.yoctopro=
ject.org/wiki/WW50_-_2016-12-09_-_QA_Cycle_2.0.3.rc6">
https://wiki.yoctoproject.org/wiki/WW50_-_2016-12-09_-_QA_Cycle_2.0.3.rc6</=
a> <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Summary <o:p></o=
:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">The QA cycle for 2.0.3 rc=
6 was completed, there were 4 new bugs found, One important issue related t=
o ADT repo missing that was already triaged and the fix is under implementa=
tion, another issue that is not blocker
 related to parselogs that was already triaged and the solution is ongoing,=
 two of the issues found were closed as won&#8217;t fix due current NUC6 &n=
bsp;used to test is unsupported on versions before krogoth. There were also=
 4 bugs already found on newer releases that
 fix may be backported to jethro branch. In regards to performance measurem=
ents, is the first time that jethro branch is tested at GDC machines hence =
there is no previous data to compare with but in general all the values are=
 in the same levels of the first
 measurements available for GDC machines that belongs to 2.1 M4 release. <o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Bugs <o:p></o:p>=
</span></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * New<o:p></o:p></=
b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>- 10786 - Missing adt repo for 2.0.=
3 build [1]
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;- 10791&nbsp;&nbsp; - failed to add i915 componen=
t master [2]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;- 10808&nbsp;&nbsp; - [Test Case 191] LSB Image does n=
ot boot on NUC6i5 [3] - WONTFIX<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;- 10809&nbsp;&nbsp; - usb 1-1.2: device descriptor rea=
d/all, error -110 [4] - WONTFIX<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Found on newer r=
eleases that may need to be backported</b>
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- 7897&nbsp; -&nbsp; Dmes=
g error BAR 14 and BAR 15 failed to assign in Minnow Max [5]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; - 9120&nbsp; -&nbsp; The patch file is not appl=
ied to linux-yocto by yocto-kernel add patch command [6]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; - 9656&nbsp; -&nbsp; NFS boot failed due No wor=
king init found kernel panic on qemu [7]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; - 10281 -&nbsp; Configuration variables: I can =
set a value for standard shell environment variable http_proxy&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [8]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Performance</spa=
n></b> <o:p>
</o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l2 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>The is the first time that jethro branch was execut=
ed on GDC machines hence there is no previous data to compare, but compared=
 to the first measurements present for current setup (2.1 M4) all the value=
s are on the same levels<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l2 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Charts can be found at &nbsp;<a href=3D"https://wik=
i.yoctoproject.org/charts/perf_milestone_GDC/performance_test.html">https:/=
/wiki.yoctoproject.org/charts/perf_milestone_GDC/performance_test.html</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Links<o:p></o:p>=
</span></b></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10786">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1078=
6</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10791">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1079=
1</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">3.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10808">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1080=
8</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">4.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10809">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1080=
9</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">5.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D7897">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7897<=
/a> &nbsp;&nbsp;&nbsp;<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">6.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D9120">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9120<=
/a> &nbsp;&nbsp;&nbsp;<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">7.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D9656">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9656<=
/a> &nbsp;&nbsp;<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l4 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">8.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10281">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1028=
1</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"ES-MX">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"ES-MX">Jos=E9</span></b><b><span la=
ng=3D"ES-MX" style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p>=
</span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A0208139Efmsmsx101amrcor_--
