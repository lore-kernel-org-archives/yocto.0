Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03B43E00BE9; Thu, 22 Jun 2017 15:10:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FC28E00B58
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 15:10:18 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Jun 2017 15:10:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,374,1493708400"; 
	d="scan'208,217";a="870818215"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by FMSMGA003.fm.intel.com with ESMTP; 22 Jun 2017 15:10:18 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 22 Jun 2017 15:10:17 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.237]) by
	FMSMSX154.amr.corp.intel.com ([169.254.6.120]) with mapi id
	14.03.0319.002; Thu, 22 Jun 2017 15:10:17 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Purdie, Richard" <richard.purdie@intel.com>
Thread-Topic: QA Test Report for Yocto Project  Full Cycle Release 2.4 M1 rc1
Thread-Index: AdLromVMoakZSv4LQMGDGWd7gIKIrA==
Date: Thu, 22 Jun 2017 22:10:16 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC531EAFE84@fmsmsx107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWYyYTMyY2MtMjUzNS00OGI1LTkyNDQtZjdlMmExY2JkNmNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6IjQ5dlpkNmJkTzBxYndrU3d2M3JlQjRwTkR2V2ZmQ2xUeWhOU1wvbVRvenZFPSJ9
x-ctpclassification: CTP_IC
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Cc: "Lopez Barriba, DavidX" <davidx.lopez.barriba@intel.com>
Subject: QA Test Report for Yocto Project Full Cycle Release 2.4 M1 rc1
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
X-List-Received-Date: Thu, 22 Jun 2017 22:10:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_58D9E2E50A021A45AD740492365FCDC531EAFE84fmsmsx107amrcor_"

--_000_58D9E2E50A021A45AD740492365FCDC531EAFE84fmsmsx107amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



Hello All,



Here is the report for the 2.4 M1 rc1 full test cycle release.



Full Report : https://wiki.yoctoproject.org/wiki/WW25_-_2017-06-22_-_Full_T=
est_Cycle_2.4_M1_rc1



=3D=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D



The QA cycle for release 2.4 M1 rc1 is complete, there were 3 new issues.

Most important one is 11687[3] Cannot run QEMU machines under UNFS since it=
 is blocking 13 test suites. The second issue we are encountering is that w=
e have yet to build a correct wic image for poky-tiny distribution.



Performance suffered a 5% regression from with 2.3_rc4 when building rootfs=
. Performance improvement 8% on extracting eSDK (Ubuntu) and 13% on fedora.





=3D=3D=3D=3D=3D=3D=3D=3D Details =3D=3D=3D=3D=3D=3D=3D=3D



QA Hints



Eclipse plugin is  blocked by 11687 and it also blocks 11 testruns with 4% =
each. Also there is trouble trying to build a correct poky-tiny image this =
last issue is still under analysis to determine if it is a bug. QA recommen=
ds a rc2 so that the blocked test runs can be executed.





Bugs

      * New



           - Bug 11681<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11598> - poky-tiny fails to build because of resource unavailability [1]

           - Bug 11699<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11604> - [megamanual] dnf using rpm: 5.18.4.3.1. Using RPM section changes =
required [2]

           - Bug 11687<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11607> - Can not run QEMU machines under UNFS [3]





      * High / M+ Not New



           - Bug 10477<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
10456> - yocto-bsp: tool should output a conf file to be consume by the qem=
u runner [4]





Full Bug Report : https://wiki.yoctoproject.org/wiki/WW25_-_2017-06-22_-_Fu=
ll_Test_Cycle_2.4_M1_rc1#Bugs_Found_during_QA_Test







=3D=3D=3D=3D=3D=3D Performance =3D=3D=3D=3D=3D=3D



Performance measurements showed a regression compared with 2.3_rc4 when bui=
lding rootfs of around 5% in both machines and improvement on extracting eS=
DK of around 8% (Ubuntu) and 13% fedora on extracting eSDK. All other metri=
cs are in the normal ranges.



          eSDK    2:35         2:41         3.87



Ubuntu    Test    2.3 rc4    2.4 M1 rc1    %

          sato    1:12:18    1:12:11       -0.16

          rootfs  2:16       2:23          5.15

          rmwork  1:06:17    1:08:27       3.27

          kernel  5:13       5:26          4.15

          eSDK    2:44       2:30          -8.54





Fedora    Test    2.3 rc4    2.4 M1 rc1    %

          sato    1:12:42    1:13:49       1.54

          rootfs  2:29       2:38          6.04

          rmwork  1:06:24    1:08:22       2.96

          kernel  5:58       6:10          3.35

          eSDK    3:01       2:36          -13.81







Performance Charts :  https://wiki.yoctoproject.org/charts/perf_milestone_G=
DC/performance_test.html





=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D



    1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11681

    2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11599

    3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11687

    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477



Regards
Libertad G.


--_000_58D9E2E50A021A45AD740492365FCDC531EAFE84fmsmsx107amrcor_
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><a name=3D"_____replyseparator"></a><span style=
=3D"font-family:&quot;Courier New&quot;">Hello All,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Here is the report for the 2.4 M1 rc1 full test cycle<span style=3D"colo=
r:#1F497D">
</span>release.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Full Report : <span class=3D"MsoHyperlink">
<span style=3D"color:#1F497D"><a href=3D"https://wiki.yoctoproject.org/wiki=
/WW25_-_2017-06-22_-_Full_Test_Cycle_2.4_M1_rc1">https://wiki.yoctoproject.=
org/wiki/WW25_-_2017-06-22_-_Full_Test_Cycle_2.4_M1_rc1</a></span></span></=
span><span class=3D"MsoHyperlink"><span style=3D"color:#1F497D"><o:p></o:p>=
</span></span></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">The QA cycle for release 2.4 M1 rc1 is complete, there were 3 new issues=
.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Most important one is 11687<i>[3]</i> Cannot run QEMU machines under UNF=
S since it is blocking 13 test suites. The second issue we are encountering=
 is that we have yet to build a correct wic image
 for poky-tiny distribution. &nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Performance suffered a 5% regression from with 2.3_rc4 when building roo=
