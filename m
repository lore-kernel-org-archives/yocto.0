Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7206DE00BAB; Mon,  5 Jun 2017 15:30:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08C4FE00BA2
	for <yocto@yoctoproject.org>; Mon,  5 Jun 2017 15:30:37 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Jun 2017 15:30:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,303,1493708400"; 
	d="scan'208,217";a="110739814"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
	by fmsmga005.fm.intel.com with ESMTP; 05 Jun 2017 15:30:21 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
	FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Mon, 5 Jun 2017 15:30:21 -0700
Received: from fmsmsx104.amr.corp.intel.com ([169.254.3.23]) by
	FMSMSX102.amr.corp.intel.com ([169.254.10.151]) with mapi id
	14.03.0319.002; Mon, 5 Jun 2017 15:30:21 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>
Thread-Topic: QA Test Report for Yocto Project  Point Release 2.2.2. rc1
Thread-Index: AdLeHVSRvwp6Um48SzOdimD/cu9HWAAH2Xeg
Date: Mon, 5 Jun 2017 22:30:19 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC531E980B9@fmsmsx104.amr.corp.intel.com>
References: <0A5D9A624DF90343892F8F3FE7DE525A16981432@fmsmsx101.amr.corp.intel.com>
In-Reply-To: <0A5D9A624DF90343892F8F3FE7DE525A16981432@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzgxNGY3ZmQtMDdmZC00NjE1LTk2MWEtMDJiZmEzZTYxYmIxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6Ikpza3YrdHBnSzNXUVwvTnBOVWJSZkQ2SGVHNVU4bEV5WHI3d2JhbkJhTEZvPSJ9
x-ctpclassification: CTP_IC
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>, "Cruz Alcaraz,
	Juan M" <juan.m.cruz.alcaraz@intel.com>
Subject: QA Test Report for Yocto Project Point Release 2.2.2. rc1
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
X-List-Received-Date: Mon, 05 Jun 2017 22:30:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_58D9E2E50A021A45AD740492365FCDC531E980B9fmsmsx104amrcor_"

--_000_58D9E2E50A021A45AD740492365FCDC531E980B9fmsmsx104amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,



Here is the report for the 2.2.2 rc1 full point release test cycle.



Full Report : https://wiki.yoctoproject.org/wiki/WW22_-_2017-06-05_-_Full_P=
oint_Release_Test_Cycle_2.2.2_rc1





=3D=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D



The QA cycle for release 2.2.2 rc1 is complete, there were 6 new issues.

Two of this are related  to testimage, one to compliance test, one to self-=
test, one to OE-Core and finally "11604 [Yocto 2.2.2] crosstap doesn't work=
" [1] this is a recurring issue that has been fixed on 10990[9]. Also the b=
ugs 5948[10], 6016[11], 6118[12], 6122[13]  are just a few that have been m=
arked duplicated of 10990[9].



Performance metrics showed a 16% improvement on Ubuntu machine, Fedora mach=
ine showed an improvement of 9%.





=3D=3D=3D=3D=3D=3D=3D=3D Details =3D=3D=3D=3D=3D=3D=3D=3D



QA Hints



QA test cycle seems to have been executed smoothly no apparent blockers or =
high priority bugs.  It would be worthwhile that before deciding if this bu=
ild can be release, the following bugs have been reviewed and assigned prio=
rity 11611[4], 11607[3], 11604[1], 11606[6]. We are concern about the recur=
ring issue on Crosstap not working, not sure if there can be a strategy so =
that this issue is fixed on all environments. Even though it seems that 116=
04[1] is not a blocker it does require reporting, retesting and development=
 analysis time whenever its present.





Bugs

      * New



           - Bug 11598<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11598> - [morty]testimage quemux86-64 lsb genericx86-64 getty[1309]: tcgeta=
ttr: Input/output error^M[2]

           - Bug 11604<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11604> - [Yocto 2.2.2] crosstap doesn't work[1]

           - Bug 11607<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11607> - [morty] Testimage lsb image trow multiple smart errors[3]

           - Bug 11611<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11611> - [morty] Compliance test lsb-setup-4.1.0-1.noarch.rpm download fail=
[4]

           - Bug 11565<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11565> - morty self-test errors[5]

           - Bug 11606<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11606> - [morty] OE-Core test_recipetool_create (oeqa.selftest.recipetool.R=
ecipetoolTests)[6]





      * High / M+ Not New



           - Bug 10456<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
