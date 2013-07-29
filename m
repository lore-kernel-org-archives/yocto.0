Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEA10E0044E
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 15:37:21 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Jul 2013 15:37:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,773,1367996400"; 
	d="scan'208,217";a="338692300"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by azsmga001.ch.intel.com with ESMTP; 29 Jul 2013 15:37:18 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 29 Jul 2013 15:37:18 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.194]) by
	ORSMSX155.amr.corp.intel.com ([169.254.7.247]) with mapi id
	14.03.0123.003; Mon, 29 Jul 2013 15:37:17 -0700
From: "Liu, Song" <song.liu@intel.com>
To: 'Anders Darander' <anders@chargestorm.se>, "Barros Pena, Belen"
	<belen.barros.pena@intel.com>, "Bodke, Kishore K"
	<kishore.k.bodke@intel.com>,
	'Bruce Ashfield' <bruce.ashfield@windriver.com>, 
	'Daniel Cauchy' <dcauchy@mvista.com>, "'deVries, Alex'"
	<Alex.deVries@windriver.com>, "'Dixon, Brad'" <Brad_Dixon@mentor.com>, 
	"Dmytriyenko, Denys" <denys@ti.com>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Hart, Darren" <darren.hart@intel.com>, 
	"'Hatle, Mark'" <mark.hatle@windriver.com>, 'Jeremy Puhlman'
	<jpuhlman@gmail.com>, "Kridner, Jason" <jdk@ti.com>,
	"'Lieu.Ta@windriver.com'" <'Lieu.Ta@windriver.com'>, "Lock, Joshua"
	<joshua.lock@intel.com>, "'McCombe, Kevin'" <kevin.mccombe@windriver.com>, 
	"Moeller, Thorsten" <thorsten.moeller@intel.com>, 'Sanjay Raina'
	<sraina@mvista.com>, "Osier-mixon,
	Jeffrey" <jeffrey.osier-mixon@intel.com>, 
	"'Polk, Jeffrey'" <jeff.polk@windriver.com>, "Purdie, Richard"
	<richard.purdie@intel.com>, "'Ranslam, Rob'" <Rob.Ranslam@windriver.com>,
	"Saxena, Rahul" <rahul.saxena@intel.com>, "Stewart, David C"
	<david.c.stewart@intel.com>, "Wold, Saul" <saul.wold@intel.com>, "Zanussi, 
	Tom" <tom.zanussi@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>,
	"Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "'Hudson, Sean'"
	<Sean_Hudson@mentor.com>, "Serban,
	Laurentiu" <laurentiu.serban@intel.com>, 
	"Petrisor, Ileana" <ileana.petrisor@intel.com>, "Damian, Alexandru"
	<alexandru.damian@intel.com>, "Burton, Ross" <ross.burton@intel.com>,
	"Mueller, Robert" <robert.mueller@intel.com>, "Arce Moreno, Abraham"
	<abraham.arce.moreno@intel.com>,
	'Ravi Vompolu' <Ravi.Vompolu@mathworks.com>, 
	"'Sadiq, Irfan'" <Irfan_Sadiq@mentor.com>, "Santana Lopez, Mario A"
	<mario.a.santana.lopez@intel.com>, "Calles Palacios, Osvaldo"
	<osvaldo.calles.palacios@intel.com>, "Patel, Keyur R"
	<keyur.r.patel@intel.com>, "'achaudha@mvista.com'" <achaudha@mvista.com>,
	"Popa, Valentin" <valentin.popa@intel.com>, "Moses, Fred"
	<fred.moses@intel.com>, "Iorga, Cristian" <cristian.iorga@intel.com>,
	"Palalau, AlexandruX" <alexandrux.palalau@intel.com>, "'Butler, Paul'"
	<Paul.Butler@windriver.com>, "Mirea, Viorel" <viorel.mirea@intel.com>, 
	"Kamble, Nitin A" <nitin.a.kamble@intel.com>, "Szankin, Maciej"
	<maciej.szankin@intel.com>, "Moisan, Radu" <radu.moisan@intel.com>,
	"Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>, Olivia Salisbury
	<olivia.salisbury@tobias.tv>, 'Chris Kaminski' <chris.kaminski@tobias.tv>, 
	"'Maupin, Chase'" <chase.maupin@ti.com>, "Georgescu, Alexandru C"
	<alexandru.c.georgescu@intel.com>, "Gavaz, Ionut A"
	<ionut.a.gavaz@intel.com>, "Pruteanu, Codrin C"
	<codrin.c.pruteanu@intel.com>, "Letnes, Thaddeus C"
	<thaddeus.c.letnes@intel.com>, "Ong,
	Boon Leong" <boon.leong.ong@intel.com>, 
	"Seow, Chen Yong" <chen.yong.seow@intel.com>, "Haw, Foo Chien"
	<foo.chien.haw@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Agenda: Yocto Project Technical Team Meeting - Tuesday, July
	30, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac6MrCypvn7XHcgOTgKa/PHD67W6iA==
