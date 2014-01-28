Return-Path: <stephen.k.jolley@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A37AAE0074F;
	Tue, 28 Jan 2014 08:45:27 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Jan 2014 08:45:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,736,1384329600"; 
	d="scan'208,217";a="466029715"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jan 2014 08:45:26 -0800
Received: from fmsmsx120.amr.corp.intel.com (10.19.9.29) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 28 Jan 2014 08:45:26 -0800
Received: from fmsmsx111.amr.corp.intel.com ([169.254.2.168]) by
	fmsmsx120.amr.corp.intel.com ([169.254.14.200]) with mapi id
	14.03.0123.003; Tue, 28 Jan 2014 08:45:25 -0800
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "achaudha@mvista.com" <achaudha@mvista.com>, "Arce Moreno, Abraham"
	<abraham.arce.moreno@intel.com>, "Ashfield, Bruce (Wind River)"
	<bruce.ashfield@windriver.com>, "Barros Pena, Belen"
	<belen.barros.pena@intel.com>, "Burton, Ross" <ross.burton@intel.com>, 
	"Butler, Paul A (Wind River)" <paul.butler@windriver.com>,
	"dcauchy@mvista.com" <dcauchy@mvista.com>, "Chisanovici, IonutX"
	<ionutx.chisanovici@intel.com>, "valentin.cobelea@enea.com"
	<valentin.cobelea@enea.com>, "Damian, Alexandru"
	<alexandru.damian@intel.com>, "anders@chargestorm.se"
	<anders@chargestorm.se>, "DeVries, Alex (Wind River)"
	<alex.devries@windriver.com>, "denys@ti.com" <denys@ti.com>, "Erway, Tracey
	M" <tracey.m.erway@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Gavaz,
	Ionut A" <ionut.a.gavaz@intel.com>, 
	"Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>,
	"michael@yoctoproject.org" <michael@yoctoproject.org>, "Hart, Darren"
	<darren.hart@intel.com>, "Harvey, Michael" <michael.harvey@intel.com>, 
	"Hatle, Mark G (Wind River)" <mark.hatle@windriver.com>,
	"sean_hudson@mentor.com" <sean_hudson@mentor.com>, "Iorga, Cristian"
	<cristian.iorga@intel.com>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>, 
	"Kamble, Nitin A" <nitin.a.kamble@intel.com>, "chris.kaminski@tobias.tv"
	<chris.kaminski@tobias.tv>, "jdk@ti.com" <jdk@ti.com>, "Letnes, Thaddeus C"
	<thaddeus.c.letnes@intel.com>, "Liu, Song" <song.liu@intel.com>, "Long, 
	Stephen J (Wind River)" <steve.long@windriver.com>, "ylong@wpi.edu"
	<ylong@wpi.edu>, "chase.maupin@ti.com" <chase.maupin@ti.com>, "Moeller, 
	Thorsten" <thorsten.moeller@intel.com>, "Moses,
	Fred" <fred.moses@intel.com>, 
	"Mueller, Robert" <robert.mueller@intel.com>, "Ong, Boon Leong"
	<boon.leong.ong@intel.com>, "Osier-mixon, Jeffrey"
	<jeffrey.osier-mixon@intel.com>, "Palalau, AlexandruX"
	<alexandrux.palalau@intel.com>, "Patel,
	Keyur R" <keyur.r.patel@intel.com>, 
	"Petrisor, Ileana" <ileana.petrisor@intel.com>, "Polk,
	Jeffrey (Wind River)"
	<jeff.polk@windriver.com>, "Popa, Valentin" <valentin.popa@intel.com>, 
	"Pruteanu, Codrin C" <codrin.c.pruteanu@intel.com>, "jpuhlman@gmail.com"
	<jpuhlman@gmail.com>, "Purdie, Richard" <richard.purdie@intel.com>,
	"sraina@mvista.com" <sraina@mvista.com>, "Ranslam, Robert E (Wind River)"
	<rob.ranslam@windriver.com>, "Rifenbark, Scott M"
	<scott.m.rifenbark@intel.com>, "irfan_sadiq@mentor.com"
	<irfan_sadiq@mentor.com>, "olivia.salisbury@tobias.tv"
	<olivia.salisbury@tobias.tv>, "Santana Lopez, Mario A"
	<mario.a.santana.lopez@intel.com>, "Sarmiento, Sara F"
	<sara.f.sarmiento@intel.com>, "Seow,
	Chen Yong" <chen.yong.seow@intel.com>, 
	"Serban, Laurentiu" <laurentiu.serban@intel.com>, "Stewart, David C"
	<david.c.stewart@intel.com>, "Stoicescu, CorneliuX"
	<corneliux.stoicescu@intel.com>, "Stukov, Lina" <lina.stukov@intel.com>,
	"Szankin, Maciej" <maciej.szankin@intel.com>, "Ta, Lieu T (Wind River)"
	<lieu.ta@windriver.com>, "Voicu, Cristiana" <cristiana.voicu@intel.com>,
	"ravi.vompolu@mathworks.com" <ravi.vompolu@mathworks.com>, "Wold, Saul"
	<saul.wold@intel.com>, "Woodyatt, James" <james.woodyatt@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Zanussi, Tom"
	<tom.zanussi@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	January 28, 2014 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac8cSE7pWqd6VmuvSAe2IXcRQVLrHA==