10456> - X can not launch on qemumips64[7]

           - Bug 11064<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11064> - [Yocto 2.2.1] kernel version mismatched when using yocto-bsp to cr=
eate custom qemu bsp[8]



Full Bug Report : https://wiki.yoctoproject.org/wiki/WW22_-_2017-06-05_-_Fu=
ll_Point_Release_Test_Cycle_2.2.2_rc1#Bugs_Found_during_QA_Test





=3D=3D=3D=3D=3D=3D Performance =3D=3D=3D=3D=3D=3D



All performance metrics showed improvements on Ubuntu machine, exceling 16%=
 on rootfs creation, Fedora machine showed an improvement of 9% on extracti=
ng eSDK the other metrics where on the same level compared to 2.2.1 release=
.





Ubuntu      Test      2.2.1_rc1     2.2.2_rc1     %

            sato      1:02:41       1:00:42       -3.16

            rootfs    2:43          2:16          -16.56

            rmwork    1:01:13       0:59:29       -2.83

            kernel    5:05          5:01          -1.31

            eSDK      3:28          3:22          -2.88



Fedora      Test      2.2.1_rc1     2.2.2_rc1     %

            sato      1:00:26       1:00:43       0.47

            rootfs    2:18          2:16          -1.45

            rmwork    0:59:17       0:59:29       0.34

            kernel    5:22          5:01          -6.52

            eSDK      3:42          3:22          -9.01







Performance Charts :  https://wiki.yoctoproject.org/charts/perf_milestone_G=
DC/performance_test.html





=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D



    1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11604

    2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11598

    3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11607

    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11611

    5.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11565

    6.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11606

    7.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10456

    8.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11064

    9.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10990

    10.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5948

    11.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6016

    12.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6118

    13.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6122



Regards
Libertad G.


