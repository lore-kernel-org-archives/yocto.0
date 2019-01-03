Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89869E00D01; Wed,  2 Jan 2019 23:26:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BFA4E00901
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2019 23:26:41 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jan 2019 23:26:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,434,1539673200"; 
	d="scan'208,217";a="288480744"
Received: from pgsmsx103.gar.corp.intel.com ([10.221.44.82])
	by orsmga005.jf.intel.com with ESMTP; 02 Jan 2019 23:26:39 -0800
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.187]) by
	PGSMSX103.gar.corp.intel.com ([169.254.2.6]) with mapi id
	14.03.0415.000; Thu, 3 Jan 2019 15:26:38 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"'richard.purdie@linuxfoundation.org'"
	<richard.purdie@linuxfoundation.org>, 
	"Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, Michael Halstead
	<mhalstead@linuxfoundation.org>
Thread-Topic: QA cycle report for 2.7 M1 RC1
Thread-Index: AdSjNXPHQz5yaIA+QqGUSEgPGvdU8w==
Date: Thu, 3 Jan 2019 07:26:38 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04348158D46@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTcwZjFmNDgtZmQ2Yy00MzNmLTk0M2EtYzY2N2UyNDQ1MGNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY216dEdDMjRGU3FGTVBBcGNqMlwvendnc25razYrRFAyaWhNMzhtNmdyNm9VZVwvUFwvVUF3THZodHNXMVZ3K0dHZSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: QA cycle report for 2.7 M1 RC1
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
X-List-Received-Date: Thu, 03 Jan 2019 07:26:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9DDD2658D1FE414E99172D2DB1E4D04348158D46PGSMSX109garcor_"

--_000_9DDD2658D1FE414E99172D2DB1E4D04348158D46PGSMSX109garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,



This is the full report for 2.7 M1 RC1:

https://wiki.yoctoproject.org/wiki/WW01_-_2019-01-02_-_Full_Test_Cycle_2.7_=
M1_RC1



=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D



All planned tests were executed.

Total Test Executed - 3659

Passed Test - 3638

Failed Test - 18

Blocked Test - 3



There were zero high milestone defect.  Team had found 3 new defects coming=
 from Toaster [1] [2] [3].



For ptest, team had confirmed that there was no tests which passed in 2.6 M=
4 rc1 while failed in current 2.7 M1 rc1, but team had found that the qa-to=
ols/ptest-parser script used to generate comparison table was not working a=
s expected (ticket created to fix this).



For CROPS manual testing, team was able to execute CROPS testing automatica=
lly by utilizing the enhancement from testimage that enable qemu slirp to r=
un eSDK automated tests for CROPS.  Propose to remove manual crops testcase=
s inside oeqa/manual directory.



=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D



No high milestone defect.



=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D



New Bugs

[1] Bug 13102 - [Bug][QA 2.7 M1 rc1][Toaster] All layers are not getting po=
pulated after clicking "View compatible layers" on project page

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13102



[2] Bug 13103 - [Bug][QA 2.7 M1 rc1][Toaster] "Recipes" table  and  "machin=
es" table are not getting populated after clicking on imported layer as wel=
l as after clicking Machines Tab on project page

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103



[3] Bug 13104 - [Bug][QA 2.7 M1 rc1][Toaster] All "Image Recipes" are not g=
etting populated after clicking  "Image Recipes"  on project page

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13104



Regards

Ee Peng


--_000_9DDD2658D1FE414E99172D2DB1E4D04348158D46PGSMSX109garcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
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
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Hello All,</span=
><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif=
;color:black"><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">This is the full=
 report for 2.7 M1 RC1:&nbsp;
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span lang=3D"EN-MY" style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
a href=3D"https://wiki.yoctoproject.org/wiki/WW01_-_2019-01-02_-_Full_Test_=
Cycle_2.7_M1_RC1">https://wiki.yoctoproject.org/wiki/WW01_-_2019-01-02_-_Fu=
ll_Test_Cycle_2.7_M1_RC1</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">=3D=3D=3D=3D=3D=
=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">All planned test=
s were executed.<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span lang=3D"EN-MY" style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">T=
otal Test Executed - 3659<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span lang=3D"EN-MY" style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">P=
assed Test - 3638<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span lang=3D"EN-MY" style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">F=
ailed Test - 18<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span lang=3D"EN-MY" style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">B=
locked Test - 3<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">There were zero =
high milestone defect.&nbsp; Team had found 3 new defects coming from Toast=
er [1] [2] [3].
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">For ptest, team =
had confirmed that there was no tests which passed in 2.6 M4 rc1 while fail=
ed in current 2.7 M1 rc1, but team had found that
 the qa-tools/ptest-parser script used to generate comparison table was not=
 working as expected (ticket created to fix this).&nbsp;
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">For CROPS manual=
 testing, team was able to execute CROPS testing automatically by utilizing=
 the enhancement from testimage that enable qemu
 slirp to run eSDK automated tests for CROPS.&nbsp; Propose to remove manua=
l crops testcases inside oeqa/manual directory.
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">=3D=3D=3D=3D=3D=
=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">No high mileston=
e defect.&nbsp;
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">=3D=3D=3D=3D=3D=
=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">New Bugs<o:p></o=
:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[1]
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:black">Bug 13102 - [Bug][QA 2.7 M1 rc1][Toaster=
] All layers are not getting populated after clicking &quot;View compatible=
 layers&quot; on project page
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black"><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span lang=3D"EN-MY" style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13102">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D13102</a><o:p></o:p></span></=
p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[2]
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:black">Bug 13103 - [Bug][QA 2.7 M1 rc1][Toaster=
] &quot;Recipes&quot; table&nbsp; and&nbsp; &quot;machines&quot; table are =
not getting populated after clicking on imported layer as well as after cli=
cking
 Machines Tab on project page</span><span style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span lang=3D"EN-MY" style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103</a><o:p></o:p></span></=
p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span lang=3D"EN-MY" style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&=
nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[3]
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:black">Bug 13104 - [Bug][QA 2.7 M1 rc1][Toaster=
] All &quot;Image Recipes&quot; are not getting populated after clicking&nb=
sp; &quot;Image Recipes&quot;&nbsp; on project page
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black"><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span lang=3D"EN-MY" style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13104">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D13104</a><o:p></o:p></span></=
p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regards<o:p></o:=
p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Ee Peng
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
</div>
</body>
</html>

--_000_9DDD2658D1FE414E99172D2DB1E4D04348158D46PGSMSX109garcor_--
