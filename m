Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33B98E007DC
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 17:05:48 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2013 17:01:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,540,1384329600"; 
	d="scan'208,217";a="456888023"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by orsmga002.jf.intel.com with ESMTP; 23 Dec 2013 17:05:39 -0800
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
	ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 23 Dec 2013 17:05:39 -0800
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.59]) by
	ORSMSX159.amr.corp.intel.com ([169.254.11.218]) with mapi id
	14.03.0123.003; Mon, 23 Dec 2013 17:05:38 -0800
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
	"'Lieu.Ta@windriver.com'" <'Lieu.Ta@windriver.com'>, "Moeller, Thorsten"
	<thorsten.moeller@intel.com>, 'Sanjay Raina' <sraina@mvista.com>,
	"Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>, "'Polk, Jeffrey'"
	<jeff.polk@windriver.com>, "Purdie, Richard" <richard.purdie@intel.com>,
	"'Ranslam, Rob'" <Rob.Ranslam@windriver.com>, "Saxena, Rahul"
	<rahul.saxena@intel.com>, "Stewart, David C" <david.c.stewart@intel.com>,
	"Wold, Saul" <saul.wold@intel.com>, "Zanussi,
	Tom" <tom.zanussi@intel.com>, 
	"Zhang, Jessica" <jessica.zhang@intel.com>, "Rifenbark, Scott M"
	<scott.m.rifenbark@intel.com>, "'Hudson, Sean'" <Sean_Hudson@mentor.com>,
	"Serban, Laurentiu" <laurentiu.serban@intel.com>, "Petrisor, Ileana"
	<ileana.petrisor@intel.com>, "Damian, Alexandru"
	<alexandru.damian@intel.com>, "Burton, Ross" <ross.burton@intel.com>,
	"Mueller, Robert" <robert.mueller@intel.com>, "Arce Moreno, Abraham"
	<abraham.arce.moreno@intel.com>,
	'Ravi Vompolu' <Ravi.Vompolu@mathworks.com>, 
	"'Sadiq, Irfan'" <Irfan_Sadiq@mentor.com>, "Santana Lopez, Mario A"
	<mario.a.santana.lopez@intel.com>, "Patel, Keyur R"
	<keyur.r.patel@intel.com>, "'achaudha@mvista.com'" <achaudha@mvista.com>,
	"Popa, Valentin" <valentin.popa@intel.com>, "Moses, Fred"
	<fred.moses@intel.com>, "Iorga, Cristian" <cristian.iorga@intel.com>,
	"Palalau, AlexandruX" <alexandrux.palalau@intel.com>, "'Butler, Paul'"
	<Paul.Butler@windriver.com>, "Mirea, Viorel" <viorel.mirea@intel.com>, 
	"Kamble, Nitin A" <nitin.a.kamble@intel.com>, "Szankin, Maciej"
	<maciej.szankin@intel.com>, "Grigoropol, IoanaX"
	<ioanax.grigoropol@intel.com>,
	Olivia Salisbury <olivia.salisbury@tobias.tv>, 
	'Chris Kaminski' <chris.kaminski@tobias.tv>, "'Maupin, Chase'"
	<chase.maupin@ti.com>, "Georgescu, Alexandru C"
	<alexandru.c.georgescu@intel.com>, "Gavaz, Ionut A"
	<ionut.a.gavaz@intel.com>, "Pruteanu, Codrin C"
	<codrin.c.pruteanu@intel.com>, "Letnes, Thaddeus C"
	<thaddeus.c.letnes@intel.com>, "Ong,
	Boon Leong" <boon.leong.ong@intel.com>, 
	"Seow, Chen Yong" <chen.yong.seow@intel.com>, "steve.long@windriver.com"
	<steve.long@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Project Technical Team Meeting - cancelled due to US
	holidays
Thread-Index: Ac7f+1RM4q9TRpBBS6eAkozGwbkhHAgSOv0g
Importance: high
X-Priority: 1
Date: Tue, 24 Dec 2013 01:05:37 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EFD4CE8@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 23 Dec 2013 20:39:40 -0800
Cc: 'Chris Kaminski' <chris.kaminski@tobiasandtobias.com>, "Chisanovici,
	IonutX" <ionutx.chisanovici@intel.com>
