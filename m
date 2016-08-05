Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A0CAE00F78; Fri,  5 Aug 2016 14:42:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CFF1E00F72
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2016 14:42:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Aug 2016 14:42:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,475,1464678000"; 
	d="scan'208,217";a="1009290051"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by orsmga001.jf.intel.com with ESMTP; 05 Aug 2016 14:42:14 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
	fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 5 Aug 2016 14:42:12 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.243]) by
	fmsmsx124.amr.corp.intel.com ([169.254.8.105]) with mapi id
	14.03.0248.002; Fri, 5 Aug 2016 14:42:12 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA Report Yocto Project 2.1.1 rc2
Thread-Index: AdHvKlmADe/IeSXiQyO/WfCy1Y11Kg==
Date: Fri, 5 Aug 2016 21:42:10 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A01FCD531@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjE3Mjc2ZDEtMzUzMS00OTE0LWI0ZjAtNjQ2MWJhYzc0NGYyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IndlZkJnRHhic2NzakZHVlZOd2xJMHVyY2hoUFZ6SkZiK2gxa0NQdTBOSlE9In0=
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Cc: "Lock, Joshua G" <joshua.g.lock@intel.com>, "Purdie,
	Richard" <richard.purdie@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: QA Report Yocto Project 2.1.1 rc2
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
X-List-Received-Date: Fri, 05 Aug 2016 21:42:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A01FCD531fmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A01FCD531fmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Here is the final QA Report for Yocto Project 2.1.1 rc2

https://wiki.yoctoproject.org/wiki/WW32_-_2016-08-01_-_Test_Cycle_2.1.1_rc2

Summary

No new issues found on this test cycle, 12 total issues (only 3 M+) that we=
re already found on previous Test Cycles. Big blocker found in rc1 was reso=
lved.

Details

*Bugs
               -No new bugs found
               -Bug 9897<https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D9897> that was blocking rc1 was resolved [1]
               -M+ bugs were found 2.2 M2 and should be backported

*M+ Bugs
 - Failed to build gobject-introspection for qemumips64 on i686 hosts: 9285=
 [2]
- Failed to build nativesdk-glibc for qemumips and qemumips64 on Fedora 23 =
i686: 9287 [3]
- Failed to create new user: 8988 [4]

*Performance
- Performance measurements were not taken due GDC performance machines were=
 focused ta take measurements
  for master branch to monitor kernel times degradation.

Link


1-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9897

2-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9285

3-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9287

4-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8988


Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A01FCD531fmsmsx101amrcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1034697234;
	mso-list-type:hybrid;
	mso-list-template-ids:1850000468 -773452742 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:%1-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
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
<p class=3D"MsoNormal">Here is the final QA Report for Yocto Project 2.1.1 =
rc2 <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://wiki.yoctoproject.org/wiki/WW32_-=
_2016-08-01_-_Test_Cycle_2.1.1_rc2">https://wiki.yoctoproject.org/wiki/WW32=
_-_2016-08-01_-_Test_Cycle_2.1.1_rc2</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Summary <o:p></o=
:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">No new issues found on this test cycle, 12 total iss=
ues (only 3 M&#43;) that were already found on previous Test Cycles. Big bl=
ocker found in rc1 was resolved.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Details</span></=
b><span style=3D"font-size:14.0pt">
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>*Bugs<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>-No new bugs found <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Bug <a href=3D"https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D9897">
<span style=3D"color:windowtext;text-decoration:none">9897</span></a>&nbsp;=
that was blocking rc1 was resolved [1]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -M&#43; bugs were found 2.2 M2 and should =
be backported
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">*M&#43; Bugs <o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&nbsp;- Failed to build g=
object-introspection for qemumips64 on i686 hosts: 9285 [2]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- Failed to build natives=
dk-glibc for qemumips and qemumips64 on Fedora 23 i686: 9287 [3]<o:p></o:p>=
</p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- Failed to create new us=
er: 8988 [4]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>*Performance<o:p></o:p></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>- </b>Performance meas=
urements were<b>
</b>not taken due GDC performance machines were focused ta take measurement=
s<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp; for master branch =
to monitor kernel times degradation.
<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Link</span></b><=
span style=3D"font-size:14.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">1-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D9897">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9897<=
/a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">2-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D9285">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9285<=
/a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">3-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D9287">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9287<=
/a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">4-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D8988">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8988<=
/a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"ES-MX"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"ES-MX"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"ES-MX">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"ES-MX">Jos=E9</span></b><b><span la=
ng=3D"ES-MX" style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p>=
</span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A01FCD531fmsmsx101amrcor_--
