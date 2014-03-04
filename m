Return-Path: <stephen.k.jolley@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8E87E009D9
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 08:24:29 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Mar 2014 08:19:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,585,1389772800"; 
	d="scan'208,217";a="493911926"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by orsmga002.jf.intel.com with ESMTP; 04 Mar 2014 08:20:58 -0800
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 4 Mar 2014 08:20:47 -0800
Received: from fmsmsx111.amr.corp.intel.com ([169.254.2.5]) by
	fmsmsx117.amr.corp.intel.com ([169.254.13.37]) with mapi id
	14.03.0123.003; Tue, 4 Mar 2014 08:20:47 -0800
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, March
	4, 2014 8:00 AM US Pacific Time
Thread-Index: Ac83xbBYKkXgOZdIROyjPy73PpPkJA==
Date: Tue, 4 Mar 2014 16:20:46 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155E54FA970E@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, March 4, 2014 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 04 Mar 2014 16:24:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155E54FA970Efmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E54FA970Efmsmsx111amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Stephen, Michael, Vali, Ross, Mark, Bruce, Jessica, Tom, Randy, =
Cristiana, Belen, Richard, Matthew, Jefro, Cristian, Jeff, Paul, Nitin, Sau=
l, Beth



* Opens collection - 5 min (Stephen)

* Yocto 1.6 status - 10 min (Stephen/team)

YP 1.6 M3 RC2 was approved to be released.  Should be released in the short=
ly.

YP 1.6 is drawing to a close over the new few weeks and some features will =
be dropped to insure a stable final release by the target release date of A=
pril 25th.

  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.6_Status

  https://wiki.yoctoproject.org/wiki/Yocto_1.6_Features

* SWAT team rotation: Paul -> Saul

  https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team

* Opens - 10 min

Michael - Bugzilla upgrades.  We are using 4.2 and 4.4 is out.  Testopia is=
 not yet supporting 4.4.  He would like users/volunteers to help him test t=
he upgrade to 4.4 with Testopia.  Saul agreed to help.

Michael - Infrastructure status update -  We are moving to a new server and=
 are in process with that move.

Richard - A number of the Autobuilders are offline and need some attention =
to get them up and running again.  Michael will work with Beth to get them =
running.

* Team Sharing - 20 min

Richard - Removal of PRink code is progressing.  Need to us a separate PR s=
erver.  Will be a warning in 1.6 and not work so after.   Standard Autotool=
s now can use separate build directories.   Need to decide how aggressive w=
e will in 1.6 about implementing this feature.  It is strongly desired.



Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:          (480) 554-5904
*    Cell:                                (208) 244-4460
* Email:                             stephen.k.jolley@intel.com


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E54FA970Efmsmsx111amrcor_
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
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
pt;font-family:Consolas">Attendees: Stephen, Michael, Vali, Ross, Mark, Bru=
ce, Jessica, Tom, Randy, Cristiana, Belen, Richard, Matthew, Jefro, Cristia=
n, Jeff, Paul, Nitin, Saul, Beth<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Opens collection - 5 min (Stephen)<o:p></o:p></s=
pan></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Yocto 1.6 status - 10 min (Stephen/team)<o:p></o=
:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">YP 1.6 M3 RC2 was approved to be released.&nbsp; S=
hould be released in the shortly.<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">YP 1.6 is drawing to a close over the new few week=
s and some features will be dropped to insure a stable final release by the=
 target release date of April 25<sup>th</sup>.
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">&nbsp;
</span><span style=3D"font-size:11.0pt"><a href=3D"https://wiki.yoctoprojec=
t.org/wiki/Yocto_Project_v1.6_Status"><span style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;">https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.6_Status</span></a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">&nbsp;
</span><span style=3D"font-size:11.0pt"><a href=3D"https://wiki.yoctoprojec=
t.org/wiki/Yocto_1.6_Features"><span style=3D"font-family:&quot;Calibri&quo=
t;,&quot;sans-serif&quot;">https://wiki.yoctoproject.org/wiki/Yocto_1.6_Fea=
tures</span></a><o:p></o:p></span></p>
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
pt;font-family:Consolas">Michael &#8211; Bugzilla upgrades.&nbsp; We are us=
ing 4.2 and 4.4 is out.&nbsp; Testopia is not yet supporting 4.4.&nbsp; He =
would like users/volunteers to help him test the upgrade
 to 4.4 with Testopia. &nbsp;Saul agreed to help.<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Michael &#8211; Infrastructure status update - &nb=
sp;We are moving to a new server and are in process with that move.&nbsp;&n=
bsp;
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Richard &#8211; A number of the Autobuilders are o=
ffline and need some attention to get them up and running again. &nbsp;Mich=
ael will work with Beth to get them running.
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Team Sharing - 20 min<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Richard &#8211; Removal of PRink code is progressi=
ng.&nbsp; Need to us a separate PR server.&nbsp; Will be a warning in 1.6 a=
nd not work so after.&nbsp; &nbsp;Standard Autotools now can use
 separate build directories.&nbsp; &nbsp;Need to decide how aggressive we w=
ill in 1.6 about implementing this feature.&nbsp; It is strongly desired. &=
nbsp;&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Thanks,<o:p></o:p></span></p>
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
">(480) 554-5904<o:p></o:p></span></p>
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

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E54FA970Efmsmsx111amrcor_--
