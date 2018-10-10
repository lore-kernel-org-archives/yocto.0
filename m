Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52961E00994; Tue,  9 Oct 2018 18:46:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B6D0E00971
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2018 18:46:45 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Oct 2018 18:46:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,362,1534834800"; 
	d="scan'208,217";a="269974151"
Received: from kmsmsx151.gar.corp.intel.com ([172.21.73.86])
	by fmsmga005.fm.intel.com with ESMTP; 09 Oct 2018 18:35:34 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.248]) by
	KMSMSX151.gar.corp.intel.com ([169.254.10.74]) with mapi id
	14.03.0319.002; Wed, 10 Oct 2018 09:35:32 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"Graydon, Tracy" <tracy.graydon@intel.com>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>
Thread-Topic: QA cycle report for 2.6 M3 RC1
Thread-Index: AdRgOYbYRIE8mqhWSdSYDWOrET+WYQ==
Date: Wed, 10 Oct 2018 01:35:32 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634CBBC72@PGSMSX110.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTk0YjQxZGYtYWRiNC00OTM5LWI5MWItNzEzYmY2YTMxMGVhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVG5HYm9JaFlWcGowWlUzZjVPdE95b1dWaitlNEJXeWZUZDYwclwvYURUQXFrbU1MbHpyeDdjWFlmbGsxajNWTVYifQ==
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: QA cycle report for 2.6 M3 RC1
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
X-List-Received-Date: Wed, 10 Oct 2018 01:46:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_015AB11D45F2C442929CB2765DAE738634CBBC72PGSMSX110garcor_"

--_000_015AB11D45F2C442929CB2765DAE738634CBBC72PGSMSX110garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,



This is the full report for 2.6 M3 RC1:

https://wiki.yoctoproject.org/wiki/WW41_-_2018-10-03_-_Full_Test_Cycle_2.6_=
M3_RC1





Summary



All planned tests were executed.



Total Test Executed - 3358

Passed Test - 3332

Failed Test - 20

Blocked Test - 6



There were zero high priority defect.  Team had found 5 new defects. ptest =
for 8 modules failed in current release but passed in previous 2.6 M1 rc1. =
 Present status of bugs for respective modules is as  follows:



ModuleName  -  BugId  -  Present Status



e2fsprogs        - 12946     - Accepted, in discussion

gdbm              - 12954     - New

glib-2.0              - 12851     - Won't fix

pango                - 12947     - Fixed

perl                    - 12787      - Accepted for previous release; Failu=
res observed in current release also

python              - 12788     - Fixed

strace               - 12948     - New

valgrind           - 12837      - New (Bug is open since 2.6 M1)



Performance test :  rootfs performance on ubuntu1604 degraded by  11.05% in=
 2.6 M3 RC1 w.r.t. 2.6 M2 RC1



QA-Hints



Team has observed in ptest report,  it is showing that "openssl" is not exe=
cuted for current release.

But while analyzing ptest logs, following is mentioned in summary for opens=
sl:

Test Summary Report

-------------------

../test/recipes/01-test_symbol_presence.t        (Wstat: 512 Tests: 4 Faile=
d: 2)

  Failed tests:  2, 4

  Non-zero exit status: 2

Files=3D152, Tests=3D1360, 71 wallclock secs ( 1.41 usr  0.14 sys + 69.96 c=
usr 13.14 csys =3D 84.65 CPU)

Result: FAIL

END: /usr/lib/openssl/ptest





QA Team is investigating more to reach out the correct status and root caus=
e of openssl ptest failures.



New Bugs



[1] Bug 12950<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12950> - =
 [Yocto-2.6_M3.rc1] [MANUAL_SCRIPTS_OE-Core] [Case 2021] [Cross_tap]semanti=
c error: while resolving probe point: identifier 'syscall' at trace_open.st=
p

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12950



[2] Bug 12952<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12952> - =
[QA 2.6.M3 rc1 ][BSP/Mturbot] Not able to see login prompt when using seria=
l

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12952


[3] Bug 12946<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12946> - =
[2.6 M3 RC1] e2fsprogs ptest failed
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12946

[4] Bug 12954<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12954> - =
[2.6 M3 RC1] gdbm ptest failures
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12954

