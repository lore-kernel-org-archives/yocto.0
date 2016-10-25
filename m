Return-Path: <david.a.cobbley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA8D3E007DA; Tue, 25 Oct 2016 12:56:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0569AE007A2
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 12:56:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP; 25 Oct 2016 12:56:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,399,1473145200"; 
	d="scan'208,217";a="1075630643"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by fmsmga002.fm.intel.com with ESMTP; 25 Oct 2016 12:56:10 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Tue, 25 Oct 2016 12:56:08 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.2.193]) by
	ORSMSX113.amr.corp.intel.com ([10.22.240.9]) with mapi id
	14.03.0248.002; Tue, 25 Oct 2016 12:56:08 -0700
From: "Cobbley, David A" <david.a.cobbley@intel.com>
To: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>
Thread-Topic: QA Test Report for Yocto Project  2.2 rc4
Thread-Index: AdIuvnyTEDllfOzeTa6sshRCE4z/vQAOybaA
Date: Tue, 25 Oct 2016 19:56:06 +0000
Message-ID: <A957C86E2C2AE04188058D06020CD9B7B61214EC@ORSMSX105.amr.corp.intel.com>
References: <0A5D9A624DF90343892F8F3FE7DE525A02045A61@fmsmsx101.amr.corp.intel.com>
In-Reply-To: <0A5D9A624DF90343892F8F3FE7DE525A02045A61@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWJjNmM3MDQtODE3ZC00MDZhLWJlN2MtMDZiNjk0ZmY4MjZlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IllVODNXWW44T1dyZWVWQW1idDgrajQ2YzVKUEtYVFdyRFNsVlNOVGh5ZGc9In0=
x-ctpclassification: CTP_IC
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 27 Oct 2016 07:58:00 -0700
Cc: "Avery, Brian" <brian.avery@intel.com>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: QA Test Report for Yocto Project 2.2 rc4
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
X-List-Received-Date: Tue, 25 Oct 2016 19:56:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A957C86E2C2AE04188058D06020CD9B7B61214ECORSMSX105amrcor_"

--_000_A957C86E2C2AE04188058D06020CD9B7B61214ECORSMSX105amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Jose,

This is a good report.  Seems that we are doing well in terms of closing ou=
t m+/high priority bugs without a lot of new ones appearing.

--David C

From: Perez Carranza, Jose
Sent: Tuesday, October 25, 2016 10:48 AM
To: yocto@yoctoproject.org; Jolley, Stephen K <stephen.k.jolley@intel.com>
Cc: Lock, Joshua G <joshua.g.lock@intel.com>; Wold, Saul <saul.wold@intel.c=
om>; Avery, Brian <brian.avery@intel.com>; Graydon, Tracy <tracy.graydon@in=
tel.com>; Richard Purdie <richard.purdie@linuxfoundation.org>; Cobbley, Dav=
id A <david.a.cobbley@intel.com>; Esquivel, Benjamin <benjamin.esquivel@int=
el.com>; Delgado, Sonia <sonia.delgado@intel.com>; Burton, Ross <ross.burto=
n@intel.com>; Eggleton, Paul <paul.eggleton@intel.com>; Zhang, Jessica <jes=
sica.zhang@intel.com>
Subject: QA Test Report for Yocto Project 2.2 rc4

Hi

Here is the report for QA Cycle on 2.2 rc4

Full Report :  https://wiki.yoctoproject.org/wiki/WW43_-_2016-10-18_-_Full_=
Test_Cycle_2.2_rc4

Summary

There were found 10 new bugs, 3 of them are already triaged as M+ 1 as Medi=
um and the rest are not yet triaged, no one of these bugs was a blocker for=
 QA cycle hence all components were fully executed, there are 12 bugs for p=
Test that were out of the focus in past milestones due some issues on repor=
ts, all of them are medium. New scripts of performance is giving correct da=
ta and this time the charts has a comparison between old and new script res=
ults , in general all the measurements on performance are stable. All high =
and M+ bugs found on previous QA cycle (M3 rc1) were verified, none of them=
 is present on current release.

Bugs

           *New bugs found
               10455 - [Test Case 1059] Parselogs is failing on MM32 giving=
 error: blk_update_request: I/O error, dev loop0 [1]
10456 - X can not launch on qemumips64 [2]
10481 - [Test Case 1059] Parselogs is failing on genericx86 (32 and 64 bits=
) WIC giving error: GPT: Use GNU Parted to correct GPT errors. [3]
10490 - Error on oeqa.runtime.rpm.RpmInstallRemoveTest when running testima=
ge [4]
10494 - [Test Case 1059] Parselogs is failing on genericx86-64-WIC on NUC g=
iving error: Failed to load DMC firmware [5]
10434 - runqemu can not launch qemu image in Build Appliance [6]
10447 - eSDK: runqemu fails unless unless DEPLOY_DIR_IMAGE is set [7]
10477 - yocto-bsp: tool should output a conf file to be consume by the qemu=
 runner [8]
10463 - [Test Case 910] "Recipe file" column isn't sortable [9]
10492 - [Test Case 1398] Build log cannot be downloaded [10]