--_000_58D9E2E50A021A45AD740492365FCDC531E980B9fmsmsx104amrcor_
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
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
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
	{mso-list-id:1145851918;
	mso-list-type:hybrid;
	mso-list-template-ids:-175726370 1628594306 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:40.5pt;
	text-indent:-22.5pt;
	font-family:"Courier New";
	color:windowtext;
	text-decoration:none;
	text-underline:none;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
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
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Hello All,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Here is the report for the 2.2.2 rc1 full point release test cycle.<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Full Report : <span class=3D"MsoHyperlink">
<span style=3D"color:#1F497D">https://wiki.yoctoproject.org/wiki/WW22_-_201=
7-06-05_-_Full_Point_Release_Test_Cycle_2.2.2_rc1</span></span><o:p></o:p><=
/span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">The QA cycle for release 2.2.2<span style=3D"color:#1F497D">
</span>rc<span style=3D"color:#1F497D">1</span> is complete, there were 6 n=
ew issues.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Two of this are related &nbsp;to testimage, one to compliance test, one =
to self-test, one to OE-Core and finally
<i>&#8220;11604 [Yocto 2.2.2] crosstap doesn&#8217;t work&#8221; [1]</i> th=
is is a recurring issue that has been fixed on 10990<i>[9]</i>. Also the bu=
gs 5948<i>[10]</i>, 6016<i>[11]</i>, 6118<i>[12]</i>, 6122<i>[13]</i> &nbsp=
;are just a few that have been marked duplicated of 10990<i>[9]</i>.
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Performance metrics showed a 16% improvement on Ubuntu machine, Fedora m=
achine showed an improvement of 9%.<o:p></o:p></span></p>
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
mily:&quot;Courier New&quot;">QA test cycle seems to have been executed smo=
othly no apparent blockers or high priority bugs. &nbsp;It would be worthwh=
ile that before deciding if this build can be release,
 the following bugs have been reviewed and assigned priority 11611<i>[4]</i=
>, 11607<i>[3]</i>, 11604<i>[1]</i>, 11606<i>[6]</i>. We are concern about =
the recurring issue on Crosstap not working, not sure if there can be a str=
ategy so that this issue is fixed
 on all environments. Even though it seems that 11604<i>[1]</i> is not a bl=
ocker it does require reporting, retesting and development analysis time wh=
enever its present.<o:p></o:p></span></p>
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
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;11598</span>=
</a>&nbsp;-&nbsp;[morty]testimage quemux86-64 lsb genericx86-64 getty[1309]=
: tcgetattr: Input/output error^M<i>[2]</i><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;- <a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11604">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;11604</span>=
</a>&nbsp;-&nbsp;[Yocto 2.2.2] crosstap doesn't work<i>[1]</i><o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;- <a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11607">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;11607</span>=
</a>&nbsp;-&nbsp;[morty] Testimage lsb image trow multiple smart errors<i>[=
3]</i><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;- <a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11611">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;11611</span>=
</a>&nbsp;-&nbsp;[morty] Compliance test lsb-setup-4.1.0-1.noarch.rpm downl=
oad fail<i>[4]</i><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;- <a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11565">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;11565</span>=
</a>&nbsp;-&nbsp;morty self-test errors<i>[5]</i><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;- <a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11606">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;11606</span>=
</a>&nbsp;-&nbsp;[morty] OE-Core test_recipetool_create (oeqa.selftest.reci=
petool.RecipetoolTests)<i>[6]</i><o:p></o:p></span></p>
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
"><span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;10456</spa=
n></a>&nbsp;-&nbsp;X can not launch on qemumips64<i>[7]</i><o:p></o:p></spa=
n></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11064">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;11064</span>=
</a>&nbsp;-&nbsp;[Yocto 2.2.1] kernel version mismatched when using yocto-b=
sp to create custom qemu bsp<i>[8]</i><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Full Bug Report :
<span style=3D"color:#1F497D"><a href=3D"https://wiki.yoctoproject.org/wiki=
/WW22_-_2017-06-05_-_Full_Point_Release_Test_Cycle_2.2.2_rc1#Bugs_Found_dur=
ing_QA_Test">https://wiki.yoctoproject.org/wiki/WW22_-_2017-06-05_-_Full_Po=
int_Release_Test_Cycle_2.2.2_rc1#Bugs_Found_during_QA_Test</a></span><o:p><=
/o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D Performance =3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">All performance metrics showed improvements on Ubuntu machine, exceling =
16% on rootfs creation, Fedora machine showed an improvement of 9% on extra=
cting eSDK the other metrics where on the same
 level compared to 2.2.1 release. &nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Ubuntu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Test&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
2.2.1_rc1&nbsp;&nbsp;&nbsp;&nbsp; 2.2.2_rc1&nbsp;&nbsp;&nbsp;&nbsp; %<o:p><=
/o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:02:41&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1=
:00:42&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -3.16<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootf=
s&nbsp;&nbsp;&nbsp; 2:43&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 2:16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -16.56<o:p><=
/o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwor=
k&nbsp;&nbsp;&nbsp; 1:01:13&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0:59:29&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -2.83<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kerne=
l&nbsp;&nbsp;&nbsp; 5:05&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 5:01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1.31<o:p></=
o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3:28&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; 3:22&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-2=
.88<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Fedora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Test&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
2.2.1_rc1&nbsp;&nbsp;&nbsp;&nbsp; 2.2.2_rc1&nbsp;&nbsp;&nbsp;&nbsp; %<o:p><=
/o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:00:26&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1=
:00:43&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.47<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootf=
s&nbsp;&nbsp;&nbsp; 2:18&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 2:16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1.45<o:p></=
o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwor=
k&nbsp;&nbsp;&nbsp; 0:59:17&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0:59:29&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.34<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kerne=
l&nbsp;&nbsp;&nbsp; 5:22&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 5:01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -6.52<o:p></=
o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3:42&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; 3:22&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -9=
.01<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
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
bugzilla.yoctoproject.org/show_bug.cgi?id=3D11604">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D11604</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;2.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperli=
nk"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D11598">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D11598</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;3.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperli=
nk"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D11607">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D11607</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;4.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperli=
nk"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D11611">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D11611</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;5.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperli=
nk"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D11565">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D11565</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;6.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperli=
nk"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D11606">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D11606</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;7.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperli=
nk"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D10456">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D10456</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;8.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperli=
nk"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D11064">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D11064</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;9.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperli=
nk"><span style=3D"font-family:&quot;Courier New&quot;">https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D10990<o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;10.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperl=
ink"><span style=3D"font-family:&quot;Courier New&quot;">https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D5948<o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;11.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperl=
ink"><span style=3D"font-family:&quot;Courier New&quot;">https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D6016<o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;12.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperl=
ink"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D6118">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D6118</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp; &nbsp;&nbsp;13.</span> &nbsp;&nbsp;&nbsp;<span class=3D"MsoHyperl=
ink"><span style=3D"font-family:&quot;Courier New&quot;"><a href=3D"https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D6122">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D6122</a><o:p></o:p></span></span></p>
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

--_000_58D9E2E50A021A45AD740492365FCDC531E980B9fmsmsx104amrcor_--