Date: Mon, 29 Jul 2013 22:37:15 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A7EEA88E4@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 29 Jul 2013 16:34:41 -0700
Cc: 'Chris Kaminski' <chris.kaminski@tobiasandtobias.com>
Subject: Agenda: Yocto Project Technical Team Meeting - Tuesday, July 30, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Mon, 29 Jul 2013 22:37:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A7EEA88E4ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEA88E4ORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
* SWAT team rotation: Paul -> Jessica
* Opens - 10 min
* Team Sharing - 20 min


-----Original Appointment-----

We encourage people attending the meeting to logon the Yocto IRC chancel du=
ring the meeting (optional):

Yocto IRC: http://webchat.freenode.net/?channels=3D#yocto
IRC Tutorial: http://www.irchelp.org/irchelp/irctutorial.html

Conference details
Conference name:        Yocto Project Technical Team
Conference date/start time:     Tue Jun 25, 2013 at 11:00 AM Eastern Daylig=
ht Time (GMT-0400)
Participants:   30
Duration:       60 minutes
Participant passcode:   42001078
Dial-in number: 1.972.995.7777
US Toll Free number:    1.877.561.6828
BlackBerry users, click this link to join your conference as a participant:=
     1.972.995.7777x42001078#
        Depending on where you are dialing from, either your BlackBerry wil=
l pause and enter the passcode automatically or you will be prompted to cli=
ck again to dial the passcode.


Local and Global Access Numbers




Country
Dial-in number

Australia:
1800 636 843

Czech Republic:
242 430 350

China (Beijing):
From office dial 8-9957777 or 8784277
Beijing Out of Office dial 5878 4277

China (Shanghai):
From office dial 8-9957777 or 3073322
Shanghai Out of Office dial 2307 3322

China (Shenzen):
From office dial 8-9957777 or 6007877
Shenzen Out of Office dial 2600 7877

China (Other Cities):
From IP phone dial 8-9957777
Other cities - Non IP phone dial 021-23073322

Denmark:
8060 1400

Finland:
09 41333477

France:
0497 275888

Germany:
08161 803232

Holland:
030 2417490

India:
BSNL subscribers use 1800 425 9996 (Toll Free)
Airtel subscribers use 0008 009 861 212 (Toll Free)
From TI Campus use 89957777
Others use 2509 9555 (Landline within Bangalore) or
80 2509 9555 (Outside Bangalore)

Israel:
09 790 6715

Italy:
039 69061234 (039 is local city code not country code)

Japan:
From TI Campus use 8 995 7777
Outside TI use 03 4331 3777

Malaysia:
From IP phone dial 2643799
From Kuala Lumpur dial 4264 3799
Outside Kuala Lumpur dial (03)4264 3799

Norway:
2 295 8744

Philippines:
From Baguio City use 4471177
From Metro Manila area use 8702477

Singapore:
From IP phone dial 3894777
Outside TI use 6389 4777

