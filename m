Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 753B9E00F7F; Tue,  6 Sep 2016 08:20:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 434B0E00F7A
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 08:20:53 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga103.jf.intel.com with ESMTP; 06 Sep 2016 08:20:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,292,1470726000"; d="scan'208,217";a="5278083"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by orsmga005.jf.intel.com with ESMTP; 06 Sep 2016 08:20:53 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Tue, 6 Sep 2016 08:20:52 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.129]) by
	fmsmsx101.amr.corp.intel.com ([10.18.124.199]) with mapi id
	14.03.0248.002; Tue, 6 Sep 2016 08:20:52 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, Sept.
	6, 2016 8:00 AM US Pacific Time
Thread-Index: AdIITwWrZEIcyqgTT0SPBnD/6cUygA==
Date: Tue, 6 Sep 2016 15:20:51 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155E57240DB5@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.107]
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmZkMzlhNzItMGJmNS00Y2E2LTk5NzAtNTRiY2Y0ZDk5MDhlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IndBY2FYblBvVFdZVElSOFlNRFBPamdVeWhCYjV1RjB3QTR5V0RXXC9KdjNrPSJ9
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, Sept. 6, 2016 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 06 Sep 2016 15:20:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155E57240DB5fmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E57240DB5fmsmsx111amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Armin, Stephen, Joshua, Ross, Sona, Michael, Richard,



* Opens collection - 5 min (Stephen)

* Yocto Project status - 5 min (Stephen/team)

We are struggling to get M3 stable. But, YP 2.2 M3 is getting close.

https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.2_Status

https://wiki.yoctoproject.org/wiki/Yocto_2.2_Schedule

https://wiki.yoctoproject.org/wiki/Yocto_2.2_Features

* Opens - 10 min

Do we plan any dot releases?  Yes, after YP 2.2 is released.  We might do a=
 2.1.2 and 2.0.3 shortly after YP 2.2 is released.

* Team Sharing - 10 min

Richard discussed the remaining 4 key issues blocking M3.  We are making pr=
ogress on all of these.

*        Frequent SSH connection failures to qemuppc during oe-selftest:

*        Race in do_testimage:

*        Multiple SMART failures during oe-selftest when calling `smart upd=
ate`.

*        Fedora autobuilders have intermittent network error to git.yoctopr=
oject.org in oe-selftest:
      Sona - We discussed 7515 and if it can make it into M3.
      Armin - Can we get SMART to Python 3 in YP 2.2?  No, it will be targe=
ted YP 2.3.

Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:        (503) 712-0534
*    Cell:               (208) 244-4460
* Email:                            stephen.k.jolley@intel.com


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E57240DB5fmsmsx111amrcor_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	{font-family:"MS Sans Serif";}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
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
	{mso-list-id:20909774;
	mso-list-type:hybrid;
	mso-list-template-ids:891697380 67698689 67698691 67698693 67698689 676986=
91 67698693 67698689 67698691 67698693;}
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
pt;font-family:Consolas">Attendees: Armin, Stephen, Joshua, Ross, Sona, Mic=
hael, Richard,
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Opens collection - 5 min (Stephen)<o:p></o:p></s=
pan></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Yocto Project status - 5 min (Stephen/team)<o:p>=
</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt;text-indent:.5in"><span style=
=3D"font-size:11.0pt;font-family:Consolas">We are struggling to get M3 stab=
le. But, YP 2.2 M3 is getting close.&nbsp;
<o:p></o:p></span></p>
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
pt;font-family:Consolas">* Opens - 10 min
<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;margin-bottom:.0001pt">
<span style=3D"font-size:11.0pt;font-family:Consolas">Do we plan any dot re=
leases?&nbsp; Yes, after YP 2.2 is released.&nbsp; We might do a 2.1.2 and =
2.0.3 shortly after YP 2.2 is released.
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Team Sharing &#8211; 10 min<o:p></o:p></span></p=
>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.25in;margin-bottom:.0001pt">
<span style=3D"font-size:11.0pt;font-family:Consolas">Richard discussed the=
 remaining 4 key issues blocking M3.&nbsp; We are making progress on all of=
 these.
<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.75in;text-indent:-.25in;mso=
-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Frequent SSH connection failures to qemuppc =
during oe-selftest:<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.75in;text-indent:-.25in;mso=
-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Race in do_testimage:<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.75in;text-indent:-.25in;mso=
-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Multiple SMART failures during oe-selftest w=
hen calling `smart update`.<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.75in;text-indent:-.25in;mso=
-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Fedora autobuilders have intermittent networ=
k error to git.yoctoproject.org in oe-selftest:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sona &#8211; We discu=
ssed 7515 and if it can make it into M3.
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Armin &#8211; Ca=
n we get SMART to Python 3 in YP 2.2?&nbsp; No, it will be targeted YP 2.3.=
<o:p></o:p></p>
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
/span><span style=3D"font-family:&quot;MS Sans Serif&quot;;color:teal">
</span><span style=3D"font-size:8.0pt;font-family:&quot;MS Sans Serif&quot;=
;color:teal">&nbsp;&nbsp;</span><b><span style=3D"font-size:8.0pt;font-fami=
ly:&quot;Comic Sans MS&quot;;color:teal">Work Telephone</span></b><span sty=
le=3D"font-family:&quot;MS Sans Serif&quot;;color:teal">:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style=3D"font-size:9.0pt;font-family:&quot;MS Sans Serif&quot;=
">(503) 712-0534<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:Wingdings=
;color:black">(</span><span style=3D"font-size:9.0pt;font-family:&quot;MS S=
ans Serif&quot;;color:teal">&nbsp;&nbsp;&nbsp;
</span><b><span style=3D"font-size:8.0pt;font-family:&quot;Comic Sans MS&qu=
ot;;color:teal">Cell</span></b><span style=3D"font-size:9.0pt;font-family:&=
quot;MS Sans Serif&quot;;color:teal">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style=3D"font-size:9.0pt;font-family:&quot;MS Sans Serif&quot;=
">(208) 244-4460<span style=3D"color:black"><o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:Wingdings=
">* </span>
<b><span lang=3D"FR" style=3D"font-size:8.0pt;font-family:&quot;Comic Sans =
MS&quot;;color:teal">Email</span></b><span lang=3D"FR" style=3D"font-size:9=
.0pt;font-family:&quot;MS Sans Serif&quot;;color:teal">:</span><span lang=
=3D"FR" style=3D"font-size:9.0pt;font-family:&quot;MS Sans Serif&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;
<u><span style=3D"color:blue">stephen.k.jolley@intel.com</span></u></span><=
span lang=3D"FR" style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E57240DB5fmsmsx111amrcor_--
