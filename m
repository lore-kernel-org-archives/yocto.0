Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B86AE00BBC; Sun, 24 Feb 2019 17:59:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A92BE009A5
	for <yocto@yoctoproject.org>; Sun, 24 Feb 2019 17:59:21 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Feb 2019 17:59:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,409,1544515200"; 
	d="scan'208,217";a="136880385"
Received: from pgsmsx108.gar.corp.intel.com ([10.221.44.103])
	by orsmga002.jf.intel.com with ESMTP; 24 Feb 2019 17:59:18 -0800
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.64]) by
	PGSMSX108.gar.corp.intel.com ([169.254.8.83]) with mapi id
	14.03.0415.000; Mon, 25 Feb 2019 09:59:17 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Eggleton, Paul"
	<paul.eggleton@intel.com>, "'richard.purdie@linuxfoundation.org'"
	<richard.purdie@linuxfoundation.org>, 'Michael Halstead'
	<mhalstead@linuxfoundation.org>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>, "'sjolley.yp.pm@gmail.com'"
	<sjolley.yp.pm@gmail.com>
Thread-Topic: QA cycle report for 2.7 M2 RC2
Thread-Index: AdTMrDVl+8ZsXNpkSwOY5wunhK0g2QAAU90Q
Date: Mon, 25 Feb 2019 01:59:16 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634D7C4C3@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634D7C473@PGSMSX110.gar.corp.intel.com>
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634D7C473@PGSMSX110.gar.corp.intel.com>
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
Cc: OTC Embedded Malaysia <otc.embedded.malaysia@intel.com>, "Greenberg, Suzy
	M" <suzy.m.greenberg@intel.com>
Subject: Re: QA cycle report for 2.7 M2 RC2
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
X-List-Received-Date: Mon, 25 Feb 2019 01:59:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_015AB11D45F2C442929CB2765DAE738634D7C4C3PGSMSX110garcor_"

--_000_015AB11D45F2C442929CB2765DAE738634D7C4C3PGSMSX110garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

corrected bug summary:


[2] Bug 13178 - [2.7_m2_rc2][compliance test][LSB Test] "Failed to load mod=
ule Core_test.pm, samba_test.pm", LSB Test has failed"

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13178


Thanks & Regards,
Sangeeta Jain

From: Jain, Sangeeta
Sent: Monday, 25 February, 2019 9:49 AM
To: 'yocto@yoctoproject.org' <yocto@yoctoproject.org>; Eggleton, Paul <paul=
.eggleton@intel.com>; 'richard.purdie@linuxfoundation.org' <richard.purdie@=
linuxfoundation.org>; 'Michael Halstead' <mhalstead@linuxfoundation.org>; E=
rway, Tracey M <tracey.m.erway@intel.com>; sjolley.yp.pm@gmail.com
Cc: OTC Embedded Malaysia <otc.embedded.malaysia@intel.com>; Greenberg, Suz=
y M <suzy.m.greenberg@intel.com>
Subject: QA cycle report for 2.7 M2 RC2


Hello All,



This is the full report for 2.7 M2 RC2:





=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D



All planned tests were executed.

Total Test Executed - 3624

Passed Test - 3607

Failed Test - 9





There were zero high milestone defect.  Team had found 2 new defects in Toa=
ster[1] and BSP[2].

3 existing issues were observed in this release.



For ptest, there is a drop in percentage of pass rate for 3 modules: nettle=
, perl and python3. Bugs are reported for Nettle [3] and Perl [4]. For pyth=
on3, no bug is filed, since there is a decrease in percentage but no failur=
es as compared to previous results.



=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D



  1.  No high milestone defect.
  2.  CROPS manual test cases (total no 6) is replaced by one consolidated =
auto test case in this test cycle.

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D



New Bugs

[1] Bug 13191 - [2.7 M2 RC1] Systemtap doesn't work on beaglebone

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13191



[2] Bug 13178 - [2.7_m2_rc1][compliance test][LSB Test] "Failed to load mod=
ule Core_test.pm, samba_test.pm", LSB Test has failed"

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13178







ptest Bugs:



[3] Bug 13193 - [2.7 M2 RC2] nettle ptest failure

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13193



[4] Bug 13194<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991> - =
[2.7 M2 RC2] perl ptest failure

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13194





Previous Bugs observed in this release:

[5] Bug 13153 - [2.7 M2 RC1] Systemtap doesn't work on beaglebone

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13153





[6] Bug 12991<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991> - =
[Bug] [2.6 M4 RC1][Build-Appliance] Bitbake build-appliance-image getting f=
ailed during building image due to webkitgtk package.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991



[7] Bug 12499<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991> - =
[Bug] [2.5 M1 RC3] qemuarm: failed to shutdown.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12499






Thanks & Regards,
Sangeeta Jain

--_000_015AB11D45F2C442929CB2765DAE738634D7C4C3PGSMSX110garcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:dt=3D"uuid:C2F4101=
0-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://schemas.microsoft.com/offi=
ce/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:366490912;
	mso-list-type:hybrid;
	mso-list-template-ids:1418230706 1141440527 1141440537 1141440539 11414405=