[5] Bug 12948<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12948> - =
[2.6 M3 RC1] strace ptest failed
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12948


Thanks & Regards,
Sangeeta Jain


--_000_015AB11D45F2C442929CB2765DAE738634CBBC72PGSMSX110garcor_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";
	mso-fareast-language:EN-MY;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle24
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle25
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle26
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle29
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:963269561;
	mso-list-type:hybrid;
	mso-list-template-ids:1068689962 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:973027202;
	mso-list-template-ids:1866107058;}
@list l1:level1
	{mso-level-start-at:2;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2
	{mso-list-id:1016536560;
	mso-list-template-ids:1867659804;}
@list l3
	{mso-list-id:1063718303;
	mso-list-template-ids:-1914686496;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4
	{mso-list-id:1092820311;
	mso-list-template-ids:-1642937296;}
@list l4:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5
	{mso-list-id:1964770521;
	mso-list-type:hybrid;
	mso-list-template-ids:2057981476 -1188900008 1141440515 1141440517 1141440=
513 1141440515 1141440517 1141440513 1141440515 1141440517;}
@list l5:level1
	{mso-level-start-at:2;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l5:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l5:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l5:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l5:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l5:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l5:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l5:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l5:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-MY" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Hello All,<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">This is the full report for 2.6 M3 RC1:&nbsp;
<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black"><a href=3D"https://wiki.yoctoproject.org/wiki/WW41_-_2018-10-=
03_-_Full_Test_Cycle_2.6_M3_RC1">https://wiki.yoctoproject.org/wiki/WW41_-_=
2018-10-03_-_Full_Test_Cycle_2.6_M3_RC1</a><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black">Summary<o:p></o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">All planned tests were executed.<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Total Test Executed &#8211; 3358<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Passed Test &#8211; 3332<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Failed Test &#8211; 20<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Blocked Test - 6<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif;color:black">There were z=
ero high priority defect.&nbsp; Team had found 5 new defects. ptest for </s=
pan><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;=
,serif">8 modules</span><span lang=3D"EN-US" style=3D"font-size:12.0pt;font=
-family:&quot;Times New Roman&quot;,serif;color:black"> failed in current r=
elease but passed in previous 2.6 M1 rc1.&nbsp;&nbsp;</span><span lang=3D"E=
N-US" style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,ser=
if">Present status of bugs for respective modules is as <span style=3D"colo=
r:black">&nbsp;</span>follows:<o:p></o:p></span></pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif"><o:p>&nbsp;</o:p></span>=
</pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif">ModuleName &nbsp;&#8211;=
 &nbsp;BugId &nbsp;&#8211; &nbsp;Present Status<o:p></o:p></span></pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif"><o:p>&nbsp;</o:p></span>=
</pre>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Times New Roman&quot;,serif;color:black">e2fsprogs &nbsp;&nbsp;&nbsp=
;&nbsp;</span><span style=3D"font-size:12.0pt;font-family:&quot;Times New R=
oman&quot;,serif"> <span style=3D"color:black">&nbsp;&nbsp;&#8211; 12946&nb=
sp;&nbsp;&nbsp; &nbsp;- Accepted, in discussion</span></span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,se=
rif"><o:p></o:p></span></pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif">gdbm &nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8211; 12954&nb=
sp;&nbsp;&nbsp; &nbsp;- New<o:p></o:p></span></pre>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">glib-2.0=
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&=
#8211; 12851&nbsp;&nbsp;&nbsp; &nbsp;- Won&#8217;t fix<span style=3D"color:=
black"><o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">pango &n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbs=
p;&nbsp;&#8211; 12947&nbsp;&nbsp;&nbsp; &nbsp;- Fixed<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">perl &nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&#8211; 12787&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;=
- Accepted for previous release; Failures observed in current release also<=
o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">python&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&#8=
211; 12788&nbsp;&nbsp;&nbsp; &nbsp;- Fixed<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">strace&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&#8211; 12948 &nbsp;&nbsp;&nbsp;&nbsp;- New<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">valgrind=
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&#8211; 12837 &nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;- New (Bug is open since 2.6 M1)<o:p></o:p></span>=
</p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">Performa=
nce test : &nbsp;rootfs performance on ubuntu1604 degraded by &nbsp;11.05% =
in 2.6 M3 RC1 w.r.t. 2.6 M2 RC1<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black">QA-Hints&nbsp;<o:p></o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black"><o:p>&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">Team has=
 observed in ptest report,&nbsp; it is showing that &#8220;openssl&#8221; i=
s not executed for current release.
<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">But whil=
e analyzing ptest logs, following is mentioned in summary for openssl:<o:p>=
</o:p></span></p>
<p style=3D"margin-left:4.8pt"><span lang=3D"EN-US">Test Summary Report<o:p=
></o:p></span></p>
<p style=3D"margin-left:4.8pt"><span lang=3D"EN-US">-------------------<o:p=
></o:p></span></p>
<p style=3D"margin-left:4.8pt"><span lang=3D"EN-US">../test/recipes/01-test=
_symbol_presence.t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Wstat: 512 Te=
sts: 4 Failed: 2)<o:p></o:p></span></p>
<p style=3D"margin-left:4.8pt"><span lang=3D"EN-US">&nbsp; Failed tests:&nb=
sp; 2, 4<o:p></o:p></span></p>
<p style=3D"margin-left:4.8pt"><span lang=3D"EN-US">&nbsp; Non-zero exit st=
atus: 2<o:p></o:p></span></p>
<p style=3D"margin-left:4.8pt"><span lang=3D"EN-US">Files=3D152, Tests=3D13=
60, 71 wallclock secs ( 1.41 usr&nbsp; 0.14 sys &#43; 69.96 cusr 13.14 csys=
 =3D 84.65 CPU)<o:p></o:p></span></p>
<p style=3D"margin-left:4.8pt"><span lang=3D"EN-US">Result: FAIL<o:p></o:p>=
</span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">END: /us=
r/lib/openssl/ptest<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">QA Team =
is investigating more to reach out the correct status and root cause of ope=
nssl ptest failures.<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black">New Bugs<o:p></o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black"><o:p>&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">[1]
</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12950=
"><span style=3D"color:#333333">Bug&nbsp;12950</span></a> -
<span style=3D"color:black">&nbsp;[Yocto-2.6_M3.rc1] [MANUAL_SCRIPTS_OE-Cor=
e] [Case 2021] [Cross_tap]semantic error: while resolving probe point: iden=
tifier 'syscall' at trace_open.stp</span><span lang=3D"EN-US" style=3D"colo=
r:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D12950">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12950</a><o:p=
></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">[2]
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12952"><span=
 style=3D"color:black;text-decoration:none">Bug&nbsp;12952</span></a>&nbsp;=
-&nbsp;[QA 2.6.M3 rc1 ][BSP/Mturbot] Not able to see login prompt when usin=
g serial<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span class=3D"MsoHyperlink">=
<span lang=3D"EN-US"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D12952">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12952</=
a></span><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"font-family:&quot;Verdana&quot;,sans-serif;color:black"><o:p>&nbsp;</o:=
p></span></b></p>
<p class=3D"MsoNormal">[3<span lang=3D"EN-US" style=3D"color:black">] <a hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12946">
<span style=3D"color:black;text-decoration:none">Bug&nbsp;12946</span></a>&=
nbsp;-&nbsp;[2.6 M3 RC1] e2fsprogs ptest failed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D12946">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12946=
</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[4] <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D12954">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;12954</span>=
</a>&nbsp;-&nbsp;[2.6 M3 RC1] gdbm ptest failures<b><span style=3D"font-siz=
e:12.0pt;font-family:&quot;Verdana&quot;,sans-serif;color:black">&nbsp;</sp=
an></b><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D12954">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12954=
</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[5] <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D12948">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;12948</span>=
</a>&nbsp;-&nbsp;[2.6 M3 RC1] strace ptest failed<b><span style=3D"font-siz=
e:12.0pt;font-family:&quot;Verdana&quot;,sans-serif;color:black">&nbsp;<o:p=
></o:p></span></b></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D12948">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12948=
</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks &amp; Regards,<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sangeeta Jain<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_015AB11D45F2C442929CB2765DAE738634CBBC72PGSMSX110garcor_--
