Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5036BE00ED5; Thu, 28 Jul 2016 08:48:39 -0700 (PDT)
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
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90ED1E00B1A
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 08:48:36 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 28 Jul 2016 08:48:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,434,1464678000"; 
	d="scan'208,217";a="1015608249"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2016 08:48:35 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 28 Jul 2016 08:48:35 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.243]) by
	FMSMSX113.amr.corp.intel.com ([169.254.13.33]) with mapi id
	14.03.0248.002; Thu, 28 Jul 2016 08:48:35 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA Report Yocto Project 2.2 M2 rc1 
Thread-Index: AdHoyXD1VLsRY/f0QOunoTZQV+lFeg==
Date: Thu, 28 Jul 2016 15:48:33 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A01FCA76E@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWQ0MTc4MjQtZGUwNC00YjVlLTlmNmItODE4MTQ3OWRlMDQ1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IkNZSU13cEQ5TGxCYWRpeEdiWWRtdVVSVGU1dWN0YWhKT3FGbVRnQmFWajQ9In0=
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: QA Report Yocto Project 2.2 M2 rc1
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
X-List-Received-Date: Thu, 28 Jul 2016 15:48:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A01FCA76Efmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A01FCA76Efmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Here is the final QA Report for Yocto Project 2.2 M2 rc1

https://wiki.yoctoproject.org/wiki/WW30_-_2016-07-21_-_Full_Test_Cycle_2.2_=
M2.rc1

Summary

There are a total of 40 bugs reported in this test cycle, 19 new and 21 tha=
t were raised in previous Milestones/Releases and appeared also in M2. None=
 of them is a big blocker bug, For performance there was an  increase of bu=
ilding time of about 50%

Details

   *Bugs
               -Eclipse Plugin has some issues but of them will not be appl=
icable on next milestones due reduction of Test Suite
               -There are still 21 M+ bugs and 1 High to be implemented/res=
olved for 2.2 M2 Milestone [1]
               -Components with new issues found are :
                                             - ADT/ SDK
                                             - Toaster
                                             - BSP
                                             - Meta Yocto

*Important Bugs
               - Random warning: Unrecognised command on FIFO : 9999 [2]
               - Media player cannot be closed Minnow32: 10045 [3]
               - Missing 'Connection Manager' icon for qemumips and qemumip=
s64: 10025 [4]
                             - audio - play (ogg-wav) with HDMI-Media playe=
r turns off: 10041 [5]
                              - Fail to build linux-yocto for custom qemumi=
ps64 bsp with yocto-bsp: 10016 [6]
                              - Kernel panic for custom qemux86-64 bsp with=
 yocto-bsp: 10026[7]
                              - Fail to run 'bitbake linux-yocto -c menucon=
fig: 10027 [8]

               Full list of the important/new bugs : https://wiki.yoctoproj=
ect.org/wiki/WW30_-_2016-07-21_-_Full_Test_Cycle_2.2_M2.rc1#New_and_notable=
_issues_Found_during_QA_Test_.26_Community

               Full list of medium bugs : https://wiki.yoctoproject.org/wik=
i/WW30_-_2016-07-21_-_Full_Test_Cycle_2.2_M2.rc1#Other_Bugs_found_during_QA=
_Test

   *Performance
               - There was an improved times on all the tasks measured on p=
erformance expect of the bitbake virtual/kernel. [9]
               - For bitbake virtual/kernel there was a big increase (aroun=
d 50%) on building time [10]

   *Links
               1- https://wiki.yoctoproject.org/wiki/WW30_-_2016-07-21_-_Fu=
ll_Test_Cycle_2.2_M2.rc1#Current_community_Open_Bugs_-_Medium.2B.2FHigh
               2- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9999
               3- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10045
               4- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10025
               5- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10041
               6- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10016
               7- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10026
               8- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10027
               9- https://wiki.yoctoproject.org/wiki/WW30_-_2016-07-21_-_Fu=
ll_Test_Cycle_2.2_M2.rc1#Build_Performance_Test
               10- https://wiki.yoctoproject.org/charts/perf_milestone_GDC/=
bitbake-virtual-kernel.html

Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A01FCA76Efmsmsx101amrcor_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<p class=3D"MsoNormal">Here is the final QA Report for Yocto Project 2.2 M2=
 rc1 <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://wiki.yoctoproject.org/wiki/WW30_-=
