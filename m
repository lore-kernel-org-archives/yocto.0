Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 763F8E00B8A; Tue, 13 May 2014 09:10:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 385D3E00770
	for <yocto@yoctoproject.org>; Tue, 13 May 2014 09:10:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 May 2014 09:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1044,1389772800"; 
	d="scan'208,217";a="510978480"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga001.jf.intel.com with ESMTP; 13 May 2014 09:10:32 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 13 May 2014 09:10:31 -0700
Received: from orsmsx155.amr.corp.intel.com ([169.254.7.180]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.229]) with mapi id
	14.03.0123.003; Tue, 13 May 2014 09:10:24 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, May
	6, 2014 8:00 AM US Pacific Time
Thread-Index: Ac9uxdjsdNOtdxADR3GLE6gHK3hI5w==
Date: Tue, 13 May 2014 16:10:24 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155E5507A54C@ORSMSX155.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, May 6, 2014 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 13 May 2014 16:10:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155E5507A54CORSMSX155amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E5507A54CORSMSX155amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Stephen, Ross, Sean, Tom Z, Richard, Scott, Belen, Cristian, Pau=
l, AlexG, Cristiana, Jessica, Nitin, Michael, Saul,



* Opens collection - 5 min (Stephen)

Sean - Meta AMD mailing list



* Yocto 1.7 status - 5 min (Stephen/team)

We are deep into doing the planning 1.7 and will being work on milestone 1 =
shortly.

We have completed QA for 1.5.2 and are reviewing releasing the point releas=
e.

We are reviewing if we can do a 1.4.4 due to the Heartbleed issue.

https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.7_Status

https://wiki.yoctoproject.org/wiki/Yocto_1.7_Schedule

https://wiki.yoctoproject.org/wiki/Yocto_1.7_Features

* SWAT team rotation: Paul -> Saul

  https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team

* Opens - 10 min

Sean - Meta AMD mailing list has been created.  Sign up if you have interes=
t and participation is welcome.



* Team Sharing - 10 min
Ross - Discussed that Valentin has sent a patch series to oe-core to upgrad=
e Mesa to version 10.  This is a major version upgrade and I suspect this i=
s going to break BSPs.  Can anyone who maintains a BSP that uses Mesa pleas=
e test it, in particular BSPs that use mesa-gl.
AlexD - Toaster has finished its automated test infrastructure that test an=
y patch sent for review/integration;
this should drive up code quality for toaster, since it prevents regression=
s, and sets up the basis for test-driven development.

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


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E5507A54CORSMSX155amrcor_
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
pt;font-family:Consolas">Attendees: Stephen, Ross, Sean, Tom Z, Richard, Sc=
ott, Belen, Cristian, Paul, AlexG, Cristiana, Jessica, Nitin, Michael, Saul=
,
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Opens collection - 5 min (Stephen)<o:p></o:p></s=
pan></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Sean &#8211; Meta AMD mailing list
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Yocto 1.7 status - 5 min (Stephen/team)<o:p></o:=
p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">We are deep into doing the planning 1.7 and will b=
eing work on milestone 1 shortly.
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">We have completed QA for 1.5.2 and are reviewing r=
eleasing the point release.<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">We are reviewing if we can do a 1.4.4 due to the H=
eartbleed issue.<o:p></o:p></span></p>
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
pt;font-family:Consolas">* SWAT team rotation: Paul -&gt; Saul<o:p></o:p></=
span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">&nbsp;
<a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team=
">https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team</a><o:p>=
</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Opens - 10 min
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Sean &#8211; Meta AMD mailing list has been create=
d.&nbsp; Sign up if you have interest and participation is welcome.&nbsp;&n=
bsp;
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Team Sharing - 10 min<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN">Ross &#8211; Discussed that Valentin has sent a patch series to=
 oe-core to upgrade Mesa to version 10.&nbsp; This is a major version upgra=
de and I suspect this is going to break BSPs.&nbsp;
 Can anyone who maintains a BSP that uses Mesa please test it, in particula=
r BSPs that use mesa-gl.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN">AlexD &#8211; Toaster has finished its automated test infrastru=
cture that test any patch sent for review/integration;<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN">this should drive up code quality for toaster, since it prevent=
s regressions, and sets up the basis for test-driven development.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">-----Orig=
inal Appointment-----</span><o:p></o:p></p>
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

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E5507A54CORSMSX155amrcor_--
