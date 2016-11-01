Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02BE1E0049A; Tue,  1 Nov 2016 08:16:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A267BE00444
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 08:16:48 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 01 Nov 2016 08:16:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,580,1473145200"; 
	d="scan'208,217";a="780871060"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Nov 2016 08:16:47 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
	fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Tue, 1 Nov 2016 08:16:47 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.12]) by
	FMSMSX110.amr.corp.intel.com ([169.254.14.41]) with mapi id
	14.03.0248.002; Tue, 1 Nov 2016 08:16:47 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, Nov.
	1, 2016 8:00 AM US Pacific Time
Thread-Index: AdI0UFbLeGLRtumRT5K8ZP4bfZO8qA==
Date: Tue, 1 Nov 2016 15:16:46 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155E572AA3E8@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmZkMzlhNzItMGJmNS00Y2E2LTk5NzAtNTRiY2Y0ZDk5MDhlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IndBY2FYblBvVFdZVElSOFlNRFBPamdVeWhCYjV1RjB3QTR5V0RXXC9KdjNrPSJ9
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, Nov. 1, 2016 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 01 Nov 2016 15:16:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155E572AA3E8fmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E572AA3E8fmsmsx111amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Armin, Ross, Stephen, Mark, Randy, Richard, Saul,



Agenda:



* Opens collection - 5 min (Stephen)

Discussed list of contributors to oe-core Management List



* Yocto Project status - 5 min (Stephen/team)

*        YP 2.2 is getting ready for release.  It should release in the nex=
t few days.

*        YP 2.1.2 should be released in 2-3 weeks

*        YP 2.0.3 should be released in 1-2 weeks

*        YP 2.3 planning is underway.

https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.2_Status

https://wiki.yoctoproject.org/wiki/Yocto_2.2_Schedule

https://wiki.yoctoproject.org/wiki/Yocto_2.2_Features

https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.3_Status

https://wiki.yoctoproject.org/wiki/Yocto_2.3_Schedule

https://wiki.yoctoproject.org/wiki/Yocto_2.3_Features

* Opens - 10 min

Richard - YP 2.3 plans are still being defined; but recipe specific sysroot=
s are in the plan.  We will work on improvements to multi configure.  We go=
t a lot done in YP 2.2, CROPS, e-SDK, etc.  A lot better automated testing.=
  Good discussion about plans for YP 2.3.

* Team Sharing - 10 min

Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:        (503) 712-0534
*    Cell:               (208) 244-4460
* Email:                           stephen.k.jolley@intel.com


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E572AA3E8fmsmsx111amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:"ms sans serif";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;
	mso-fareast-language:EN-US;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	mso-fareast-language:ZH-CN;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