Subject: Canceled: Yocto Project Technical Team Meeting - cancelled due to US holidays
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
X-List-Received-Date: Tue, 24 Dec 2013 01:05:54 -0000
X-Groupsio-MsgNum: 17629
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EFD4CE8ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFD4CE8ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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



--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFD4CE8ORSMSX108amrcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">
<div>We encourage people attending the meeting to logon the Yocto IRC chanc=
el during the meeting (optional):</div>
<div>&nbsp;</div>
<div>Yocto IRC: <a href=3D"http://webchat.freenode.net/?channels=3D#yocto">=
<font color=3D"blue"><u>http://webchat.freenode.net/?channels=3D#yocto</u><=
/font></a></div>
<div>IRC Tutorial: <a href=3D"http://www.irchelp.org/irchelp/irctutorial.ht=
ml"><font color=3D"blue"><u>http://www.irchelp.org/irchelp/irctutorial.html=
</u></font></a> </div>
<div><font face=3D"Times New Roman" size=3D"2"><span style=3D"font-size:11p=
t;">&nbsp;</span></font></div>
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
<td><font face=3D"Times New Roman" size=3D"2"><span style=3D"font-size:11pt=
;"></span></font></td>
</tr>
<tr>
<td style=3D"background-color:#428CC6;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#CFCFCF"><span style=3D"font-size:8.5pt;background-color:#428CC6;">=
<b>Local and Global Access Numbers</b></span></font></td>
</tr>
</table>
<div><font face=3D"Times New Roman" size=3D"2" color=3D"#666666"><span styl=
e=3D"font-size:11pt;">&nbsp;</span></font></div>
<table width=3D"576" style=3D"width:345.6pt;margin-left:5.55pt;">
<col width=3D"172" style=3D"width:103.4pt;">
<col width=3D"403" style=3D"width:242.2pt;">
<tr>
<td><font face=3D"Times New Roman" size=3D"2"><span style=3D"font-size:11pt=
;"></span></font></td>
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
<div><font face=3D"Times New Roman" size=3D"2" color=3D"#666666"><span styl=
e=3D"font-size:11pt;">&nbsp;</span></font></div>
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
<div><font face=3D"Times New Roman" size=3D"2"><span style=3D"font-size:11p=
t;">&nbsp;</span></font></div>
<div><font face=3D"Times New Roman" size=3D"2"><span style=3D"font-size:11p=
t;">&nbsp;</span></font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFD4CE8ORSMSX108amrcor_
Content-Type: text/calendar; charset="utf-8"; method=CANCEL
Content-Transfer-Encoding: base64

