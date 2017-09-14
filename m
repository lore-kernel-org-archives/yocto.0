Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16077E008D2; Thu, 14 Sep 2017 16:54:01 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EDEEE0078E
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 16:53:59 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP; 14 Sep 2017 16:53:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,395,1500966000"; 
	d="scan'208,217";a="1219018192"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by fmsmga002.fm.intel.com with ESMTP; 14 Sep 2017 16:53:57 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.9]) by
	FMSMSX106.amr.corp.intel.com ([169.254.5.207]) with mapi id
	14.03.0319.002; Thu, 14 Sep 2017 16:53:56 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>,
	"Purdie, Richard" <richard.purdie@intel.com>
Thread-Topic: QA cycle report for 2.2.2 rc2
Thread-Index: AdMttJRRajU0rb3wR/ymuQyZT931vQ==
Date: Thu, 14 Sep 2017 23:53:56 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC532A24F9C@fmsmsx107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "Cruz Alcaraz, Juan M" <juan.m.cruz.alcaraz@intel.com>, "Jordan,
	Robin L" <robin.l.jordan@intel.com>
Subject: QA cycle report for 2.2.2 rc2
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
X-List-Received-Date: Thu, 14 Sep 2017 23:54:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_58D9E2E50A021A45AD740492365FCDC532A24F9Cfmsmsx107amrcor_"

--_000_58D9E2E50A021A45AD740492365FCDC532A24F9Cfmsmsx107amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,



Here is the report for the 2.2.2 point release test cycle.

Full Report :  https://wiki.yoctoproject.org/wiki/WW37_-_2017-09-13_-_Full_=
Point_Release_Test_Cycle_2.2.2_rc2

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for point release 2.2.2 rc2 is complete.  There are 3 new bugs=
: bug 12080[2]  blocks testing to the eSDK component since eSDK functionali=
ties cannot be executed. Bugs 12075[1], 12073[3], 12081[4] don't block full=
 functionalities.



LPT results are waiting to be updated by Windriver.


Performance

Compared with 2.2.2 rc1 there was a regression of 14.71 while building root=
fs on Ubuntu, there was also a regression on Fedora while building sato of =
7.46% and a regression on kernel of 12.12%.





Ubuntu                 Test       2.2.2_rc1             2.2.2_rc2          =
   %

                              sato       1:00:42              1:01:16      =
         0.93

                              rootfs    2:16                    2:36       =
              14.71

                              rmwork 0:59:29              0:59:51          =
     0.62

                              kernel    5:01                    5:00       =
              -0.33

                              eSDK      3:22                    3:19       =
              -1.49





Fedora                 Test       2.2.2_rc1             2.2.2_rc2          =
   %

                              sato       1:01:55              1:06:32      =
         7.46

                              rootfs    2:49                    2:51       =
              1.18

                              rmwork 0:59:52              1:01:32          =
     2.78

                              kernel    6:03                    6:47       =
              12.12

                              eSDK      3:44                    3:54       =
              4.46





ptest

There was an improvement on the pass rate in the following packages in comp=
arison with 2.2.2 rc1:

gdk-pixbuf with 5%

libxml2 with 4.20%

lttng-tools with 3.20%



On the other side there was a regression on the pass rate in comparison wit=
h 2.2.2 rc1:

acl with 6.80%

e2fsprogs with 100% regression

gawk with .10%

quilt with 1.80%

valgrind of 53.10%





Compliance

Results are yet to be documented by Windriver.



=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D



There is only one concern on the eSDK component it cannot execute. QA recom=
mends an 2.2.2 rc3 to only verify the eSDK component.



=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D



       New Bugs

            -12075[1]  [morty] testimage quemux86/qemux86-64 lsb tcgetattr:=
 Input/output error^M

            -12080[2] [Morty][Test Case 1605] TCTEMP_2.3_AUTO_sdkext_eSDK_d=
evtool_build_make

            -12073[3] selftest: setUpClass failed failing on ubuntu 17.04 (=
oeqa.selftest.signing.Signing)

            -12081[4] [morty] PTEST: Package Name flex, gzip, slang, do not=
 appear in 2.2.2 rc2



Full Bug Report : https://wiki.yoctoproject.org/wiki/WW37_-_2017-09-13_-_Fu=
ll_Point_Release_Test_Cycle_2.2.2_rc2#Bugs_Found_during_QA_Test





=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D



    1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12075 [1]

    2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12080 [2]

    3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12073 [3]

    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12081 [4]







Regards

Libertad G.

