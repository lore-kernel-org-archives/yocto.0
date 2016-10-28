Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B49F4E00C4B; Fri, 28 Oct 2016 10:31:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 401B8E00C20
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 10:31:04 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 28 Oct 2016 10:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,411,1473145200"; 
	d="scan'208,217";a="895173845"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by orsmga003.jf.intel.com with ESMTP; 28 Oct 2016 10:31:03 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
	fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 28 Oct 2016 10:31:03 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.28]) by
	fmsmsx122.amr.corp.intel.com ([169.254.5.129]) with mapi id
	14.03.0248.002; Fri, 28 Oct 2016 10:31:03 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>
Thread-Topic: QA Test Report for Yocto Project  2.2 rc6
Thread-Index: AdIxIYLeP//JJbIATNusLQyJX78t+Q==
Date: Fri, 28 Oct 2016 17:31:02 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A0204776E@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDYyMTZlY2QtNzg0Ni00NjUyLWFmYjgtNGJkNzRhNWZmZDMyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6InlhWHhKTmk4ZUVaa3RxZUp4YmZLUlc3blVqR2ltdkthWE1wWGNwZTNTaTQ9In0=
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Cc: "Avery, Brian" <brian.avery@intel.com>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: QA Test Report for Yocto Project 2.2 rc6
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
X-List-Received-Date: Fri, 28 Oct 2016 17:31:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A0204776Efmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A0204776Efmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

Here is the report for Partial QA Cycle on 2.2 rc6

Full Report :  https://wiki.yoctoproject.org/wiki/WW44_-_2016-10-26_-_Full_=
Test_Cycle_2.2_rc6

Summary

Only a subset of components related to kernel and build appliance were test=
ed on this cycle.  We found  3 new bugs found, 1 introduced after build app=
liance fix , another one for qemu and one more for parselogs, in general th=
e fix for "Dirty COW" seems not affecting the functionality validated on co=
mponents related to the kernel. Performance shows a little improvements on =
measurements for  "core-image-sato" and "rm-work" . pTest results were exac=
tly the same of previous test cycle for 2.2 rc4. Regarding to bug 10447 [1]=
 test were applied on "morty" and "master" branches and the error still app=
ears so the bug was reopened.

Bugs

           *New bugs found

-        10514           test_parselogs on genericx86-lsb minnow board max =
32 FAILED LOGIN (1) on '/dev/tty1' FOR 'UNKNOWN', Authentication failure [2=
]

-        10504           [Build Appliance] The default user builder can not=
 login [3]

-        10519           Can not run multiple QEMU machines under UNFS [4]

           *Not New High and M+
-      10456           X can not launch on qemumips64 [5]
-      10434           runqemu can not launch qemu image in Build Appliance=
 [6]
-      10447           eSDK: runqemu fails unless unless DEPLOY_DIR_IMAGE i=
s set [7]
-      10477           yocto-bsp: tool should output a conf file to be cons=
ume by the qemu runner [8]

            *Not New Medium Low
-     10494            [Test Case 1059] Parselogs is failing on genericx86-=
64-WIC on NUC giving error: Failed to load DMC firmware [9]
                              -     10455            [Test Case 1059] Parse=
logs is failing on genericx86 (32 and 64 bits) giving error: blk_update_req=
uest: I/O error, dev loop0 [10]
-     10481            [Test Case 1059] Parselogs is failing on genericx86 =
(32 and 64 bits) WIC giving error: GPT: Use GNU Parted to correct GPT error=
s. [11]
-     10025            Missing 'Connection Manager' icon for qemumips and q=
emumips64 [12]
Performance


-        Core-image-sato has an improvement of around 6% (2 minutes) on Ubu=
ntu machine, Fedora remains on the average ranges

-        rm-work has an improvement of around 5% (1 minute) on both Ubuntu =
and Fedora

-        Full performance charts [13]

Links

1. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10447
2. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10514
3. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10504
4. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10519
5. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10456
6. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10434
7. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10447
8. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477
9. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10494
10. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10455
11. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10481
12. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10025
13. https://wiki.yoctoproject.org/wiki/WW44_-_2016-10-26_-_Full_Test_Cycle_=
2.2_rc6#Build_Performance_Test


Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A0204776Efmsmsx101amrcor_
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
	{mso-list-id:1280450867;
	mso-list-type:hybrid;
	mso-list-template-ids:606876142 1082427874 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:2016;
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
	{mso-list-id:1738092786;
	mso-list-type:hybrid;
	mso-list-template-ids:1992227196 1216930890 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
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
<p class=3D"MsoNormal">Here is the report for Partial QA Cycle on 2.2 rc6<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Report : &nbsp;<a href=3D"https://wiki.yoctopro=
ject.org/wiki/WW44_-_2016-10-26_-_Full_Test_Cycle_2.2_rc6">https://wiki.yoc=
toproject.org/wiki/WW44_-_2016-10-26_-_Full_Test_Cycle_2.2_rc6</a>
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Summary <o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Only a subset of componen=
ts related to kernel and build appliance were tested on this cycle. &nbsp;W=
e found &nbsp;3 new bugs found, 1 introduced after build appliance fix , an=
other one for qemu and one more for parselogs,
 in general the fix for &#8220;Dirty COW&#8221; seems not affecting the fun=
ctionality validated on components related to the kernel. Performance shows=
 a little improvements on measurements for &nbsp;&#8220;core-image-sato&#82=
21; and &#8220;rm-work&#8221; . pTest results were exactly the same of prev=
ious
 test cycle for 2.2 rc4. Regarding to bug 10447 [1] test were applied on &#=
8220;morty&#8221; and &#8220;master&#8221; branches and the error still app=
ears so the bug was reopened.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Bugs <o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;*</b>New bugs found <o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>10514&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; test_parselogs on genericx86-lsb minnow board max 32 FAILED =
LOGIN (1) on '/dev/tty1' FOR 'UNKNOWN', Authentication failure [2]<o:p></o:=
p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>10504&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; [Build Appliance] The default user builder can not login [3]=
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>10519&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Can not run multiple QEMU machines under UNFS [4]<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; *</b>Not New High and M&#43;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in">-&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; 10456&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; X can not launch on qemumips64 [5]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in">-&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; 10434&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; runqemu can not launch qemu image in Build Appliance [6]<o:p=
></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in">-&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; 10447&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; eSDK: runqemu fails unless unless DEPLOY_DIR_IMAGE is set [7=
]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in">-&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; 10477&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; yocto-bsp: tool should output a conf file to be consume by t=
he qemu runner [8]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><o:p>&nb=
sp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; *Not New Medium Low<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in">-&nbsp;&=
nbsp;&nbsp;&nbsp; 10494&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; [Test Case 1059] Parselogs is failing on genericx86-64-WIC o=
n NUC giving error: Failed to load DMC firmware [9]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp; 10455&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Test Cas=
e 1059] Parselogs is failing on genericx86 (32 and 64 bits) giving error: b=
lk_update_request: I/O error, dev loop0 [10]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in">-&nbsp;&=
nbsp;&nbsp;&nbsp; 10481&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; [Test Case 1059] Parselogs is failing on genericx86 (32 and =
64 bits) WIC giving error: GPT: Use GNU Parted to correct GPT errors. [11]<=
o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in">-&nbsp;&=
nbsp;&nbsp;&nbsp; 10025&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Missing 'Connection Manager' icon for qemumips and qemumips6=
4 [12]<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Performance<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Core-image-sato has an improvement of around 6% (2 =
minutes) on Ubuntu machine, Fedora remains on the average ranges<o:p></o:p>=
</p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>rm-work has an improvement of around 5% (1 minute) =
on both Ubuntu and Fedora
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Full performance charts [13]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Links<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1. <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D10447">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10<span lang=3D"ES">44<=
/span>7</a>
<o:p></o:p></p>
<p class=3D"MsoNormal">2. <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D10514">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10514</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">3. <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D10504">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10504</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">4. <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D10519">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10519</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">5. <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D10456">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10456</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">6. <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D10434">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10434</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">7. <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D10447">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10447</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">8. <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D10477">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">9. <a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D10494">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10494</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">10. <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10455">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10455</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">11. <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10481">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10481</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">12. <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10025">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10025</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">13. <a href=3D"https://wiki.yoctoproject.org/wiki/WW=
44_-_2016-10-26_-_Full_Test_Cycle_2.2_rc6#Build_Performance_Test">
https://wiki.yoctoproject.org/wiki/WW44_-_2016-10-26_-_Full_Test_Cycle_2.2_=
rc6#Build_Performance_Test</a>
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

--_000_0A5D9A624DF90343892F8F3FE7DE525A0204776Efmsmsx101amrcor_--