Full List of bugs :  https://wiki.yoctoproject.org/wiki/WW43_-_2016-10-18_-=
_Full_Test_Cycle_2.2_rc4#New_and_notable_issues_Found_during_QA_Test_.26_Co=
mmunity

          *Old New High and M+

-          NA

         *Old Medium Low
            Full list of bugs: https://wiki.yoctoproject.org/wiki/WW43_-_20=
16-10-18_-_Full_Test_Cycle_2.2_rc4#Other_Bugs_found_during_QA_Test_.28NOT_N=
EW.29

          *pTest bugs
- These bugs were out of the focus due a issues with automatic report on pr=
evious milestones, there is a new table showing the failures and all the bu=
gs were commented with the results for this milestone.
- Full log of the execution is now loaded to the wiki along with the result=
s [11]

             Full list of bugs: https://wiki.yoctoproject.org/wiki/WW43_-_2=
016-10-18_-_Full_Test_Cycle_2.2_rc4#pTest_open_bugs


Performance

-          New script is now running on the machines and is giving correct =
a precise data.

-          After resolution of bug 10285 correct measurement were retrieved=
 for "core-image-sato -c rootfs" , numbers reported by logs before the fail=
ure were added to this measurement to have a better readably on the chart a=
nd a note was added to the wiki page.

-          This time the charts contains the measurement for old and new sc=
ript in same milestone to have a comparison, the times a pretty similar hen=
ce new script will be fully enabled on machines for upcoming measurements.

-          In all the measurements  there is shown a slight improvement on =
times in new script mostly due there is a more precise collection of times

-          Full list of charts [12]

Links

1 - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10455
2 - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10456
3 - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10481
4 - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10490
5 - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10494
6 - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10434
7 - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10447
8 - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477
9 - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10463
10 - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10492
11 - https://wiki.yoctoproject.org/wiki/WW43_-_2016-10-18_-_Full_Test_Cycle=
_2.2_rc4#pTest_results_for_genericx86-64_on_NUC
12 - https://wiki.yoctoproject.org/wiki/WW43_-_2016-10-18_-_Full_Test_Cycle=
_2.2_rc4#Build_Performance_Test

Regards,
Jos=E9