tfs. Performance improvement 8% on extracting eSDK (Ubuntu) and 13% on fedo=
ra.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D Details =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">QA Hints<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.5in"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">Eclipse plugin is &nbsp;blocked by 11687 and =
it also blocks 11 testruns with 4% each. Also there is trouble trying to bu=
ild a correct poky-tiny image this last issue is still
 under analysis to determine if it is a bug. QA recommends a rc2 so that th=
e blocked test runs can be executed.<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:46.2pt"><span style=3D"font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Bugs<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * New<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;- <a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11598">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;11681</span>=
</a>&nbsp;-&nbsp;poky-tiny fails to build because of resource unavailabilit=
y<i> [1]</i><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;- <a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11604">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;11699</span>=
</a>&nbsp;-&nbsp;[megamanual] dnf using rpm: 5.18.4.3.1. Using RPM section =
changes required<i> [2]</i><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;- <a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11607">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;11687</span>=
</a>&nbsp;-&nbsp;Can not run QEMU machines under UNFS<i> [3]</i><o:p></o:p>=
</span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* High / M&#43; Not New<o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -<span styl=
e=3D"color:#1F497D">
</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10456=
"><span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;10477</spa=
n></a>&nbsp;-&nbsp;yocto-bsp: tool should output a conf file to be consume =
by the qemu runner<i> [4]</i><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Full Bug Report :
<span style=3D"color:#1F497D">https://wiki.yoctoproject.org/wiki/WW25_-_201=
7-06-22_-_Full_Test_Cycle_2.4_M1_rc1#Bugs_Found_during_QA_Test</span></span=
><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D Performance =3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Performance measurements showed a regression compared with 2.3_rc4 when =
building rootfs of around 5% in both machines and improvement on extracting=
 eSDK of around 8% (Ubuntu) and 13% fedora on
 extracting eSDK. All other metrics are in the normal ranges. <o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&nbsp;&nbsp;&=
nbsp; 2:35&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:41&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;3.87<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Ubuntu&nbsp;&nbsp; &nbsp;Test&nbsp;&nbsp;&nbsp; 2.3 rc4&nbsp;&nbsp;&nbsp=
; 2.4 M1 rc1&nbsp;&nbsp;&nbsp; %<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;sato&nbsp;&nbsp;&=
nbsp; 1:12:18&nbsp;&nbsp;&nbsp; 1:12:11&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp=
;-0.16<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;rootfs&nbsp; 2:16=
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;2:23&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;5.15<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;rmwork&nbsp; 1:06=
:17&nbsp;&nbsp;&nbsp; 1:08:27&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;3.27<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;kernel&nbsp; 5:13=
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;5:26&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;4.15<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;eSDK&nbsp;&nbsp;&=
nbsp; 2:44&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;2:30&nbsp;&nbsp;&nbsp; &nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-8.54<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Fedora&nbsp;&nbsp;&nbsp; Test&nbsp;&nbsp;&nbsp; 2.3 rc4&nbsp;&nbsp;&nbsp=
; 2.4 M1 rc1&nbsp;&nbsp;&nbsp; %<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;sato&nbsp;&nbsp;&=
nbsp; 1:12:42&nbsp;&nbsp;&nbsp; 1:13:49&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp=
;1.54<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;rootfs&nbsp; 2:29=
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;2:38&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;6.04<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;rmwork&nbsp; 1:06=
:24&nbsp;&nbsp;&nbsp; 1:08:22&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;2.96<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;kernel&nbsp; 5:58=
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;6:10&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;3.35<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;eSDK&nbsp;&nbsp;&=
nbsp; 3:01&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;2:36&nbsp;&nbsp;&nbsp; &nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-13.81<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Performance Charts :<span style=3D"color:#1F497D">
</span><span class=3D"MsoHyperlink">&nbsp;<a href=3D"https://wiki.yoctoproj=
ect.org/charts/perf_milestone_GDC/performance_test.html">https://wiki.yocto=
project.org/charts/perf_milestone_GDC/performance_test.html</a></span></spa=
n><span class=3D"MsoHyperlink"><span style=3D"color:#1F497D"><o:p></o:p></s=
pan></span></p>
<p class=3D"MsoPlainText"><span class=3D"MsoHyperlink"><span style=3D"color=
:#1F497D"><o:p><span style=3D"text-decoration:none">&nbsp;</span></o:p></sp=
an></span></p>
<p class=3D"MsoPlainText"><span class=3D"MsoHyperlink"><span style=3D"color=
:#1F497D"><o:p><span style=3D"text-decoration:none">&nbsp;</span></o:p></sp=
an></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;1.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperli=
nk"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D11681">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D11681</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;2.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperli=
nk"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D11599">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D11599</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;3.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperli=
nk"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D11687">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D11687</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;4.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperli=
nk"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D10477</a>
</span></span><span class=3D"MsoHyperlink"><span style=3D"font-family:&quot=
;Courier New&quot;;color:#1F497D"><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:40.5pt"><span class=3D"MsoHy=
perlink"><span style=3D"color:#1F497D"><o:p><span style=3D"text-decoration:=
none">&nbsp;</span></o:p></span></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;">Libertad G.<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_58D9E2E50A021A45AD740492365FCDC531EAFE84fmsmsx107amrcor_--