27 1141440537 1141440539 1141440527 1141440537 1141440539;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1518696264;
	mso-list-template-ids:-1877826948;}
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
<p class=3D"MsoNormal">corrected bug summary:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">[2] Bug =
13178 &#8211; [2.7_m2_rc2][compliance test][LSB Test] &quot;Failed to load =
module Core_test.pm, samba_test.pm&quot;, LSB Test has failed&quot;<o:p></o=
:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D13178"><span lang=3D"EN-US">https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D13178</span></a><span lang=3D"EN-US"=
><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-MY">Thanks &amp; Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-MY">Sangeeta Jain<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><a name=3D"_____replyseparator"></a><b><span lang=3D=
"EN-US" style=3D"mso-fareast-language:EN-MY">From:</span></b><span lang=3D"=
EN-US" style=3D"mso-fareast-language:EN-MY"> Jain, Sangeeta
<br>
<b>Sent:</b> Monday, 25 February, 2019 9:49 AM<br>
<b>To:</b> 'yocto@yoctoproject.org' &lt;yocto@yoctoproject.org&gt;; Eggleto=
n, Paul &lt;paul.eggleton@intel.com&gt;; 'richard.purdie@linuxfoundation.or=
g' &lt;richard.purdie@linuxfoundation.org&gt;; 'Michael Halstead' &lt;mhals=
tead@linuxfoundation.org&gt;; Erway, Tracey M &lt;tracey.m.erway@intel.com&=
gt;;
 sjolley.yp.pm@gmail.com<br>
<b>Cc:</b> OTC Embedded Malaysia &lt;otc.embedded.malaysia@intel.com&gt;; G=
reenberg, Suzy M &lt;suzy.m.greenberg@intel.com&gt;<br>
<b>Subject:</b> QA cycle report for 2.7 M2 RC2<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Hello All,<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">This is the full report for 2.</span><span lang=3D"EN-US">7 M=
2 RC2:<span style=3D"color:black"><o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
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
otal Test Executed - 3</span>624<span style=3D"color:black"><o:p></o:p></sp=
an></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black">P=
assed Test - 36</span>07<span style=3D"color:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black">F=
ailed Test -
</span>9<span style=3D"color:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">There were zero high milestone defect.&nbsp; Team had found
</span><span lang=3D"EN-US">2<span style=3D"color:black"> new defects in </=
span>Toaster<span style=3D"color:black">[1]</span> and BSP<span style=3D"co=
lor:black">[2]</span>.<span style=3D"color:black"><o:p></o:p></span></span>=
</p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">3<span s=
tyle=3D"color:black"> existing issues were observed in this release.<o:p></=
o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">For ptest, there is a drop in percentage of pass rate for 3 m=
odules: nettle, perl and
</span><span lang=3D"EN-US">python3<span style=3D"color:black">.&nbsp;Bugs =
are reported for Nettle [</span>3<span style=3D"color:black">] and Perl [</=
span>4<span style=3D"color:black">]. For python3, no bug is filed, since th=
ere is a decrease in percentage but no failures
 as compared to previous results.<o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D<o:p></=
o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"1">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l0 level1 lfo3"><span=
 lang=3D"EN-US" style=3D"mso-fareast-language:EN-MY">No high milestone defe=
ct.&nbsp;
<o:p></o:p></span></li><li class=3D"MsoNormal" style=3D"color:black;mso-lis=
t:l0 level1 lfo3"><span lang=3D"EN-US" style=3D"color:windowtext;mso-fareas=
t-language:EN-MY">CROPS manual test cases (total no 6) is replaced by one c=
onsolidated auto test case in this test cycle.</span><span lang=3D"EN-US">&=
nbsp;</span><span lang=3D"EN-US" style=3D"mso-fareast-language:EN-MY"><o:p>=
</o:p></span></li></ol>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p=
></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">New Bugs<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">[1] Bug =
13191 &#8211; [2.7 M2 RC1] Systemtap doesn't work on beaglebone<o:p></o:p><=
/span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D13191"><span lang=3D"EN-US">https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D13191</span></a><span lang=3D"EN-US"=
><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">[2] Bug =
13178 &#8211; [2.7_m2_rc1][compliance test][LSB Test] &quot;Failed to load =
module Core_test.pm, samba_test.pm&quot;, LSB Test has failed&quot;<o:p></o=
:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D13178"><span lang=3D"EN-US">https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D13178</span></a><span lang=3D"EN-US"=
><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b>ptest Bugs:<o:p></o:p></b>=
</p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt">[3] Bug 13193<span style=3D"c=
olor:black">&nbsp;-&nbsp;[2.7 M2 RC</span>2<span style=3D"color:black">] ne=
ttle ptest failure<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D13193">https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D13193</a><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt">[4] <a href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D12991">
<span style=3D"color:black;text-decoration:none">Bug&nbsp;131</span><span s=
tyle=3D"color:windowtext;text-decoration:none">9</span><span style=3D"color=
:black;text-decoration:none">4</span></a><span style=3D"color:black">&nbsp;=
-&nbsp;[2.7 M2 RC</span>2<span style=3D"color:black">] perl
 ptest failure<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D13194">https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D13194</a><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US"><o:p>=
&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US">Previ=
ous Bugs observed in this release:<o:p></o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">[5] Bug =
13153 &#8211; [2.7 M2 RC1] Systemtap doesn't work on beaglebone<o:p></o:p><=
/span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D13153"><span lang=3D"EN-US">https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D13153</span></a><span lang=3D"EN-US"=
><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt">[6] <a href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D12991">
<span style=3D"color:black;text-decoration:none">Bug&nbsp;12991</span></a><=
span style=3D"color:black">&nbsp;-&nbsp;[Bug] [2.6 M4 RC1][Build-Appliance]=
 Bitbake build-appliance-image getting failed during building image due to =
webkitgtk package.<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D12991">https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D12991</a><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt">[7] <a href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D12991">
<span style=3D"color:black;text-decoration:none">Bug&nbsp;12499</span></a><=
span style=3D"color:black">&nbsp;-&nbsp;[Bug] [2.5 M1 RC3] qemuarm: failed =
to shutdown.<o:p></o:p></span></p>
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
</div>
</body>
</html>

--_000_015AB11D45F2C442929CB2765DAE738634D7C4C3PGSMSX110garcor_--