QkVHSU46VkNBTEVOREFSDQpNRVRIT0Q6Q0FOQ0VMDQpQUk9ESUQ6TWljcm9zb2Z0IEV4Y2hhbmdl
IFNlcnZlciAyMDEwDQpWRVJTSU9OOjIuMA0KQkVHSU46VlRJTUVaT05FDQpUWklEOlBhY2lmaWMg
U3RhbmRhcmQgVGltZQ0KQkVHSU46U1RBTkRBUkQNCkRUU1RBUlQ6MTYwMTAxMDFUMDIwMDAwDQpU
Wk9GRlNFVEZST006LTA3MDANClRaT0ZGU0VUVE86LTA4MDANClJSVUxFOkZSRVE9WUVBUkxZO0lO
VEVSVkFMPTE7QllEQVk9MVNVO0JZTU9OVEg9MTENCkVORDpTVEFOREFSRA0KQkVHSU46REFZTElH
SFQNCkRUU1RBUlQ6MTYwMTAxMDFUMDIwMDAwDQpUWk9GRlNFVEZST006LTA4MDANClRaT0ZGU0VU
VE86LTA3MDANClJSVUxFOkZSRVE9WUVBUkxZO0lOVEVSVkFMPTE7QllEQVk9MlNVO0JZTU9OVEg9
Mw0KRU5EOkRBWUxJR0hUDQpFTkQ6VlRJTUVaT05FDQpCRUdJTjpWRVZFTlQNCk9SR0FOSVpFUjtD
Tj0iTGl1LCBTb25nIjpNQUlMVE86c29uZy5saXVAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJF
US1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdBbmRlcnMg
RGENCiByYW5kZXInOk1BSUxUTzphbmRlcnNAY2hhcmdlc3Rvcm0uc2UNCkFUVEVOREVFO1JPTEU9
UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkJhcnJv
cyBQZW4NCiBhLCBCZWxlbiI6TUFJTFRPOmJlbGVuLmJhcnJvcy5wZW5hQGludGVsLmNvbQ0KQVRU
RU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJV
RTtDTj0iQm9ka2UsIEtpcw0KIGhvcmUgSyI6TUFJTFRPOmtpc2hvcmUuay5ib2RrZUBpbnRlbC5j
b20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtS
U1ZQPVRSVUU7Q049J0JydWNlIEFzaA0KIGZpZWxkJzpNQUlMVE86YnJ1Y2UuYXNoZmllbGRAd2lu
ZHJpdmVyLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMt
QUNUSU9OO1JTVlA9VFJVRTtDTj0nRGFuaWVsIENhDQogdWNoeSc6TUFJTFRPOmRjYXVjaHlAbXZp
c3RhLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNU
SU9OO1JTVlA9VFJVRTtDTj0iJ2RlVnJpZXMsIA0KIEFsZXgnIjpNQUlMVE86QWxleC5kZVZyaWVz
QHdpbmRyaXZlci5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5F
RURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IidEaXhvbiwgQnINCiBhZCciOk1BSUxUTzpCcmFkX0Rp
eG9uQG1lbnRvci5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5F
RURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkRteXRyaXllbmsNCiBvLCBEZW55cyI6TUFJTFRPOmRl
bnlzQHRpLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMt
QUNUSU9OO1JTVlA9VFJVRTtDTj0iRXJ3YXksIFRyYQ0KIGNleSBNIjpNQUlMVE86dHJhY2V5Lm0u
ZXJ3YXlAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1O
RUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJGbGFuYWdhbiwgDQogRWxpemFiZXRoIjpNQUlMVE86
ZWxpemFiZXRoLmZsYW5hZ2FuQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBB
TlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iSGFydCwgRGFycg0KIGVuIjpN
QUlMVE86ZGFycmVuLmhhcnRAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFO
VDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSInSGF0bGUsIE1hDQogcmsnIjpN
QUlMVE86bWFyay5oYXRsZUB3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJ
UEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdKZXJlbXkgUHUNCiBobG1h
bic6TUFJTFRPOmpwdWhsbWFuQGdtYWlsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBB
TlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iS3JpZG5lciwgSg0KIGFzb24i
Ok1BSUxUTzpqZGtAdGkuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RB
VD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdMaWV1LlRhQHcNCiBpbmRyaXZlci5jb20nOk1B
SUxUTzonTGlldS5UYUB3aW5kcml2ZXIuY29tJw0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBB
TlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iTW9lbGxlciwgVA0KIGhvcnN0
ZW4iOk1BSUxUTzp0aG9yc3Rlbi5tb2VsbGVyQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEt
UEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0nU2FuamF5IFJh
DQogaW5hJzpNQUlMVE86c3JhaW5hQG12aXN0YS5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJ
Q0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik9zaWVyLW1peG8NCiBu
LCBKZWZmcmV5IjpNQUlMVE86amVmZnJleS5vc2llci1taXhvbkBpbnRlbC5jb20NCkFUVEVOREVF
O1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049
IidQb2xrLCBKZWYNCiBmcmV5JyI6TUFJTFRPOmplZmYucG9sa0B3aW5kcml2ZXIuY29tDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJQdXJkaWUsIFJpDQogY2hhcmQiOk1BSUxUTzpyaWNoYXJkLnB1cmRpZUBpbnRlbC5jb20N
CkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049IidSYW5zbGFtLCANCiBSb2InIjpNQUlMVE86Um9iLlJhbnNsYW1Ad2luZHJpdmVy
LmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9O
O1JTVlA9VFJVRTtDTj0iU2F4ZW5hLCBSYQ0KIGh1bCI6TUFJTFRPOnJhaHVsLnNheGVuYUBpbnRl
bC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElP
TjtSU1ZQPVRSVUU7Q049IlN0ZXdhcnQsIEQNCiBhdmlkIEMiOk1BSUxUTzpkYXZpZC5jLnN0ZXdh
cnRAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSJXb2xkLCBTYXVsIg0KIDpNQUlMVE86c2F1bC53b2xkQGlu
dGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNU
SU9OO1JTVlA9VFJVRTtDTj0iWmFudXNzaSwgVA0KIG9tIjpNQUlMVE86dG9tLnphbnVzc2lAaW50
ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJ
T047UlNWUD1UUlVFO0NOPSJaaGFuZywgSmVzDQogc2ljYSI6TUFJTFRPOmplc3NpY2EuemhhbmdA
aW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1B
Q1RJT047UlNWUD1UUlVFO0NOPSJSaWZlbmJhcmssDQogIFNjb3R0IE0iOk1BSUxUTzpzY290dC5t
LnJpZmVuYmFya0BpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRT
VEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IidIdWRzb24sIFMNCiBlYW4nIjpNQUlMVE86
U2Vhbl9IdWRzb25AbWVudG9yLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFS
VFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iU2VyYmFuLCBMYQ0KIHVyZW50aXUiOk1B
SUxUTzpsYXVyZW50aXUuc2VyYmFuQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElD
SVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUGV0cmlzb3IsIA0KIEls
ZWFuYSI6TUFJTFRPOmlsZWFuYS5wZXRyaXNvckBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVR
LVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkRhbWlhbiwg
QWwNCiBleGFuZHJ1IjpNQUlMVE86YWxleGFuZHJ1LmRhbWlhbkBpbnRlbC5jb20NCkFUVEVOREVF
O1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049
IkJ1cnRvbiwgUm8NCiBzcyI6TUFJTFRPOnJvc3MuYnVydG9uQGludGVsLmNvbQ0KQVRURU5ERUU7
Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0i
TXVlbGxlciwgUg0KIG9iZXJ0IjpNQUlMVE86cm9iZXJ0Lm11ZWxsZXJAaW50ZWwuY29tDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJBcmNlIE1vcmVuDQogbywgQWJyYWhhbSI6TUFJTFRPOmFicmFoYW0uYXJjZS5tb3Jlbm9A
aW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1B
Q1RJT047UlNWUD1UUlVFO0NOPSdSYXZpIFZvbXANCiBvbHUnOk1BSUxUTzpSYXZpLlZvbXBvbHVA
bWF0aHdvcmtzLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVF
RFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iJ1NhZGlxLCBJcg0KIGZhbiciOk1BSUxUTzpJcmZhbl9T
YWRpcUBtZW50b3IuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1O
RUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJTYW50YW5hIExvDQogcGV6LCBNYXJpbyBBIjpNQUlM
VE86bWFyaW8uYS5zYW50YW5hLmxvcGV6QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFS
VElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUGF0ZWwsIEtleQ0K
IHVyIFIiOk1BSUxUTzprZXl1ci5yLnBhdGVsQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEt
UEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0nYWNoYXVkaGFA
DQogbXZpc3RhLmNvbSc6TUFJTFRPOmFjaGF1ZGhhQG12aXN0YS5jb20NCkFUVEVOREVFO1JPTEU9
UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlBvcGEs
IFZhbGUNCiBudGluIjpNQUlMVE86dmFsZW50aW4ucG9wYUBpbnRlbC5jb20NCkFUVEVOREVFO1JP
TEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik1v
c2VzLCBGcmUNCiBkIjpNQUlMVE86ZnJlZC5tb3Nlc0BpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9
UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Iklvcmdh
LCBDcmkNCiBzdGlhbiI6TUFJTFRPOmNyaXN0aWFuLmlvcmdhQGludGVsLmNvbQ0KQVRURU5ERUU7
Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0i
UGFsYWxhdSwgQQ0KIGxleGFuZHJ1WCI6TUFJTFRPOmFsZXhhbmRydXgucGFsYWxhdUBpbnRlbC5j
b20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtS
U1ZQPVRSVUU7Q049IidCdXRsZXIsIFANCiBhdWwnIjpNQUlMVE86UGF1bC5CdXRsZXJAd2luZHJp
dmVyLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNU
SU9OO1JTVlA9VFJVRTtDTj0iTWlyZWEsIFZpbw0KIHJlbCI6TUFJTFRPOnZpb3JlbC5taXJlYUBp
bnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFD
VElPTjtSU1ZQPVRSVUU7Q049IkthbWJsZSwgTmkNCiB0aW4gQSI6TUFJTFRPOm5pdGluLmEua2Ft
YmxlQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVF
RFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iU3phbmtpbiwgTQ0KIGFjaWVqIjpNQUlMVE86bWFjaWVq
LnN6YW5raW5AaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RB
VD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJHcmlnb3JvcG9sDQogLCBJb2FuYVgiOk1BSUxU
Tzppb2FuYXguZ3JpZ29yb3BvbEBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQ
QU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049T2xpdmlhIFNhbA0KIGlzYnVy
eTpNQUlMVE86b2xpdmlhLnNhbGlzYnVyeUB0b2JpYXMudHYNCkFUVEVOREVFO1JPTEU9UkVRLVBB
UlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049J0NocmlzIEthbQ0K
IGluc2tpJzpNQUlMVE86Y2hyaXMua2FtaW5za2lAdG9iaWFzLnR2DQpBVFRFTkRFRTtST0xFPVJF
US1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSInTWF1cGlu
LCBDDQogaGFzZSciOk1BSUxUTzpjaGFzZS5tYXVwaW5AdGkuY29tDQpBVFRFTkRFRTtST0xFPVJF
US1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJHZW9yZ2Vz
Y3UsDQogIEFsZXhhbmRydSBDIjpNQUlMVE86YWxleGFuZHJ1LmMuZ2Vvcmdlc2N1QGludGVsLmNv
bQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JT
VlA9VFJVRTtDTj0iR2F2YXosIElvbg0KIHV0IEEiOk1BSUxUTzppb251dC5hLmdhdmF6QGludGVs
LmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9O
O1JTVlA9VFJVRTtDTj0iUHJ1dGVhbnUsIA0KIENvZHJpbiBDIjpNQUlMVE86Y29kcmluLmMucHJ1
dGVhbnVAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1O
RUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJMZXRuZXMsIFRoDQogYWRkZXVzIEMiOk1BSUxUTzp0
aGFkZGV1cy5jLmxldG5lc0BpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5U
O1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik9uZywgQm9vbiANCiBMZW9uZyI6
TUFJTFRPOmJvb24ubGVvbmcub25nQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElD
SVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iU2VvdywgQ2hlbg0KICBZ
b25nIjpNQUlMVE86Y2hlbi55b25nLnNlb3dAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1Q
QVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPXN0ZXZlLmxvbmcN
CiBAd2luZHJpdmVyLmNvbTpNQUlMVE86c3RldmUubG9uZ0B3aW5kcml2ZXIuY29tDQpBVFRFTkRF
RTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NO
PXlvY3RvQHlvY3QNCiBvcHJvamVjdC5vcmc6TUFJTFRPOnlvY3RvQHlvY3RvcHJvamVjdC5vcmcN
CkFUVEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049IlN0b2ljZXNjdSwNCiAgQ29ybmVsaXVYIjpNQUlMVE86Y29ybmVsaXV4LnN0b2lj
ZXNjdUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5F
RURTLUFDVElPTjtSU1ZQPVRSVUU7Q049J0NocmlzIEthbQ0KIGluc2tpJzpNQUlMVE86Y2hyaXMu
a2FtaW5za2lAdG9iaWFzYW5kdG9iaWFzLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBB
TlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iVm9pY3UsIENyaQ0KIHN0aWFu
YSI6TUFJTFRPOmNyaXN0aWFuYS52b2ljdUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBB
UlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkNoaXNhbm92aWMN
CiBpLCBJb251dFgiOk1BSUxUTzppb251dHguY2hpc2Fub3ZpY2lAaW50ZWwuY29tDQpERVNDUklQ
VElPTjtMQU5HVUFHRT1lbi1VUzpXZSBlbmNvdXJhZ2UgcGVvcGxlIGF0dGVuZGluZyB0aGUgbWVl
dGluZyB0byBsb2cNCiBvbiB0aGUgWW9jdG8gSVJDIGNoYW5jZWwgZHVyaW5nIHRoZSBtZWV0aW5n
IChvcHRpb25hbCk6XG5cbllvY3RvIElSQzogaHR0cA0KIDovL3dlYmNoYXQuZnJlZW5vZGUubmV0
Lz9jaGFubmVscz0jeW9jdG9cbklSQyBUdXRvcmlhbDogaHR0cDovL3d3dy5pcmNoZWxwDQogLm9y
Zy9pcmNoZWxwL2lyY3R1dG9yaWFsLmh0bWxcblxuQ29uZmVyZW5jZSBkZXRhaWxzXG5Db25mZXJl
bmNlIG5hbWU6ICAgICANCiAgICBZb2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtXG5Db25mZXJl
bmNlIGRhdGUvc3RhcnQgdGltZTogICAgIFR1ZSBKdW4gMg0KIDVcLCAyMDEzIGF0IDExOjAwIEFN
IEVhc3Rlcm4gRGF5bGlnaHQgVGltZSAoR01ULTA0MDApXG5QYXJ0aWNpcGFudHM6ICAgMzBcDQog
bkR1cmF0aW9uOiAgICAgICA2MCBtaW51dGVzXG5QYXJ0aWNpcGFudCBwYXNzY29kZTogICA0MjAw
MTA3OFxuRGlhbC1pbiBudW0NCiBiZXI6IDEuOTcyLjk5NS43Nzc3XG5VUyBUb2xsIEZyZWUgbnVt
YmVyOiAgICAxLjg3Ny41NjEuNjgyOFxuQmxhY2tCZXJyeSB1cw0KIGVyc1wsIGNsaWNrIHRoaXMg
bGluayB0byBqb2luIHlvdXIgY29uZmVyZW5jZSBhcyBhIHBhcnRpY2lwYW50OiAgICAgMS45NzIu
DQogOTk1Ljc3Nzd4NDIwMDEwNzgjXG4gICAgICAgIERlcGVuZGluZyBvbiB3aGVyZSB5b3UgYXJl
IGRpYWxpbmcgZnJvbVwsIGVpdGgNCiBlciB5b3VyIEJsYWNrQmVycnkgd2lsbCBwYXVzZSBhbmQg
ZW50ZXIgdGhlIHBhc3Njb2RlIGF1dG9tYXRpY2FsbHkgb3IgeW91IA0KIHdpbGwgYmUgcHJvbXB0
ZWQgdG8gY2xpY2sgYWdhaW4gdG8gZGlhbCB0aGUgcGFzc2NvZGUuXG5cblxuTG9jYWwgYW5kIEds
b2JhDQogbCBBY2Nlc3MgTnVtYmVyc1xuXG5cblxuXG5Db3VudHJ5XG5EaWFsLWluIG51bWJlclxu
XG5BdXN0cmFsaWE6XG4xODAwIDYzNiANCiA4NDNcblxuQ3plY2ggUmVwdWJsaWM6XG4yNDIgNDMw
IDM1MFxuXG5DaGluYSAoQmVpamluZyk6XG5Gcm9tIG9mZmljZSBkaWFsIA0KIDgtOTk1Nzc3NyBv
ciA4Nzg0Mjc3XG5CZWlqaW5nIE91dCBvZiBPZmZpY2UgZGlhbCA1ODc4IDQyNzdcblxuQ2hpbmEg
KFNoYW5nDQogaGFpKTpcbkZyb20gb2ZmaWNlIGRpYWwgOC05OTU3Nzc3IG9yIDMwNzMzMjJcblNo
YW5naGFpIE91dCBvZiBPZmZpY2UgZGlhbCANCiAyMzA3IDMzMjJcblxuQ2hpbmEgKFNoZW56ZW4p
OlxuRnJvbSBvZmZpY2UgZGlhbCA4LTk5NTc3Nzcgb3IgNjAwNzg3N1xuU2hlbg0KIHplbiBPdXQg
b2YgT2ZmaWNlIGRpYWwgMjYwMCA3ODc3XG5cbkNoaW5hIChPdGhlciBDaXRpZXMpOlxuRnJvbSBJ
UCBwaG9uZSBkDQogaWFsIDgtOTk1Nzc3N1xuT3RoZXIgY2l0aWVzIC0gTm9uIElQIHBob25lIGRp
YWwgMDIxLTIzMDczMzIyXG5cbkRlbm1hcms6XG4NCiA4MDYwIDE0MDBcblxuRmlubGFuZDpcbjA5
IDQxMzMzNDc3XG5cbkZyYW5jZTpcbjA0OTcgMjc1ODg4XG5cbkdlcm1hbnk6XG4wOA0KIDE2MSA4
MDMyMzJcblxuSG9sbGFuZDpcbjAzMCAyNDE3NDkwXG5cbkluZGlhOlxuQlNOTCBzdWJzY3JpYmVy
cyB1c2UgMTgwMCA0DQogMjUgOTk5NiAoVG9sbCBGcmVlKVxuQWlydGVsIHN1YnNjcmliZXJzIHVz
ZSAwMDA4IDAwOSA4NjEgMjEyIChUb2xsIEZyZWUpXG4NCiBGcm9tIFRJIENhbXB1cyB1c2UgODk5
NTc3Nzdcbk90aGVycyB1c2UgMjUwOSA5NTU1IChMYW5kbGluZSB3aXRoaW4gQmFuZ2Fsbw0KIHJl
KSBvclxuODAgMjUwOSA5NTU1IChPdXRzaWRlIEJhbmdhbG9yZSlcblxuSXNyYWVsOlxuMDkgNzkw
IDY3MTVcblxuSXRhbHk6DQogXG4wMzkgNjkwNjEyMzQgKDAzOSBpcyBsb2NhbCBjaXR5IGNvZGUg
bm90IGNvdW50cnkgY29kZSlcblxuSmFwYW46XG5Gcm9tIFQNCiBJIENhbXB1cyB1c2UgOCA5OTUg
Nzc3N1xuT3V0c2lkZSBUSSB1c2UgMDMgNDMzMSAzNzc3XG5cbk1hbGF5c2lhOlxuRnJvbSBJUA0K
ICBwaG9uZSBkaWFsIDI2NDM3OTlcbkZyb20gS3VhbGEgTHVtcHVyIGRpYWwgNDI2NCAzNzk5XG5P
dXRzaWRlIEt1YWxhIEx1bXB1DQogciBkaWFsICgwMyk0MjY0IDM3OTlcblxuTm9yd2F5OlxuMiAy
OTUgODc0NFxuXG5QaGlsaXBwaW5lczpcbkZyb20gQmFndWlvIEMNCiBpdHkgdXNlIDQ0NzExNzdc
bkZyb20gTWV0cm8gTWFuaWxhIGFyZWEgdXNlIDg3MDI0NzdcblxuU2luZ2Fwb3JlOlxuRnJvbSBJ
UA0KICBwaG9uZSBkaWFsIDM4OTQ3Nzdcbk91dHNpZGUgVEkgdXNlIDYzODkgNDc3N1xuXG5Tb3V0
aCBLb3JlYTpcbkZyb20gSVAgcGhvDQogbmUgZGlhbCA1NjA2OTk4XG5Gcm9tIFNlb3VsIGRpYWwg
NTYwNjk5OFxuT3V0c2lkZSBTZW91bCBkaWFsICgwMik1NjA2OTk4XG4NCiBcblN3ZWRlbjpcbjA4
IDU4NzU1NTc3XG5cblRhaXdhbjpcbkZyb20gSVAgcGhvbmUgZGlhbCAxMzYzXG5Gcm9tIFRhaXBl
aSBkaQ0KIGFsIDIyNDEgMTM2M1xuT3V0c2lkZSBUYWlwZWkgZGlhbCAoMDIpMjI0MSAxMzYzXG5c
blR1cmtleTpcbkxhbmRsaW5lIE9ubHkgDQogZGlhbCAwODExIDI4OCAwMDAxXG50aGVuIGVudGVy
IDg3NyA2MzMgMTEyM1xuXG5VSzpcbjAxOTA4IDM1NTU5OVxuXG5VUzpcbjkNCiA3MiA5OTUgNzc3
NyBvciAxODc3IDU2MSA2ODI4XG5cblxuUmVjdXJyaW5nIGNvbmZlcmVuY2VzXG5GaXJzdCBzY2hl
ZHVsZWQgYw0KIG9uZmVyZW5jZTogICAgIFR1ZSBKdW4gMjVcLCAyMDEzXG5SZWN1cnJlbmNlIGZy
ZXF1ZW5jeTogICBXZWVrbHkgLSBFdmVyeSAxDQogIHdlZWsocykgb24gVHVlc2RheVxuUmVjdXJy
ZW5jZSBlbmRzOiAgICAgICAgRW5kIGFmdGVyIDUyIG9jY3VycmVuY2VzXG5cblwNCiBuDQpTVU1N
QVJZO0xBTkdVQUdFPWVuLVVTOkNhbmNlbGVkOiBZb2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFt
IE1lZXRpbmcgLSBjYW4NCiBjZWxsZWQgZHVlIHRvIFVTIGhvbGlkYXlzDQpEVFNUQVJUO1RaSUQ9
UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTMxMjI0VDA4MDAwMA0KRFRFTkQ7VFpJRD1QYWNpZmlj
IFN0YW5kYXJkIFRpbWU6MjAxMzEyMjRUMDkwMDAwDQpVSUQ6MDQwMDAwMDA4MjAwRTAwMDc0QzVC
NzEwMUE4MkUwMDgwMDAwMDAwMEQwOEUyMDZCRkI2Q0NFMDEwMDAwMDAwMDAwMDAwMDANCiAwMTAw
MDAwMDBENUVDRkM5RTAwRjY3QTRBOUFDOEM1Njg5MjdDQjU3Ng0KUkVDVVJSRU5DRS1JRDtUWklE
PVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEzMTIyNFQwODAwMDANCkNMQVNTOlBVQkxJQw0KUFJJ
T1JJVFk6MQ0KRFRTVEFNUDoyMDEzMTIyNFQwMTA1MzZaDQpUUkFOU1A6T1BBUVVFDQpTVEFUVVM6
Q0FOQ0VMTEVEDQpTRVFVRU5DRToxMg0KTE9DQVRJT047TEFOR1VBR0U9ZW4tVVM6QnJpZGdlIElu
Zm8gRW5jbG9zZWQNClgtTUlDUk9TT0ZULUNETy1BUFBULVNFUVVFTkNFOjEyDQpYLU1JQ1JPU09G
VC1DRE8tT1dORVJBUFBUSUQ6LTIxMDYzNjU5ODcNClgtTUlDUk9TT0ZULUNETy1CVVNZU1RBVFVT
OkZSRUUNClgtTUlDUk9TT0ZULUNETy1JTlRFTkRFRFNUQVRVUzpGUkVFDQpYLU1JQ1JPU09GVC1D
RE8tQUxMREFZRVZFTlQ6RkFMU0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRBTkNFOjINClgtTUlD
Uk9TT0ZULUNETy1JTlNUVFlQRTozDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZBTFNF
DQpFTkQ6VkVWRU5UDQpFTkQ6VkNBTEVOREFSDQo=

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFD4CE8ORSMSX108amrcor_--