span.EmailStyle20
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
	{mso-list-id:1088307959;
	mso-list-type:hybrid;
	mso-list-template-ids:1790242360 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
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
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Attendees: Armin, Ross, Stephen, Mark, Randy, Rich=
ard, Saul,
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Agenda:<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Opens collection - 5 min (Stephen)<o:p></o:p></s=
pan></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Discussed list of contributors to oe-core Manageme=
nt List<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Yocto Project status - 5 min (Stephen/team)<o:p>=
</o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0 level1 lfo=
1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol"><s=
pan style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times=
 New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
Consolas">YP 2.2 is getting ready for release.&nbsp; It should release in t=
he next few days.<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0 level1 lfo=
1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol"><s=
pan style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times=
 New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
Consolas">YP 2.1.2 should be released in 2-3 weeks<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0 level1 lfo=
1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol"><s=
pan style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times=
 New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
Consolas">YP 2.0.3 should be released in 1-2 weeks<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0 level1 lfo=
1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol"><s=
pan style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times=
 New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
Consolas">YP 2.3 planning is underway.<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><a href=3D"https://wiki.yoctoproject.org/wiki/Yoct=
o_Project_v2.2_Status">https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.=
2_Status</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><a href=3D"https://wiki.yoctoproject.org/wiki/Yoct=
o_2.2_Schedule">https://wiki.yoctoproject.org/wiki/Yocto_2.2_Schedule</a><o=
:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><a href=3D"https://wiki.yoctoproject.org/wiki/Yoct=
o_2.2_Features">https://wiki.yoctoproject.org/wiki/Yocto_2.2_Features</a>
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><a href=3D"https://wiki.yoctoproject.org/wiki/Yoct=
o_Project_v2.3_Status">https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.=
3_Status</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><a href=3D"https://wiki.yoctoproject.org/wiki/Yoct=
o_2.3_Schedule">https://wiki.yoctoproject.org/wiki/Yocto_2.3_Schedule</a><o=
:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><a href=3D"https://wiki.yoctoproject.org/wiki/Yoct=
o_2.3_Features">https://wiki.yoctoproject.org/wiki/Yocto_2.3_Features</a>
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Opens - 10 min
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Richard &#8211; YP 2.3 plans are still being defin=
ed; but recipe specific sysroots are in the plan.&nbsp; We will work on imp=
rovements to multi configure.&nbsp; We got a lot done
 in YP 2.2, CROPS, e-SDK, etc.&nbsp; A lot better automated testing.&nbsp; =
Good discussion about plans for YP 2.3.<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Team Sharing - 10 min<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"page-break-after:avoid;text-autospace:none"=
><b><i><span style=3D"font-size:16.0pt;font-family:&quot;Times New Roman&qu=
ot;,serif;color:purple">Stephen K. Jolley</span></i></b><b><i><span style=
=3D"font-size:16.0pt;font-family:&quot;Tahoma&quot;,sans-serif;color:purple=
"><o:p></o:p></span></i></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Courier New&quot;;color:blue">Yocto Project Program Manager<o:p></o:p></spa=
n></b></p>
<p class=3D"MsoNormal" style=3D"page-break-after:avoid;text-autospace:none"=
><b><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;col=
or:fuchsia">INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Wingdings;color:black">(<=
/span><span style=3D"font-family:&quot;ms sans serif&quot;;color:teal">
</span><span style=3D"font-size:8.0pt;font-family:&quot;ms sans serif&quot;=
;color:teal">&nbsp;&nbsp;</span><b><span style=3D"font-size:8.0pt;font-fami=
ly:&quot;Comic Sans MS&quot;;color:teal">Work Telephone</span></b><span sty=
le=3D"font-family:&quot;ms sans serif&quot;;color:teal">:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style=3D"font-size:9.0pt;font-family:&quot;ms sans serif&quot;=
">(503) 712-0534<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:Wingdings=
;color:black">(</span><span style=3D"font-size:9.0pt;font-family:&quot;ms s=
ans serif&quot;;color:teal">&nbsp;&nbsp;&nbsp;
</span><b><span style=3D"font-size:8.0pt;font-family:&quot;Comic Sans MS&qu=
ot;;color:teal">Cell</span></b><span style=3D"font-size:9.0pt;font-family:&=
quot;ms sans serif&quot;;color:teal">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style=3D"font-size:9.0pt;font-family:&quot;ms sans serif&quot;=
">(208) 244-4460<span style=3D"color:black"><o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:Wingdings=
">* </span>
<b><span lang=3D"FR" style=3D"font-size:8.0pt;font-family:&quot;Comic Sans =
MS&quot;;color:teal">Email</span></b><span lang=3D"FR" style=3D"font-size:9=
.0pt;font-family:&quot;ms sans serif&quot;;color:teal">:</span><span lang=
=3D"FR" style=3D"font-size:9.0pt;font-family:&quot;ms sans serif&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<u><span style=3D"color:blue">stephen.k.jolley@intel.com</span></u=
></span><span lang=3D"FR" style=3D"font-size:12.0pt;font-family:&quot;Arial=
&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E572AA3E8fmsmsx111amrcor_--
