Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A7ABE00C9F; Thu,  7 Feb 2019 20:38:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FAEEE00C8F
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2019 20:38:35 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Feb 2019 20:38:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,346,1544515200"; 
	d="scan'208,217";a="131963596"
Received: from pgsmsx114.gar.corp.intel.com ([10.108.55.203])
	by FMSMGA003.fm.intel.com with ESMTP; 07 Feb 2019 20:38:33 -0800
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.7]) by
	pgsmsx114.gar.corp.intel.com ([169.254.4.96]) with mapi id
	14.03.0415.000; Fri, 8 Feb 2019 12:38:32 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Eggleton, Paul"
	<paul.eggleton@intel.com>, "'richard.purdie@linuxfoundation.org'"
	<richard.purdie@linuxfoundation.org>, 'Michael Halstead'
	<mhalstead@linuxfoundation.org>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Thread-Topic: QA cycle report for 2.7 M2 RC1
Thread-Index: AdS+qa/k+XQuUulPR0uSr5SbFs9HMA==
Date: Fri, 8 Feb 2019 04:38:31 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634D5748A@PGSMSX110.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmY5OGJhODctNTc3MC00ZGM1LThiN2EtZjhmM2QzNWZhMWM1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNmdOWXNYRlRCdjV0XC9hZWlTYlc0RE0rWm05UGNYaVlIbGhrNUY3ZnhmWWNGRU1vOVVvZjRSZkRCMDVJUHNjNHEifQ==
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: OTC Embedded Malaysia <otc.embedded.malaysia@intel.com>, "Kirkiris,
	Nectar" <nectar.kirkiris@intel.com>
Subject: QA cycle report for 2.7 M2 RC1
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
X-List-Received-Date: Fri, 08 Feb 2019 04:38:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_015AB11D45F2C442929CB2765DAE738634D5748APGSMSX110garcor_"

--_000_015AB11D45F2C442929CB2765DAE738634D5748APGSMSX110garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,



This is the full report for 2.7 M2 RC1:



https://wiki.yoctoproject.org/wiki/WW01_-_2019-01-28_-_Full_Test_Cycle_2.7_=
M2_RC1



=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D



All planned tests were executed.

Total Test Executed - 3629

Passed Test - 3613

Failed Test - 16





There were zero high milestone defect.  Team had found 3 new defects in BSP=
[1], Compliance [2] and  OE-Core[3].

5 existing issues were observed in this release.



For ptest, there is a drop in percentage of pass rate for 3 modules: nettle=
, perl and valgrind. Bugs are reported for Nettle [4] and Perl [5]. For Val=
grind, no bug is filed, since there is a decrease in percentage but no fail=
ures as compared to previous results.



=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D



  1.  No high milestone defect.
  2.  For performance test results, this time there is a new machine "pokyb=
uild at perf-centos7.yoctoproject.org" introduced in performance test resul=
ts from Yocto-perf mailing list. And results from "Yocto CentOS 7 Build Per=
f Tester" is missing for this release. Hence, the comparison between result=
s from two "centos7" machines shows huge differences.



=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D



New Bugs

[1] Bug 13153 - [2.7 M2 RC1] Systemtap doesn't work on beaglebone

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13153



[2] Bug 13160 - [2.7_m2_rc1][compliance test][LSB Test] "Failed to load mod=
ule Core_test.pm, samba_test.pm", LSB Test has failed"

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13160



[3] Bug 13161 - [2.7 M2 RC1] Perl can not handle signals

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13161



ptest Bugs:



[4] Bug 13155 - [2.7 M2 RC1] nettle ptest failure

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13155





[5] Bug 13154<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991> - =
[2.7 M2 RC1] perl ptest failure

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13154





Previous Bugs observed in this release:



[6] Bug 13102 - [Bug][QA 2.7 M1 rc1][Toaster] All layers are not getting po=
pulated after clicking "View compatible layers" on project page

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13102



[7] Bug 13103 - [Bug][QA 2.7 M1 rc1][Toaster] "Recipes" table  and  "machin=
es" table are not getting populated after clicking on imported layer as wel=
l as after clicking Machines Tab on project page

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103



[8] Bug 13104 - [Bug][QA 2.7 M1 rc1][Toaster] All "Image Recipes" are not g=
etting populated after clicking  "Image Recipes"  on project page

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13104



[9] Bug 12991<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991> - =
[Bug] [2.6 M4 RC1][Build-Appliance] Bitbake build-appliance-image getting f=
ailed during building image due to webkitgtk package.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991



[10] Bug 12499<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991> -=
 [Bug] [2.5 M1 RC3] qemuarm: failed to shutdown.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12499






Thanks & Regards,
Sangeeta Jain

--_000_015AB11D45F2C442929CB2765DAE738634D5748APGSMSX110garcor_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:246311664;
	mso-list-template-ids:2004641406;}