South Korea:
From IP phone dial 5606998
From Seoul dial 5606998
Outside Seoul dial (02)5606998

Sweden:
08 58755577

Taiwan:
From IP phone dial 1363
From Taipei dial 2241 1363
Outside Taipei dial (02)2241 1363

Turkey:
Landline Only dial 0811 288 0001
then enter 877 633 1123

UK:
01908 355599

US:
972 995 7777 or 1877 561 6828


Recurring conferences
First scheduled conference:     Tue Jun 25, 2013
Recurrence frequency:   Weekly - Every 1 week(s) on Tuesday
Recurrence ends:        End after 52 occurrences



--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEA88E4ORSMSX108amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>* SWAT team rotation: Paul -&gt; Jessica</div>
<div>* Opens - 10 min </div>
<div>* Team Sharing - 20 min</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Tahoma" size=3D"2"><span style=3D"font-size:10pt;">-----=
Original Appointment-----</span></font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font size=3D"2"><span style=3D"font-size:10.5pt;">We encourage people=
 attending the meeting to logon the Yocto IRC chancel during the meeting (o=
ptional):</span></font></div>
<div><font size=3D"2"><span style=3D"font-size:10.5pt;">&nbsp;</span></font=
></div>
<div><font size=3D"2"><span style=3D"font-size:10.5pt;">Yocto IRC: <a href=
=3D"http://webchat.freenode.net/?channels=3D#yocto"><font color=3D"blue"><u=
>http://webchat.freenode.net/?channels=3D#yocto</u></font></a></span></font=
></div>
<div><font size=3D"2"><span style=3D"font-size:10.5pt;">IRC Tutorial: <a hr=
ef=3D"http://www.irchelp.org/irchelp/irctutorial.html"><font color=3D"blue"=
><u>http://www.irchelp.org/irchelp/irctutorial.html</u></font></a> </span><=
/font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<table width=3D"725" style=3D"width:435pt;margin-left:0.2pt;">
<col width=3D"725" style=3D"width:435pt;">
<tr>
<td style=3D"background-color:#E8E8E8;"><font face=3D"Verdana" size=3D"2"><=
span style=3D"font-size:8.5pt;background-color:#E8E8E8;"><b>Conference deta=
ils</b></span></font></td>
</tr>
</table>
<table width=3D"725" style=3D"width:435pt;margin-left:0.2pt;">
<col width=3D"217" style=3D"width:130.4pt;">
<col width=3D"507" style=3D"width:304.6pt;">
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Conference name:</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Yocto Project Technical Team</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Conference date/start time:</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Tue Jun 25, 2013 at 11:00 AM Eastern Daylight Time (GMT-04=
00)</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Participants:</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>30</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Duration:</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>60 minutes</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Participant passcode:</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>42001078</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Dial-in number:</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>1.972.995.7777</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">US Toll Free number:</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>1.877.561.6828</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">BlackBerry users, click this link to join your conference as =
a&nbsp;<b>participant</b>:</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>1.972.995.7777x42001078#</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">&nbsp;</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Depending on where you are dialing from, either your BlackBer=
ry will pause and enter the passcode automatically or you will be prompted =
to click again to dial the passcode.</span></font></td>
</tr>
<tr>
<td colspan=3D"2">
<table width=3D"273" style=3D"width:164.25pt;margin-left:5.55pt;">
<col width=3D"273" style=3D"width:164.25pt;">
<tr>
<td><font face=3D"Times New Roman"></font></td>
</tr>
<tr>
<td style=3D"background-color:#428CC6;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#CFCFCF"><span style=3D"font-size:8.5pt;background-color:#428CC6;">=
<b>Local and Global Access Numbers</b></span></font></td>
</tr>
</table>
<div><font face=3D"Times New Roman" color=3D"#666666">&nbsp;</font></div>
<table width=3D"576" style=3D"width:345.6pt;margin-left:5.55pt;">
<col width=3D"172" style=3D"width:103.4pt;">
<col width=3D"403" style=3D"width:242.2pt;">
<tr>
<td><font face=3D"Times New Roman"></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2"><span style=3D"font-size:8.5pt;"><b>C=
ountry</b></span></font></td>
<td><font face=3D"Verdana" size=3D"2"><span style=3D"font-size:8.5pt;"><b>D=
ial-in number</b></span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Australia:</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
1800 636 843</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Czech Republic:</b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">242 430 350</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>China (Beijing):</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From office dial 8-9957777 or 8784277&nbsp;<br>

