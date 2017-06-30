Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 353A5E00BB1; Fri, 30 Jun 2017 14:13:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58955E00B9F
	for <yocto@yoctoproject.org>; Fri, 30 Jun 2017 14:13:04 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP; 30 Jun 2017 14:13:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,288,1496127600"; 
	d="scan'208,217";a="103300393"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by orsmga004.jf.intel.com with ESMTP; 30 Jun 2017 14:12:51 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Fri, 30 Jun 2017 14:12:50 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.237]) by
	FMSMSX151.amr.corp.intel.com ([169.254.7.116]) with mapi id
	14.03.0319.002; Fri, 30 Jun 2017 14:12:50 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>
Thread-Topic: QA cycle report for 2.1.3 rc2
Thread-Index: AdLx5MZ5leahtlWTQKGndlSnKYLW2g==
Date: Fri, 30 Jun 2017 21:12:49 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC531EB209B@fmsmsx107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzA0ZTM2YjMtZTI1ZC00ZjY4LTlmMTQtMzIwMmU5YWVhMGU4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6InFVN2ZEN0dNM3dVelZubmtRZ3lIc3lRcmx3cm03Q000bllIMUtOaytZODg9In0=
x-ctpclassification: CTP_IC
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Cc: "Cruz Alcaraz,
 Juan M" <juan.m.cruz.alcaraz@intel.com>
Subject: QA cycle report for 2.1.3 rc2
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
X-List-Received-Date: Fri, 30 Jun 2017 21:13:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_58D9E2E50A021A45AD740492365FCDC531EB209Bfmsmsx107amrcor_"

--_000_58D9E2E50A021A45AD740492365FCDC531EB209Bfmsmsx107amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,



Here is the report for the 2.1.3 rc2 full point release test cycle.

Full Report : https://wiki.yoctoproject.org/wiki/WW26_-_2017-30-06_-_Full_P=
ass_2.1.3_rc2



=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.1.3 rc2 is complete for this release cycle the t=
esting team focused on re-executing only test cases that failed on 2.1.3 rc=
1  and checking the image integrity on the auto builder.



=3D=3D=3D=3D=3D=3D=3D=3D Details =3D=3D=3D=3D=3D=3D=3D=3D

QA Hints



The 2.1.3 rc2 ran smoothly being able to verify the following bugs present =
on previous run 2.1.3 rc1



                        11644    [Yocto 2.1.3] missing toolchian sdk for ar=
mv5e

                        11646    [krogoth] WIC image does not load in graph=
ical environment

                        11658    [krogoth] testimage multiple errors and sk=
ipped test present in WIC image (Minnowmax64/NUC)

                        11659    [krogoth] genericx86 fails to boot after i=
nstall from USB on MMAX32



you may view a  full report of the existing bugs for 2.1.3 rc1 link: https:=
//wiki.yoctoproject.org/wiki/WW24_-_2017-14-06_-_Full_Pass_2.1.3_rc1#Bugs_F=
ound_during_QA_Test





No new bugs were found for this test cycle but there are some that are pres=
ent 11659 [krogoth] genericx86 fails to boot after install from USB on MMAX=
32[1]  this bug has a fix but was not integrated on 2.1.3 rc2.

Bugs



       * M+ bugs

            - 11659 [krogoth] genericx86 fails to boot after install from U=
SB on MMAX32[1]

            - 10694 - rpm does not detect file clashes on do_rootfs [2]





Full Bug Report : https://wiki.yoctoproject.org/wiki/WW24_-_2017-14-06_-_Fu=
ll_Pass_2.1.3_rc1#Bugs_Found_during_QA_Test





=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D



    1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11659 <https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11637> [1]

    2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10694 <https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11644> [2]



Regards

Libertad G.


--_000_58D9E2E50A021A45AD740492365FCDC531EB209Bfmsmsx107amrcor_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
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
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Hello All,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Here is the report for the 2.1.3 rc2 full point release tes=
t cycle.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Full Report : https://wiki.yoctoproject.org/wiki/WW26_-_201=
7-30-06_-_Full_Pass_2.1.3_rc2<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">The QA cycle for release 2.1.3 rc2 is complete for this rel=
ease cycle the testing team focused on re-executing only test cases that fa=
iled on 2.1.3 rc1 &nbsp;and checking the image integrity
 on the auto builder. <o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D=3D Details =3D=3D=3D=3D=3D=3D=3D=3D<o=
:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">QA Hints<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">The 2.1.3 rc2 ran smoothly being able to verify the followi=
ng bugs present on previous run 2.1.3 rc1<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 11644&nbsp;&nbsp;&nbsp; [Yocto 2.1.3] missing toolchian sdk for armv5e=
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 11646&nbsp;&nbsp;&nbsp; [krogoth] WIC image does not load in graphical=
 environment<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 11658&nbsp;&nbsp;&nbsp; [krogoth] testimage multiple errors and skippe=
d test present in WIC image (Minnowmax64/NUC)<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 11659&nbsp;&nbsp;&nbsp; [krogoth] genericx86 fails to boot after insta=
ll from USB on MMAX32<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">you may view a &nbsp;full report of the existing bugs for 2=
.1.3 rc1 link: https://wiki.yoctoproject.org/wiki/WW24_-_2017-14-06_-_Full_=
Pass_2.1.3_rc1#Bugs_Found_during_QA_Test &nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">No new bugs were found for this test cycle but there are so=
me that are present
<i>11659 [krogoth] genericx86 fails to boot after install from USB on MMAX3=
2[1]</i> &nbsp;this bug has a fix but was not integrated on 2.1.3 rc2.<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Bugs<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * M&#43; bugs<o:p></o:=
p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; - 11659 [krogoth] genericx86 fails to boot after install from USB o=
n MMAX32[1]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; - 10694 - rpm does not detect file clashes on do_rootfs [2]<o:p></o=
:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Full Bug Report :
<a href=3D"https://wiki.yoctoproject.org/wiki/WW24_-_2017-14-06_-_Full_Pass=
_2.1.3_rc1#Bugs_Found_during_QA_Test">
<span style=3D"color:windowtext;text-decoration:none">https://wiki.yoctopro=
ject.org/wiki/WW24_-_2017-14-06_-_Full_Pass_2.1.3_rc1#Bugs_Found_during_QA_=
Test</span></a><o:p></o:p></span></p>
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
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11637"><span=
 style=3D"color:windowtext;text-decoration:none">https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D11659
</span></a>[1]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 2.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11644"><span=
 style=3D"color:windowtext;text-decoration:none">https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D10694
</span></a>[2]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Regards<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Libertad G.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_58D9E2E50A021A45AD740492365FCDC531EB209Bfmsmsx107amrcor_--