--_000_A957C86E2C2AE04188058D06020CD9B7B61214ECORSMSX105amrcor_
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
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
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
	{mso-list-id:871458079;
	mso-list-type:hybrid;
	mso-list-template-ids:2067539796 -1765117336 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:5.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1280450867;
	mso-list-type:hybrid;
	mso-list-template-ids:606876142 1082427874 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l1:level1
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Jose,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">This is a good report.=
 &nbsp;Seems that we are doing well in terms of closing out m&#43;/high pri=
ority bugs without a lot of new ones appearing.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">--David C<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><a name=3D"_____replyseparator"></a><b>From:</b> Per=
ez Carranza, Jose
<br>
<b>Sent:</b> Tuesday, October 25, 2016 10:48 AM<br>
<b>To:</b> yocto@yoctoproject.org; Jolley, Stephen K &lt;stephen.k.jolley@i=
ntel.com&gt;<br>
<b>Cc:</b> Lock, Joshua G &lt;joshua.g.lock@intel.com&gt;; Wold, Saul &lt;s=
aul.wold@intel.com&gt;; Avery, Brian &lt;brian.avery@intel.com&gt;; Graydon=
, Tracy &lt;tracy.graydon@intel.com&gt;; Richard Purdie &lt;richard.purdie@=
linuxfoundation.org&gt;; Cobbley, David A &lt;david.a.cobbley@intel.com&gt;=
;
 Esquivel, Benjamin &lt;benjamin.esquivel@intel.com&gt;; Delgado, Sonia &lt=
;sonia.delgado@intel.com&gt;; Burton, Ross &lt;ross.burton@intel.com&gt;; E=
ggleton, Paul &lt;paul.eggleton@intel.com&gt;; Zhang, Jessica &lt;jessica.z=
hang@intel.com&gt;<br>
<b>Subject:</b> QA Test Report for Yocto Project 2.2 rc4<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the report for QA Cycle on 2.2 rc4 <o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Report : &nbsp;<a href=3D"https://wiki.yoctopro=
ject.org/wiki/WW43_-_2016-10-18_-_Full_Test_Cycle_2.2_rc4">https://wiki.yoc=
toproject.org/wiki/WW43_-_2016-10-18_-_Full_Test_Cycle_2.2_rc4</a> &nbsp;<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Summary <o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">There were found 10 new b=
ugs, 3 of them are already triaged as M&#43; 1 as Medium and the rest are n=
ot yet triaged, no one of these bugs was a blocker for QA cycle hence all c=
omponents were fully executed, there are
 12 bugs for pTest that were out of the focus in past milestones due some i=
ssues on reports, all of them are medium. New scripts of performance is giv=
ing correct data and this time the charts has a comparison between old and =
new script results , in general
 all the measurements on performance are stable. All high and M&#43; bugs f=
ound on previous QA cycle (M3 rc1) were verified, none of them is present o=
n current release.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Bugs <o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;*</b>New bugs found <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10455 - [Test Case 1059] Parselogs is fail=
ing on MM32 giving error: blk_update_request: I/O error, dev loop0 [1]<o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10456 - X can not launch =
on qemumips64 [2]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10481 - [Test Case 1059] =
Parselogs is failing on genericx86 (32 and 64 bits) WIC giving error: GPT: =
Use GNU Parted to correct GPT errors. [3]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10490 - Error on oeqa.run=
time.rpm.RpmInstallRemoveTest when running testimage [4]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10494 - [Test Case 1059] =
Parselogs is failing on genericx86-64-WIC on NUC giving error: Failed to lo=
ad DMC firmware [5]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10434 - runqemu can not l=
aunch qemu image in Build Appliance [6]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10447 - eSDK: runqemu fai=
ls unless unless DEPLOY_DIR_IMAGE is set [7]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10477 - yocto-bsp: tool s=
hould output a conf file to be consume by the qemu runner [8]<o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10463 - [Test Case 910] &=
quot;Recipe file&quot; column isn't sortable [9]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">10492 - [Test Case 1398] =
Build log cannot be downloaded [10]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Full List of bugs : &nbsp=
;<a href=3D"https://wiki.yoctoproject.org/wiki/WW43_-_2016-10-18_-_Full_Tes=
t_Cycle_2.2_rc4#New_and_notable_issues_Found_during_QA_Test_.26_Community">=
https://wiki.yoctoproject.org/wiki/WW43_-_2016-10-18_-_Full_Test_Cycle_2.2_=
rc4#New_and_notable_issues_Found_during_QA_Test_.26_Community</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;<b>*</b>Old<b> </b>New High and M&#43;<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l1 level1 lfo2">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]>NA <o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*Ol=
d Medium Low<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;Full list of bugs: <a href=3D"https://wiki.yoctoproject.org/=
wiki/WW43_-_2016-10-18_-_Full_Test_Cycle_2.2_rc4#Other_Bugs_found_during_QA=
_Test_.28NOT_NEW.29">
https://wiki.yoctoproject.org/wiki/WW43_-_2016-10-18_-_Full_Test_Cycle_2.2_=
rc4#Other_Bugs_found_during_QA_Test_.28NOT_NEW.29</a> &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; *pTest bugs <o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">- These bugs were out of =
the focus due a issues with automatic report on previous milestones, there =
is a new table showing the failures and all the bugs were commented with th=
e results for this milestone.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">- Full log of the executi=
on is now loaded to the wiki along with the results [11]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; Full list of bugs: <a href=3D"https://wiki.yoctoproject.org=
/wiki/WW43_-_2016-10-18_-_Full_Test_Cycle_2.2_rc4#pTest_open_bugs">
https://wiki.yoctoproject.org/wiki/WW43_-_2016-10-18_-_Full_Test_Cycle_2.2_=
rc4#pTest_open_bugs</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b>Performance<o:p></o:p></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l0 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]>New script is now running on the machines and is gi=
ving correct a precise data.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l0 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]>After resolution of bug 10285 correct measurement w=
ere retrieved for &#8220;core-image-sato &#8211;c rootfs&#8221; , numbers r=
eported by logs before the failure were added to this measurement to have a=
 better readably on the chart and a note was added
 to the wiki page.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l0 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]>This time the charts contains the measurement for o=
ld and new script in same milestone to have a comparison, the times a prett=
y similar hence new script will be fully enabled on machines for upcoming m=
easurements.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l0 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]>In all the measurements &nbsp;there is shown a slig=
ht improvement on times in new script mostly due there is a more precise co=
llection of times<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l0 level1 lfo4">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]>Full list of charts [12]<o:p></o:p></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b>Links<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1 - <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10455">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10455</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">2 - <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10456">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10456</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">3 - <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10481">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10481</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">4 - <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10490">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10490</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">5 - <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10494">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10494</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">6 - <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10434">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10434</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">7 - <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10447">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10447</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">8 - <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10477">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">9 - <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10463">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10463</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">10 - <a href=3D"https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D10492">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10492</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">11 - <a href=3D"https://wiki.yoctoproject.org/wiki/W=
W43_-_2016-10-18_-_Full_Test_Cycle_2.2_rc4#pTest_results_for_genericx86-64_=
on_NUC">
https://wiki.yoctoproject.org/wiki/WW43_-_2016-10-18_-_Full_Test_Cycle_2.2_=
rc4#pTest_results_for_genericx86-64_on_NUC</a>
<o:p></o:p></p>
<p class=3D"MsoNormal">12 - <a href=3D"https://wiki.yoctoproject.org/wiki/W=
W43_-_2016-10-18_-_Full_Test_Cycle_2.2_rc4#Build_Performance_Test">
https://wiki.yoctoproject.org/wiki/WW43_-_2016-10-18_-_Full_Test_Cycle_2.2_=
rc4#Build_Performance_Test</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Jos=E9</b><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_A957C86E2C2AE04188058D06020CD9B7B61214ECORSMSX105amrcor_--