Beijing Out of Office dial 5878 4277</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>China (Shanghai):</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From office dial 8-9957777 or 3073322&nbsp;<br>

Shanghai Out of Office dial 2307 3322</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>China (Shenzen):</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From office dial 8-9957777 or 6007877&nbsp;<br>

Shenzen Out of Office dial 2600 7877</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>China (Other Cities):</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From IP phone dial 8-9957777&nbsp;<br>

Other cities - Non IP phone dial 021-23073322</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Denmark:</b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">8060 1400</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Finland:</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
09 41333477</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>France:</b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">0497 275888</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Germany:</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
08161 803232</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Holland:</b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">030 2417490</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>India:</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
BSNL subscribers use 1800 425 9996 (Toll Free)<br>

Airtel subscribers use 0008 009 861 212 (Toll Free)<br>

From TI Campus use 89957777<br>

Others use 2509 9555 (Landline within Bangalore) or<br>

80 2509 9555 (Outside Bangalore)</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Israel:</b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">09 790 6715</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Italy:</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
039 69061234 (039 is local city code not country code)</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Japan:</b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">From TI Campus use 8 995 7777&nbsp;<br>

Outside TI use 03 4331 3777</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Malaysia:</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From IP phone dial 2643799&nbsp;<br>

From Kuala Lumpur dial 4264 3799&nbsp;<br>

Outside Kuala Lumpur dial (03)4264 3799</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Norway:</b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">2 295 8744</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Philippines:</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From Baguio City use 4471177&nbsp;<br>

From Metro Manila area use 8702477</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Singapore:</b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">From IP phone dial 3894777&nbsp;<br>

Outside TI use 6389 4777</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>South Korea:</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From IP phone dial 5606998&nbsp;<br>

From Seoul dial 5606998&nbsp;<br>

Outside Seoul dial (02)5606998</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Sweden:</b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">08 58755577</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Taiwan:</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From IP phone dial 1363&nbsp;<br>

From Taipei dial 2241 1363&nbsp;<br>

Outside Taipei dial (02)2241 1363</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Turkey:</b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Landline Only</b>&nbsp;dial 0811 288 0001&nbsp;<br>

then enter 877 633 1123</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>UK:</b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
01908 355599</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>US:</b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">972 995 7777 or 1877 561 6828</span></font></td>
</tr>
</table>
<div><font face=3D"Times New Roman" color=3D"#666666">&nbsp;</font></div>
</td>
</tr>
</table>
<table width=3D"725" style=3D"width:435pt;margin-left:0.2pt;">
<col width=3D"725" style=3D"width:435pt;">
<tr>
<td style=3D"background-color:#E8E8E8;"><font face=3D"Verdana" size=3D"2"><=
span style=3D"font-size:8.5pt;background-color:#E8E8E8;"><b>Recurring confe=
rences</b></span></font></td>
</tr>
</table>
<table width=3D"725" style=3D"width:435pt;margin-left:0.2pt;">
<col width=3D"217" style=3D"width:130.4pt;">
<col width=3D"507" style=3D"width:304.6pt;">
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">First scheduled conference:</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Tue Jun 25, 2013</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Recurrence frequency:</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Weekly - Every 1 week(s) on Tuesday</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Recurrence ends:</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>End after 52 occurrences</b></span></font></td>
</tr>
</table>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEA88E4ORSMSX108amrcor_--
