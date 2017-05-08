Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90429E00B01; Mon,  8 May 2017 13:50:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED82CE0080F
	for <yocto@yoctoproject.org>; Mon,  8 May 2017 13:50:31 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP; 08 May 2017 13:50:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,310,1491289200"; d="scan'208,217";a="99384110"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by fmsmga006.fm.intel.com with ESMTP; 08 May 2017 13:50:30 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
	fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Mon, 8 May 2017 13:50:30 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.48]) by
	FMSMSX119.amr.corp.intel.com ([169.254.14.10]) with mapi id
	14.03.0319.002; Mon, 8 May 2017 13:50:29 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Thread-Topic: QA Test Report for Yocto Project  Release 2.3 rc4
Thread-Index: AdLICRxJBDyaBDQMQ+KuRPd9+9QanA==
Date: Mon, 8 May 2017 20:50:29 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A0212548B@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzgxNGY3ZmQtMDdmZC00NjE1LTk2MWEtMDJiZmEzZTYxYmIxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6Ikpza3YrdHBnSzNXUVwvTnBOVWJSZkQ2SGVHNVU4bEV5WHI3d2JhbkJhTEZvPSJ9
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>
Subject: QA Test Report for Yocto Project Release 2.3 rc4
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
X-List-Received-Date: Mon, 08 May 2017 20:50:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A0212548Bfmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A0212548Bfmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,



Here is the report for the Full QA Cycle on Release 2.3 M3 rc4



Full Report : https://wiki.yoctoproject.org/wiki/WW19_-_2017-05-02_-_Full_T=
est_Cycle_2.3_rc4



=3D=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D





The QA cycle for release 2.3 rc2 is complete, There is 1 new bug found rela=
ted to eSDK toolchain, this is not a blocker issues. Bug 11409 found during=
 rc2 that was blocking Eclipse was already verified and is working correctl=
y. Performance measurements were very similar to the ones for rc2. In pTest=
 numbers were almost the same as in rc2 with a slight improvement on "tlc" =
module.





=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D





=3D=3D=3D=3D=3D=3D=3D=3D Details =3D=3D=3D=3D=3D=3D=3D=3D



QA Hints



There was only one new bug found 11471, initially this was blocking some of=
 the eSDK / CROPS testing but with a simple workout (already described on b=
ug history) test were executed correctly, hence this doesn't represent a bl=
ocker for QA cycle. In general this release locks good form QA perspective =
only adding the workaround to the release notes for bug 11471 should be nec=
essary and have the fix ready for a point release cycle.





Bugs

      * New



           - 11471 - eSDK toolchain cannot install using i586 extensible-to=
olchain [1]





      * High / M+ Not New



           - 10477 - yocto-bsp: tool should output a conf file to be consum=
e by the qemu runner [2]

           - 11431 - Crops-ESDK: devtool is unable to add recipe for nodejs=
-native recipe [3]



Full Bug Report : https://wiki.yoctoproject.org/wiki/WW19_-_2017-05-02_-_Fu=
ll_Test_Cycle_2.3_rc4#Bugs_Found_during_QA_Test



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D





=3D=3D=3D=3D=3D=3D Performance =3D=3D=3D=3D=3D=3D



Measurements were practically the same as in rc2, no noticeable deviations =
were detected from the execution of the test on rc4.



-        Ubuntu



            Test     2.3 rc2    2.3 rc4    %

            sato     1:12:54    1:12:18    -0.82

            rootfs   2:17       2:16       -0.73

            rmwork   1:05:33    1:06:17    1.12

            kernel   5:14       5:13       -0.32

            eSDK     2:44       2:44       0.00





-        Fedora



           Test     2.3 rc2    2.3 rc4    %

            sato     1:12:49    1:12:42    -0.16

            rootfs   2:34       2:29       -3.25

            rmwork   1:06:45    1:06:24    -0.52

            kernel   5:56       5:58       0.56

            eSDK     3:02       3:01       -0.55





Performance Charts :  https://wiki.yoctoproject.org/charts/perf_milestone_G=
DC/performance_test.html



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D





=3D=3D=3D=3D=3D=3D=3D=3D=3D pTest =3D=3D=3D=3D=3D=3D=3D=3D



    -  There was an slight improvement on PASS rate for the "tcl" module, t=
he rest of the numbers were the same as in rc2





pTest full report : https://wiki.yoctoproject.org/wiki/WW19_-_2017-05-02_-_=
Full_Test_Cycle_2.3_rc4#pTest_for_genericx86-64_on_NUC



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D





=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D

1. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11471

2. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11477

3. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11431

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Regards
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A0212548Bfmsmsx101amrcor_
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
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
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
	{mso-list-id:1900048357;
	mso-list-type:hybrid;
	mso-list-template-ids:1766349318 -1983057342 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:90.6pt;
	text-indent:-.25in;
	font-family:"Courier New";
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:126.6pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:162.6pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:198.6pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:234.6pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:270.6pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:306.6pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:342.6pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:378.6pt;
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
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Hello All,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Here is the report for the Full&nbsp;QA Cycle on Release 2.3 M3 rc<span =
style=3D"color:#1F497D">4</span><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Full Report : <span style=3D"color:#1F497D">
<a href=3D"https://wiki.yoctoproject.org/wiki/WW19_-_2017-05-02_-_Full_Test=
_Cycle_2.3_rc4">https://wiki.yoctoproject.org/wiki/WW19_-_2017-05-02_-_Full=
_Test_Cycle_2.3_rc4</a>
</span><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">The QA cycle for release 2.3 rc2 is complete, There is 1 new bug found r=
elated to eSDK toolchain, this is not a blocker issues. Bug 11409 found dur=
ing rc2 that was blocking Eclipse was already
 verified and is working correctly. Performance measurements were very simi=
lar to the ones for rc2. In pTest numbers were almost the same as in rc2 wi=
th a slight improvement on &#8220;tlc&#8220; module.</span><span style=3D"c=
olor:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D Details =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">QA Hints<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:46.2pt"><span style=3D"font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:46.2pt"><span style=3D"font-=
family:&quot;Courier New&quot;">There was only one new bug found 11471, ini=
tially this was blocking some of the eSDK / CROPS testing but with a simple=
 workout (already described on bug history) test
 were executed correctly, hence this doesn&#8217;t represent a blocker for =
QA cycle. In general this release locks good form QA perspective only addin=
g the workaround to the release notes for bug 11471 should be necessary and=
 have the fix ready for a point release
 cycle.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Bugs<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * New<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;- 11471 - e=
SDK toolchain cannot install using i586 extensible-toolchain [1]<o:p></o:p>=
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
;;color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;
</span><span style=3D"font-family:&quot;Courier New&quot;">- 10477 - yocto-=
bsp: tool should output a conf file to be consume by the qemu runner [2]<o:=
p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 11431 - C=
rops-ESDK: devtool is unable to add recipe for nodejs-native recipe [3]<o:p=
></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Full Bug Report :
<a href=3D"https://wiki.yoctoproject.org/wiki/WW19_-_2017-05-02_-_Full_Test=
_Cycle_2.3_rc4#Bugs_Found_during_QA_Test">
https://wiki.yoctoproject.org/wiki/WW19_-_2017-05-02_-_Full_Test_Cycle_2.3_=
rc4#Bugs_Found_during_QA_Test</a>
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D Performance =3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Measurements were practically the same as in rc2, no noticeable deviatio=
ns were detected from the execution of the test on rc4.
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ubuntu<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Test&=
nbsp;&nbsp;&nbsp;&nbsp; 2.3 rc2&nbsp;&nbsp;&nbsp; 2.3 rc4&nbsp;&nbsp;&nbsp;=
 %<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&=
nbsp;&nbsp;&nbsp;&nbsp; 1:12:54&nbsp;&nbsp;&nbsp; 1:12:18&nbsp;&nbsp;&nbsp;=
 -0.82<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootf=
s&nbsp;&nbsp; 2:17&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:16&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; -0.73<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwor=
k&nbsp;&nbsp; 1:05:33&nbsp;&nbsp;&nbsp; 1:06:17&nbsp;&nbsp;&nbsp; 1.12<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kerne=
l&nbsp;&nbsp; 5:14&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5:13&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; -0.32<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&=
nbsp;&nbsp;&nbsp;&nbsp; 2:44&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:44&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.00<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fedora<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Test&n=
bsp;&nbsp;&nbsp;&nbsp; 2.3 rc2&nbsp;&nbsp;&nbsp; 2.3 rc4&nbsp;&nbsp;&nbsp; =
%<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sato&=
nbsp;&nbsp;&nbsp;&nbsp; 1:12:49&nbsp;&nbsp;&nbsp; 1:12:42&nbsp;&nbsp;&nbsp;=
 -0.16<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootf=
s&nbsp;&nbsp; 2:34&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:29&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; -3.25<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwor=
k&nbsp;&nbsp; 1:06:45&nbsp;&nbsp;&nbsp; 1:06:24&nbsp;&nbsp;&nbsp; -0.52<o:p=
></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kerne=
l&nbsp;&nbsp; 5:56&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5:58&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; 0.56<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&=
nbsp;&nbsp;&nbsp;&nbsp; 3:02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3:01&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -0.55<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Performance Charts :<span style=3D"color:#1F497D">
</span></span><span class=3D"MsoHyperlink">&nbsp;<a href=3D"https://wiki.yo=
ctoproject.org/charts/perf_milestone_GDC/performance_test.html"><span style=
=3D"font-family:&quot;Courier New&quot;">https://wiki.yoctoproject.org/char=
ts/perf_milestone_GDC/performance_test.html</span></a></span><span style=3D=
"font-family:&quot;Courier New&quot;"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D=3D pTest =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp; -&nbsp; There was an slight improvement on PASS rate =
for the
<span style=3D"color:#1F497D">&#8220;</span>tcl&#8221; module, the rest of =
the numbers were the same as in rc2<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">pTest full report :
</span><span class=3D"MsoHyperlink"><a href=3D"https://wiki.yoctoproject.or=
g/wiki/WW19_-_2017-05-02_-_Full_Test_Cycle_2.3_rc4#pTest_for_genericx86-64_=
on_NUC"><span style=3D"font-family:&quot;Courier New&quot;">https://wiki.yo=
ctoproject.org/wiki/WW19_-_2017-05-02_-_Full_Test_Cycle_2.3_rc4#pTest_for_g=
enericx86-64_on_NUC</span></a></span><span style=3D"font-family:&quot;Couri=
er New&quot;;color:#1F497D">
</span><span style=3D"font-family:&quot;Courier New&quot;"><o:p></o:p></spa=
n></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">1.&nbsp;<span class=3D"MsoHyperlink"><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D11471">https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11471</a>
<o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">2.&nbsp;</span><span class=3D"MsoHyperlink"><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D11477"><span style=3D"font-family:&quot;=
Courier New&quot;">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1147=
7</span></a>
 &nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">3.&nbsp;</span><span class=3D"MsoHyperlink"><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D11431"><span style=3D"font-family:&quot;=
Courier New&quot;">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1143=
1</span></a>
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Jos=E9</b><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A0212548Bfmsmsx101amrcor_--