_2016-07-21_-_Full_Test_Cycle_2.2_M2.rc1">https://wiki.yoctoproject.org/wik=
i/WW30_-_2016-07-21_-_Full_Test_Cycle_2.2_M2.rc1</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Summary <o:p></o=
:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">There are a total of 40 bugs reported in this test c=
ycle, 19 new and 21 that were raised in previous Milestones/Releases and ap=
peared also in M2. None of them is a big blocker bug, For performance there=
 was an &nbsp;increase of building time
 of about 50% <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Details</span></=
b><span style=3D"font-size:14.0pt">
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp; *Bugs<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>-Eclipse Plugin has some issues but=
 of them will not be applicable on next milestones due reduction of Test Su=
ite
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -There are still 21 M&#43; bugs and 1 High=
 to be implemented/resolved for 2.2 M2 Milestone [1]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Components with new issues found are :<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - ADT/ SDK <=
o:p>
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Toaster<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - BSP<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Meta Yocto=
 <o:p>
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">*Important Bugs <o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=3D"=
font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;backgr=
ound:white">
- Random warning: Unrecognised command on FIFO : 9999 [2]<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;background:white=
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; - Media player cannot be closed Minnow32: 10045 [3]<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;background:white=
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; - Missing 'Connection Manager' icon for qemumips and qemumips64=
: 10025 [4]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;background:white">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - audi=
o - play (ogg-wav) with HDMI-Media player turns off: 10041 [5]<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;background:white">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Fai=
l to build linux-yocto for custom qemumips64 bsp with yocto-bsp: 10016 [6]<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;background:whi=
te">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; - Kernel panic for custom qemux86-64 bsp with =
yocto-bsp: 10026[7]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;background:whi=
te">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; - Fail to run 'bitbake linux-yocto -c menuconf=
ig: 10027 [8]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;background:white"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;background:white">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Full list of th=
e important/new bugs :
<a href=3D"https://wiki.yoctoproject.org/wiki/WW30_-_2016-07-21_-_Full_Test=
_Cycle_2.2_M2.rc1#New_and_notable_issues_Found_during_QA_Test_.26_Community=
">
https://wiki.yoctoproject.org/wiki/WW30_-_2016-07-21_-_Full_Test_Cycle_2.2_=
M2.rc1#New_and_notable_issues_Found_during_QA_Test_.26_Community</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;background:white"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;background:white">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Full list of me=
dium bugs :
<a href=3D"https://wiki.yoctoproject.org/wiki/WW30_-_2016-07-21_-_Full_Test=
_Cycle_2.2_M2.rc1#Other_Bugs_found_during_QA_Test">
https://wiki.yoctoproject.org/wiki/WW30_-_2016-07-21_-_Full_Test_Cycle_2.2_=
M2.rc1#Other_Bugs_found_during_QA_Test</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;background:white"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp; *Performance <o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>- There was an improved times on al=
l the tasks measured on performance expect of the bitbake virtual/kernel. [=
9]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - For bitbake virtual/kernel there was a b=
ig increase (around 50%) on building time [10]<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;background:white"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp; <b>*Links <o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>1- <a href=3D"https://wiki.yoctopro=
ject.org/wiki/WW30_-_2016-07-21_-_Full_Test_Cycle_2.2_M2.rc1#Current_commun=
ity_Open_Bugs_-_Medium.2B.2FHigh">
https://wiki.yoctoproject.org/wiki/WW30_-_2016-07-21_-_Full_Test_Cycle_2.2_=
M2.rc1#Current_community_Open_Bugs_-_Medium.2B.2FHigh</a>
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2- <a href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D9999">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9999</a> <o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3- <a href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D10045">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10045</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4- <a href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D10025">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10025</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5- <a href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D10041">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10041</a> &nbsp;&nbsp;<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6- <a href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D10016">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10016</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7- <a href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D10026">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10026</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8- <a href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D10027">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10027</a> <o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9- <a href=3D"https://wiki.yoctoproject.or=
g/wiki/WW30_-_2016-07-21_-_Full_Test_Cycle_2.2_M2.rc1#Build_Performance_Tes=
t">
https://wiki.yoctoproject.org/wiki/WW30_-_2016-07-21_-_Full_Test_Cycle_2.2_=
M2.rc1#Build_Performance_Test</a>
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10- <a href=3D"https://wiki.yoctoproject.o=
rg/charts/perf_milestone_GDC/bitbake-virtual-kernel.html">
https://wiki.yoctoproject.org/charts/perf_milestone_GDC/bitbake-virtual-ker=
nel.html</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Jos=E9</b><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A01FCA76Efmsmsx101amrcor_--