Date: Tue, 28 Jan 2014 16:45:25 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155E49417701@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 28 Jan 2014 08:58:42 -0800
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, January 28, 2014 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 28 Jan 2014 16:45:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155E49417701fmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E49417701fmsmsx111amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Stephen, Mark Hardly, Paul Eggleton, Denys, Tom Z, Jeff Polk, Sc=
ott Rifenbark, Saul, Richard, Jessica, Nitin, Cristiana, Darren



* Opens collection - 5 min (Stephen)

* Yocto 1.6 status - 10 min (Richard)

Richard: 1.6 M2 RC2 should be finished testing this week.  This looks like =
it will this should list.  A number of patches at the links below are in th=
is version.

  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.6_Status

  https://wiki.yoctoproject.org/wiki/Yocto_1.6_Features

* SWAT team rotation: (Watches the Autobuilder for issues.)  Christina is a=
 go for next week.  https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_=
Swat_Team

* Opens Discussion

Pidge: Autobuilder down time tonight. - We are trying to get some builds to=
 work and having some issues.  We will take it down and restart it tonight.=
  MUT should be ready tonight. (Master Under Test)

Saul: put the meeting passcode in #yocto IRC when meeting starts! (Stephen =
will do going forward.)

Ionut: Will FRI2 (FishRiverIsland 2) BSP still need to be tested?  Richard =
points we should continue testing of it.  If you are having issues, please =
file a bug report.

Mathew: What kernel will 1.6 be on. (Darren - We will lock the kernel versi=
on about 6 week before development cut off.)

* Team Sharing - 20 min
Mark: still working on user id/group id changes - patch posted and updated.=
  Another update coming shortly.
Saul: Working with Peter C. working on sudo issue and password file not exi=
sting at early points of the build.  Working on a patch soon.
Pidge: Anyone at FOSDEM conference besides Richard?  (no)

Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:          (480) 554-5904
*    Cell:                                (208) 244-4460
* Email:                             stephen.k.jolley@intel.com


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E49417701fmsmsx111amrcor_
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
pt;font-family:Consolas">Attendees: Stephen, Mark Hardly, Paul Eggleton, De=
nys, Tom Z, Jeff Polk, Scott Rifenbark, Saul, Richard, Jessica, Nitin, Cris=
tiana, Darren<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Opens collection - 5 min (Stephen)<o:p></o:p></s=
pan></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Yocto 1.6 status - 10 min (Richard)<o:p></o:p></=
span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Richard: 1.6 M2 RC2 should be finished testing thi=
s week.&nbsp; This looks like it will this should list.&nbsp; A number of p=
atches at the links below are in this version.&nbsp;
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
pt;font-family:Consolas">* SWAT team rotation: (Watches the Autobuilder for=
 issues.)&nbsp; Christina is a go for next week. &nbsp;<a href=3D"https://w=
iki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team">https://wiki.yocto=
project.org/wiki/Yocto_Build_Failure_Swat_Team</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Opens Discussion
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Pidge: Autobuilder down time tonight. &#8211; We a=
re trying to get some builds to work and having some issues.&nbsp; We will =
take it down and restart it tonight.&nbsp; MUT should
 be ready tonight. (Master Under Test)<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Saul: put the meeting passcode in #yocto IRC when =
meeting starts! (Stephen will do going forward.)<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Ionut: Will FRI2 (FishRiverIsland 2) BSP still nee=
d to be tested?&nbsp; Richard points we should continue testing of it.&nbsp=
; If you are having issues, please file a bug
 report. <o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">Mathew: What kernel will 1.6 be on. (Darren - We w=
ill lock the kernel version about 6 week before development cut off.)<o:p><=
/o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:Consolas">* Team Sharing - 20 min<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN">Mark: still working on user id/group id changes &#8211; patch p=
osted and updated.&nbsp; Another update coming shortly.<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN">Saul: Working with Peter C. working on sudo issue and password =
file not existing at early points of the build.&nbsp; Working on a patch so=
on.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas;mso-fareast-lang=
uage:ZH-CN">Pidge: Anyone at FOSDEM conference besides Richard?&nbsp; (no)<=
o:p></o:p></span></p>
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

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E49417701fmsmsx111amrcor_--
