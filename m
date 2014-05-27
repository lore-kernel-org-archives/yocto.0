Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1361AE0073D; Tue, 27 May 2014 08:19:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	RDNS_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga02.intel.com (unknown [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC3F9E006EC
	for <yocto@yoctoproject.org>; Tue, 27 May 2014 08:19:50 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 May 2014 08:19:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,919,1392192000"; 
	d="scan'208,217";a="547171335"
Received: from fmsmsx103.amr.corp.intel.com ([10.19.9.34])
	by orsmga002.jf.intel.com with ESMTP; 27 May 2014 08:19:48 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
	FMSMSX103.amr.corp.intel.com (10.19.9.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 27 May 2014 08:19:46 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.120]) by
	fmsmsx118.amr.corp.intel.com ([169.254.1.146]) with mapi id
	14.03.0123.003; Tue, 27 May 2014 08:19:45 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, May
	27, 2014 8:00 AM US Pacific Time
Thread-Index: Ac95vxb5Hm7lMzAYSgu9tckXgYcXIA==
Date: Tue, 27 May 2014 15:19:45 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155E5518D495@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, May 27, 2014 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 27 May 2014 15:19:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155E5518D495fmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E5518D495fmsmsx111amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Stephen, Jeff, Armin, Saul, Scott, Sean, Tom, Paul, Belen, Mathe=
w, Bruce, Richard, Ross, Jessica, Alex, Nitin, Michael



* Opens collection - 5 min (Stephen)

* Yocto 1.7 status - 5 min (Stephen/team)

https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.7_Status

https://wiki.yoctoproject.org/wiki/Yocto_1.7_Schedule

https://wiki.yoctoproject.org/wiki/Yocto_1.7_Features

YP 1.7 M1 is under work.  RC1 should be done the week of 6/18 - WW25. YP 1.=
4.4 should be released this week.  YP 1.5.2. has been released.  YP 1.6.1 m=
ight happen WW27 if there is a need for it.

* SWAT team rotation: Ross -> Cristian

https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team

* Opens - 10 min

* Team Sharing - 10 min

Richard - Has been working on the python dev shell.
Paul - Sent out patches late last week covering QT for .8.  Also looking at=
 some errors in oe-core, they should all be cleared up now.
Saul - Developing a 1.6.1 in the contribute branch.  If you have patches yo=
u want back-ported please work with Saul.
Ross - Sent out some patches for mesa 10 and would like feedback and if mes=
a 9 should be phased out. Most likely will keep both until 1.7 releases.
AlexD - Working on build functions for Toaster.  Would like feedback on pos=
tings about enhancements planned.
Michael - Will be adding a daily bug tracking capability and working with A=
lexG for build performance graphing.

-----Original Appointment-----

We encourage people attending the meeting to logon the Yocto Project IRC ch=
ancel during the meeting (optional):



Yocto IRC: http://webchat.freenode.net/?channels=3D#yocto

IRC Tutorial: http://www.irchelp.org/irchelp/irctutorial.html

Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:          (503) 712-0534
*    Cell:                                (208) 244-4460
* Email:                             stephen.k.jolley@intel.com


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E5518D495fmsmsx111amrcor_
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
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:"MS Sans Serif";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
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
	font-family:"Times New Roman","serif";
	mso-fareast-language:ZH-CN;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
span.EmailStyle20
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Attendees: Stephen, Jeff, Armin, Saul, Scott, Sean=
, Tom, Paul, Belen, Mathew, Bruce, Richard, Ross, Jessica, Alex, Nitin, Mic=
hael<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Opens collection - 5 min (Stephen)<o:p></o:p></s=
pan></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Yocto 1.7 status - 5 min (Stephen/team)<o:p></o:=
p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><a href=3D"https://wiki.yoctoproject.org/wiki/Yoct=
o_Project_v1.7_Status">https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
7_Status</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><a href=3D"https://wiki.yoctoproject.org/wiki/Yoct=
o_1.7_Schedule">https://wiki.yoctoproject.org/wiki/Yocto_1.7_Schedule</a><o=
:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><a href=3D"https://wiki.yoctoproject.org/wiki/Yoct=
o_1.7_Features">https://wiki.yoctoproject.org/wiki/Yocto_1.7_Features</a><o=
:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">YP 1.7 M1 is under work.&nbsp; RC1 should be done =
the week of 6/18 &#8211; WW25. YP 1.4.4 should be released this week.&nbsp;=
 YP 1.5.2. has been released.&nbsp; YP 1.6.1 might happen
 WW27 if there is a need for it.<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* SWAT team rotation: Ross -&gt; Cristian<o:p></o:=
p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><a href=3D"https://wiki.yoctoproject.org/wiki/Yoct=
o_Build_Failure_Swat_Team">https://wiki.yoctoproject.org/wiki/Yocto_Build_F=
ailure_Swat_Team</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Opens - 10 min
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Team Sharing - 10 min<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Richard &#8211; Has been working on the python dev=
 shell.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN">Paul &#8211; Sent out patches late last week covering QT for .8=
. &nbsp;Also looking at some errors in oe-core, they should all be cleared =
up now.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN">Saul &#8211; Developing a 1.6.1 in the contribute branch.&nbsp;=
 If you have patches you want back-ported please work with Saul.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN">Ross &#8211; Sent out some patches for mesa 10 and would like f=
eedback and if mesa 9 should be phased out. Most likely will keep both unti=
l 1.7 releases.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN">AlexD &#8211; Working on build functions for Toaster.&nbsp; Wou=
ld like feedback on postings about enhancements planned.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN">Michael &#8211; Will be adding a daily bug tracking capability =
and working with AlexG for build performance graphing.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:Consolas;mso-fareast-language:ZH-CN">-----Original Appointment-----<o=
:p></o:p></span></p>
<p class=3D"MsoPlainText">We encourage people attending the meeting to logo=
n the Yocto Project IRC chancel during the meeting (optional):<o:p></o:p></=
p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Yocto IRC: <a href=3D"http://webchat.freenode.net=
/?channels=3D#yocto">
http://webchat.freenode.net/?channels=3D#yocto</a><o:p></o:p></p>
<p class=3D"MsoPlainText">IRC Tutorial: <a href=3D"http://www.irchelp.org/i=
rchelp/irctutorial.html">
http://www.irchelp.org/irchelp/irctutorial.html</a> <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"page-break-after:avoid;text-autospace:none"=
><b><i><span style=3D"font-size:16.0pt;font-family:&quot;Times New Roman&qu=
ot;,&quot;serif&quot;;color:purple">Stephen K. Jolley</span></i></b><b><i><=
span style=3D"font-size:16.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-se=
rif&quot;;color:purple"><o:p></o:p></span></i></b></p>
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style=3D"font-size:9.0pt;font-family:&quot;MS Sans Serif&quot;=
">(503) 712-0534<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:Wingdings=
;color:black">(</span><span style=3D"font-size:9.0pt;font-family:&quot;MS S=
ans Serif&quot;;color:teal">&nbsp;&nbsp;&nbsp;
</span><b><span style=3D"font-size:8.0pt;font-family:&quot;Comic Sans MS&qu=
ot;;color:teal">Cell</span></b><span style=3D"font-size:9.0pt;font-family:&=
quot;MS Sans Serif&quot;;color:teal">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
sp;&nbsp;&nbsp;
<u><span style=3D"color:blue">stephen.k.jolley@intel.com</span></u></span><=
span lang=3D"FR" style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E5518D495fmsmsx111amrcor_--