@list l1
	{mso-list-id:366490912;
	mso-list-type:hybrid;
	mso-list-template-ids:1418230706 1141440527 1141440537 1141440539 11414405=
27 1141440537 1141440539 1141440527 1141440537 1141440539;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
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
"color:black">This is the full report for 2.</span><span lang=3D"EN-US">7 M=
2 RC1:<span style=3D"color:black"><o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">https://=
wiki.yoctoproject.org/wiki/WW01_-_2019-01-28_-_Full_Test_Cycle_2.7_M2_RC1<o=
:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p></=
o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">All planned tests were executed.<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black">T=
otal Test Executed - 3</span>629<span style=3D"color:black"><o:p></o:p></sp=
an></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black">P=
assed Test - 3613<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black">F=
ailed Test -
</span>16<span style=3D"color:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">There were zero high milestone defect.&nbsp; Team had found
</span><span lang=3D"EN-US">3<span style=3D"color:black"> new defects in BS=
P[1], Compliance [2] and&nbsp; OE-Core[3].<o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">5 existing issues were observed in this release.<o:p></o:p></=
span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">For ptest, there is a drop in percentage of pass rate for 3 m=
odules: nettle, perl and valgrind.&nbsp;Bugs are reported for Nettle [4] an=
d Perl [5]. For Valgrind, no bug is filed,
 since there is a decrease in percentage but no failures as compared to pre=
vious results.<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D<o:p></=
o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"1">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l1 level1 lfo3"><span=
 lang=3D"EN-US" style=3D"mso-fareast-language:EN-MY">No high milestone defe=
ct.&nbsp;
<o:p></o:p></span></li><li class=3D"MsoNormal" style=3D"color:black;mso-lis=
t:l1 level1 lfo3"><span lang=3D"EN-US" style=3D"mso-fareast-language:EN-MY"=
>For performance test results, this time there is a new machine &#8220;<i><=
span style=3D"background:white">pokybuild at perf-centos7.yoctoproject.org&=
#8221;
</span></i><span style=3D"background:white">introduced in performance test =
results from Yocto-perf mailing list. And results from &#8220;<i>Yocto Cent=
OS 7 Build Perf Tester&#8221;
</i>is missing for this release. Hence, the comparison between results from=
 two &#8220;centos7&#8221; machines shows huge differences.</span><o:p></o:=
p></span></li></ol>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p=
></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">New Bugs<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">[1] Bug =
13153 &#8211; [2.7 M2 RC1] Systemtap doesn't work on beaglebone<o:p></o:p><=
/span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13153">https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D13153</a><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">[2] Bug =
13160 &#8211; [2.7_m2_rc1][compliance test][LSB Test] &quot;Failed to load =
module Core_test.pm, samba_test.pm&quot;, LSB Test has failed&quot;<o:p></o=
:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13160">https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D13160</a><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">[3] Bug =
13161 &#8211; [2.7 M2 RC1] Perl can not handle signals<o:p></o:p></span></p=
>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13161">https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D13161</a><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b>ptest Bugs:<o:p></o:p></b>=
</p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt">[4] Bug 13155<span style=3D"c=
olor:black">&nbsp;-&nbsp;[2.7 M2 RC1] nettle ptest failure<o:p></o:p></span=
></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D13155">https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D13155</a><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt">[5] <span style=3D"color:blac=
k"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991"><s=
pan style=3D"color:black;text-decoration:none">Bug&nbsp;13154</span></a>&nb=
sp;-&nbsp;[2.7 M2 RC1] perl ptest failure<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D13154">https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D13154</a><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US"><o:p>=
&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US">Previ=
ous Bugs observed in this release:<o:p></o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">[</span><span lang=3D"EN-US">6<span style=3D"color:black">]
</span></span><span style=3D"color:black">Bug 13102 - [Bug][QA 2.7 M1 rc1][=
Toaster] All layers are not getting populated after clicking &quot;View com=
patible layers&quot; on project page
</span><span lang=3D"EN-US" style=3D"color:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black"><=
a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13102">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D13102</a><o:p></o:p></span></=
p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">[</span><span lang=3D"EN-US">7<span style=3D"color:black">]
</span></span><span style=3D"color:black">Bug 13103 - [Bug][QA 2.7 M1 rc1][=
Toaster] &quot;Recipes&quot; table&nbsp; and&nbsp; &quot;machines&quot; tab=
le are not getting populated after clicking on imported layer as well as af=
ter clicking Machines Tab on project page</span><span lang=3D"EN-US" style=
=3D"color:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black"><=
a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103</a><o:p></o:p></span></=
p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black">&=
nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">[</span><span lang=3D"EN-US">8<span style=3D"color:black">]
</span></span><span style=3D"color:black">Bug 13104 - [Bug][QA 2.7 M1 rc1][=
Toaster] All &quot;Image Recipes&quot; are not getting populated after clic=
king&nbsp; &quot;Image Recipes&quot;&nbsp; on project page
</span><span lang=3D"EN-US" style=3D"color:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black"><=
a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13104">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D13104</a><o:p></o:p></span></=
p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt">[9] <span style=3D"color:blac=
k"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991"><s=
pan style=3D"color:black;text-decoration:none">Bug&nbsp;12991</span></a>&nb=
sp;-&nbsp;[Bug] [2.6 M4 RC1][Build-Appliance] Bitbake build-appliance-image
 getting failed during building image due to webkitgtk package.<o:p></o:p><=
/span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D12991">https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D12991</a><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt">[10] <span style=3D"color:bla=
ck"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991"><=
span style=3D"color:black;text-decoration:none">Bug&nbsp;12499</span></a>&n=
bsp;-&nbsp;[Bug] [2.5 M1 RC3] qemuarm: failed to shutdown.<o:p></o:p></span=
></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D12499">https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D12499</a><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks &amp; Regards,<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sangeeta Jain<o:p></o:p></span>=
</p>
</div>
</body>
</html>

--_000_015AB11D45F2C442929CB2765DAE738634D5748APGSMSX110garcor_--