--_000_58D9E2E50A021A45AD740492365FCDC532A24F9Cfmsmsx107amrcor_
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
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle24
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
ot;,sans-serif">Here is the report for the 2.2.2 point<span style=3D"color:=
#1F497D">
</span>release test cycle.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Full Report :
<span style=3D"color:#1F497D">&nbsp;<a href=3D"https://wiki.yoctoproject.or=
g/wiki/WW37_-_2017-09-13_-_Full_Point_Release_Test_Cycle_2.2.2_rc2">https:/=
/wiki.yoctoproject.org/wiki/WW37_-_2017-09-13_-_Full_Point_Release_Test_Cyc=
le_2.2.2_rc2</a><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif;color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">The QA cycle for point release 2.2.2 rc2 is complete. &nbsp=
;There are 3 new bugs: bug 12080[2] &nbsp;blocks testing to the eSDK compon=
ent since eSDK functionalities cannot be executed. Bugs
 12075[1], 12073[3], 12081[4] don&#8217;t block full functionalities. <o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">LPT results are waiting to be updated by Windriver.<o:p></o=
:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Performance<o:p></o:p></span></b></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Compared with 2.2.2 rc1 there was a regression of 14.71 whi=
le building rootfs on Ubuntu, there was also a regression on Fedora while b=
uilding sato of 7.46% and a regression on kernel
 of 12.12%.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp; <o:p>
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Ubuntu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Test &nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 2.2.2_rc1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; 2.2.2_rc2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; %<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 1:00:42 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 1:01:16&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; 0.93<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootfs&nbsp;&nbsp;&nbsp; 2:16&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:36&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
14.71<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwork 0:59:29 &nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0:59:51&nbsp;&nbsp; &=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.62<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kernel&nbsp;&nbsp;&nbsp; 5:01&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
-0.33<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 3:22&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3:19&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; -1.49<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Fedora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Test &nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 2.2.2_rc1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; 2.2.2_rc2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; %<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 1:01:55 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 1:06:32&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; &nbsp;&nbsp;7.46<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootfs&nbsp;&nbsp;&nbsp; 2:49&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:51&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
1.18<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwork 0:59:52 &nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:01:32&nbsp;&nbsp; &=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.78<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kernel&nbsp;&nbsp;&nbsp; 6:03&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6:47&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
12.12<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 3:44&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3:54&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 4.46<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-family:&quot;Calibri Light=
&quot;,sans-serif">ptest
<o:p></o:p></span></b></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">There was an improvement on the pass rate in the following =
packages in comparison with 2.2.2 rc1:<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">gdk-pixbuf with 5%<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">libxml2 with 4.20%<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">lttng-tools with 3.20%<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">On the other side there was a regression on the pass rate i=
n comparison with 2.2.2 rc1:<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">acl with 6.80%<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">e2fsprogs with 100% regression<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">gawk with .10%<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">quilt with 1.80%<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">valgrind of 53.10%<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-family:&quot;Calibri Light=
&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-family:&quot;Calibri Light=
&quot;,sans-serif">Compliance
<o:p></o:p></span></b></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Results are yet to be documented by Windriver.<o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">There is only one concern on the eSDK component it cannot e=
xecute. QA recommends an 2.2.2 rc3 to only verify the eSDK component.
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o=
:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Bugs<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;-12075[1] &nbsp;[morty] testimage quemux86/qemux86-64 lsb tcge=
tattr: Input/output error^M<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;-12080[2] [Morty][Test Case 1605] TCTEMP_2.3_AUTO_sdkext_eSDK_=
devtool_build_make
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;-12073[3] selftest: setUpClass failed failing on ubuntu 17.04 =
(oeqa.selftest.signing.Signing)<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;-12081[4] [morty] PTEST: Package Name flex, gzip, slang, do no=
t appear in 2.2.2 rc2<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Full Bug Report :
<span style=3D"color:#1F497D"><a href=3D"https://wiki.yoctoproject.org/wiki=
/WW37_-_2017-09-13_-_Full_Point_Release_Test_Cycle_2.2.2_rc2#Bugs_Found_dur=
ing_QA_Test">https://wiki.yoctoproject.org/wiki/WW37_-_2017-09-13_-_Full_Po=
int_Release_Test_Cycle_2.2.2_rc2#Bugs_Found_during_QA_Test</a></span><o:p><=
/o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D<=
o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 1.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12075">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12075</a><span style=3D"colo=
r:#1F497D">
</span>[1]<span style=3D"color:#1F497D"><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 2.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12080">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12080</a><span style=3D"colo=
r:#1F497D">
</span>[2]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 3.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12073">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12073</a><span style=3D"colo=
r:#1F497D">
</span>[3]<span style=3D"color:#1F497D"><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 4.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12081">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12081</a><span style=3D"colo=
r:#1F497D">
</span>[4]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; <o:p>
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Regards<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Libertad G.<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_58D9E2E50A021A45AD740492365FCDC532A24F9Cfmsmsx107amrcor_--
