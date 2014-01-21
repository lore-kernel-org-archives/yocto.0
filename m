Return-Path: <stephen.k.jolley@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AFECE00851
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 11:40:11 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jan 2014 11:40:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,697,1384329600"; 
	d="scan'208,217";a="468565160"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jan 2014 11:39:12 -0800
Received: from fmsmsx111.amr.corp.intel.com ([169.254.2.107]) by
	FMSMSX107.amr.corp.intel.com ([169.254.9.137]) with mapi id
	14.03.0123.003; Tue, 21 Jan 2014 11:39:11 -0800
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "Liu, Song" <song.liu@intel.com>, 'Anders Darander'
	<anders@chargestorm.se>, "Barros Pena,
	Belen" <belen.barros.pena@intel.com>, 
	"Ashfield, Bruce (Wind River)" <bruce.ashfield@windriver.com>, "'Daniel
	Cauchy'" <dcauchy@mvista.com>, "DeVries, Alex (Wind River)"
	<alex.devries@windriver.com>, "'Dixon, Brad'" <Brad_Dixon@mentor.com>, 
	"Dmytriyenko, Denys" <denys@ti.com>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Hart, Darren" <darren.hart@intel.com>, 
	"Hatle, Mark G (Wind River)" <mark.hatle@windriver.com>, 'Jeremy Puhlman'
	<jpuhlman@gmail.com>, "Kridner, Jason" <jdk@ti.com>,
	"'Lieu.Ta@windriver.com'" <'Lieu.Ta@windriver.com'>, "Moeller, Thorsten"
	<thorsten.moeller@intel.com>, 'Sanjay Raina' <sraina@mvista.com>,
	"Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>, "Polk,
	Jeffrey (Wind River)" <jeff.polk@windriver.com>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Ranslam, Robert E (Wind River)"
	<rob.ranslam@windriver.com>, "Stewart,
	David C" <david.c.stewart@intel.com>, 
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
	"Palalau, AlexandruX" <alexandrux.palalau@intel.com>, "Butler, Paul A (Wind
	River)" <paul.butler@windriver.com>, "Kamble, Nitin A"
	<nitin.a.kamble@intel.com>, "Szankin, Maciej" <maciej.szankin@intel.com>,
	Olivia Salisbury <olivia.salisbury@tobias.tv>, 'Chris Kaminski'
	<chris.kaminski@tobias.tv>, "'Maupin, Chase'" <chase.maupin@ti.com>,
	"Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>, "Gavaz,
	Ionut A" <ionut.a.gavaz@intel.com>, "Pruteanu, Codrin C"
	<codrin.c.pruteanu@intel.com>, "Letnes, Thaddeus C"
	<thaddeus.c.letnes@intel.com>, "Ong,
	Boon Leong" <boon.leong.ong@intel.com>, 
	"Seow, Chen Yong" <chen.yong.seow@intel.com>, "Long,
	Stephen J (Wind River)" <steve.long@windriver.com>, "Stoicescu, CorneliuX"
	<corneliux.stoicescu@intel.com>, 'Chris Kaminski'
	<chris.kaminski@tobiasandtobias.com>, "Voicu, Cristiana"
	<cristiana.voicu@intel.com>, "Chisanovici, IonutX"
	<ionutx.chisanovici@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Sarmiento,
	Sara F" <sara.f.sarmiento@intel.com>, 
	"Stukov, Lina" <lina.stukov@intel.com>
Thread-Topic: Yocto Project Technical Team Meeting
Thread-Index: Ac8W4HGvXwzvNfaNQ0CfY32tyl638wAAAJOg
Date: Tue, 21 Jan 2014 19:39:10 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155E49403F01@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 21 Jan 2014 11:49:32 -0800
Subject: Yocto Project Technical Team Meeting
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
X-List-Received-Date: Tue, 21 Jan 2014 19:40:13 -0000
X-Groupsio-MsgNum: 17858
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155E49403F01fmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E49403F01fmsmsx111amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

We encourage people attending the meeting to logon the Yocto Project IRC ch=
ancel during the meeting (optional):

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



--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E49403F01fmsmsx111amrcor_
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
<div>We encourage people attending the meeting to logon the Yocto Project I=
RC chancel during the meeting (optional):</div>
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

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E49403F01fmsmsx111amrcor_
Content-Type: text/calendar; charset="utf-8"; method=REQUEST
Content-Transfer-Encoding: base64

QkVHSU46VkNBTEVOREFSDQpNRVRIT0Q6UkVRVUVTVA0KUFJPRElEOk1pY3Jvc29mdCBFeGNoYW5n
ZSBTZXJ2ZXIgMjAxMA0KVkVSU0lPTjoyLjANCkJFR0lOOlZUSU1FWk9ORQ0KVFpJRDpQYWNpZmlj
IFN0YW5kYXJkIFRpbWUNCkJFR0lOOlNUQU5EQVJEDQpEVFNUQVJUOjE2MDEwMTAxVDAyMDAwMA0K
VFpPRkZTRVRGUk9NOi0wNzAwDQpUWk9GRlNFVFRPOi0wODAwDQpSUlVMRTpGUkVRPVlFQVJMWTtJ
TlRFUlZBTD0xO0JZREFZPTFTVTtCWU1PTlRIPTExDQpFTkQ6U1RBTkRBUkQNCkJFR0lOOkRBWUxJ
R0hUDQpEVFNUQVJUOjE2MDEwMTAxVDAyMDAwMA0KVFpPRkZTRVRGUk9NOi0wODAwDQpUWk9GRlNF
VFRPOi0wNzAwDQpSUlVMRTpGUkVRPVlFQVJMWTtJTlRFUlZBTD0xO0JZREFZPTJTVTtCWU1PTlRI
PTMNCkVORDpEQVlMSUdIVA0KRU5EOlZUSU1FWk9ORQ0KQkVHSU46VkVWRU5UDQpPUkdBTklaRVI7
Q049IkpvbGxleSwgU3RlcGhlbiBLIjpNQUlMVE86c3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb20N
CkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049IkxpdSwgU29uZyI6DQogTUFJTFRPOnNvbmcubGl1QGludGVsLmNvbQ0KQVRURU5E
RUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtD
Tj0nQW5kZXJzIERhDQogcmFuZGVyJzpNQUlMVE86YW5kZXJzQGNoYXJnZXN0b3JtLnNlDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJCYXJyb3MgUGVuDQogYSwgQmVsZW4iOk1BSUxUTzpiZWxlbi5iYXJyb3MucGVuYUBpbnRl
bC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElP
TjtSU1ZQPVRSVUU7Q049IkFzaGZpZWxkLCANCiBCcnVjZSAoV2luZCBSaXZlcikiOk1BSUxUTzpi
cnVjZS5hc2hmaWVsZEB3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFO
VDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdEYW5pZWwgQ2ENCiB1Y2h5JzpN
QUlMVE86ZGNhdWNoeUBtdmlzdGEuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQ
QVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJEZVZyaWVzLCBBDQogbGV4IChXaW5k
IFJpdmVyKSI6TUFJTFRPOmFsZXguZGV2cmllc0B3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xF
PVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSInRGl4
b24sIEJyDQogYWQnIjpNQUlMVE86QnJhZF9EaXhvbkBtZW50b3IuY29tDQpBVFRFTkRFRTtST0xF
PVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJEbXl0
cml5ZW5rDQogbywgRGVueXMiOk1BSUxUTzpkZW55c0B0aS5jb20NCkFUVEVOREVFO1JPTEU9UkVR
LVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkVyd2F5LCBU
cmENCiBjZXkgTSI6TUFJTFRPOnRyYWNleS5tLmVyd2F5QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9M
RT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iRmxh
bmFnYW4sIA0KIEVsaXphYmV0aCI6TUFJTFRPOmVsaXphYmV0aC5mbGFuYWdhbkBpbnRlbC5jb20N
CkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049IkhhcnQsIERhcnINCiBlbiI6TUFJTFRPOmRhcnJlbi5oYXJ0QGludGVsLmNvbQ0K
QVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9
VFJVRTtDTj0iSGF0bGUsIE1hcg0KIGsgRyAoV2luZCBSaXZlcikiOk1BSUxUTzptYXJrLmhhdGxl
QHdpbmRyaXZlci5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5F
RURTLUFDVElPTjtSU1ZQPVRSVUU7Q049J0plcmVteSBQdQ0KIGhsbWFuJzpNQUlMVE86anB1aGxt
YW5AZ21haWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSJLcmlkbmVyLCBKDQogYXNvbiI6TUFJTFRPOmpka0B0aS5j
b20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtS
U1ZQPVRSVUU7Q049J0xpZXUuVGFAdw0KIGluZHJpdmVyLmNvbSc6TUFJTFRPOidMaWV1LlRhQHdp
bmRyaXZlci5jb20nDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSJNb2VsbGVyLCBUDQogaG9yc3RlbiI6TUFJTFRPOnRob3Jz
dGVuLm1vZWxsZXJAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJU
U1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdTYW5qYXkgUmENCiBpbmEnOk1BSUxUTzpz
cmFpbmFAbXZpc3RhLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iT3NpZXItbWl4bw0KIG4sIEplZmZyZXkiOk1BSUxU
TzpqZWZmcmV5Lm9zaWVyLW1peG9uQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElD
SVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUG9saywgSmVmZg0KIHJl
eSAoV2luZCBSaXZlcikiOk1BSUxUTzpqZWZmLnBvbGtAd2luZHJpdmVyLmNvbQ0KQVRURU5ERUU7
Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0i
UHVyZGllLCBSaQ0KIGNoYXJkIjpNQUlMVE86cmljaGFyZC5wdXJkaWVAaW50ZWwuY29tDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJSYW5zbGFtLCBSDQogb2JlcnQgRSAoV2luZCBSaXZlcikiOk1BSUxUTzpyb2IucmFuc2xh
bUB3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1O
RUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJTdGV3YXJ0LCBEDQogYXZpZCBDIjpNQUlMVE86ZGF2
aWQuYy5zdGV3YXJ0QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFS
VFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iV29sZCwgU2F1bCINCiA6TUFJTFRPOnNh
dWwud29sZEBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFU
PU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlphbnVzc2ksIFQNCiBvbSI6TUFJTFRPOnRvbS56
YW51c3NpQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iWmhhbmcsIEplcw0KIHNpY2EiOk1BSUxUTzpqZXNz
aWNhLnpoYW5nQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNU
QVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUmlmZW5iYXJrLA0KICBTY290dCBNIjpNQUlM
VE86c2NvdHQubS5yaWZlbmJhcmtAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJ
UEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSInSHVkc29uLCBTDQogZWFu
JyI6TUFJTFRPOlNlYW5fSHVkc29uQG1lbnRvci5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJ
Q0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlNlcmJhbiwgTGENCiB1
cmVudGl1IjpNQUlMVE86bGF1cmVudGl1LnNlcmJhbkBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9
UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlBldHJp
c29yLCANCiBJbGVhbmEiOk1BSUxUTzppbGVhbmEucGV0cmlzb3JAaW50ZWwuY29tDQpBVFRFTkRF
RTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NO
PSJEYW1pYW4sIEFsDQogZXhhbmRydSI6TUFJTFRPOmFsZXhhbmRydS5kYW1pYW5AaW50ZWwuY29t
DQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNW
UD1UUlVFO0NOPSJCdXJ0b24sIFJvDQogc3MiOk1BSUxUTzpyb3NzLmJ1cnRvbkBpbnRlbC5jb20N
CkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049Ik11ZWxsZXIsIFINCiBvYmVydCI6TUFJTFRPOnJvYmVydC5tdWVsbGVyQGludGVs
LmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9O
O1JTVlA9VFJVRTtDTj0iQXJjZSBNb3Jlbg0KIG8sIEFicmFoYW0iOk1BSUxUTzphYnJhaGFtLmFy
Y2UubW9yZW5vQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNU
QVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0nUmF2aSBWb21wDQogb2x1JzpNQUlMVE86UmF2
aS5Wb21wb2x1QG1hdGh3b3Jrcy5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BB
UlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IidTYWRpcSwgSXINCiBmYW4nIjpNQUlM
VE86SXJmYW5fU2FkaXFAbWVudG9yLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7
UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iU2FudGFuYSBMbw0KIHBleiwgTWFy
aW8gQSI6TUFJTFRPOm1hcmlvLmEuc2FudGFuYS5sb3BlekBpbnRlbC5jb20NCkFUVEVOREVFO1JP
TEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlBh
dGVsLCBLZXkNCiB1ciBSIjpNQUlMVE86a2V5dXIuci5wYXRlbEBpbnRlbC5jb20NCkFUVEVOREVF
O1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049
J2FjaGF1ZGhhQA0KIG12aXN0YS5jb20nOk1BSUxUTzphY2hhdWRoYUBtdmlzdGEuY29tDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJQb3BhLCBWYWxlDQogbnRpbiI6TUFJTFRPOnZhbGVudGluLnBvcGFAaW50ZWwuY29tDQpB
VFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1U
UlVFO0NOPSJNb3NlcywgRnJlDQogZCI6TUFJTFRPOmZyZWQubW9zZXNAaW50ZWwuY29tDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJJb3JnYSwgQ3JpDQogc3RpYW4iOk1BSUxUTzpjcmlzdGlhbi5pb3JnYUBpbnRlbC5jb20N
CkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049IlBhbGFsYXUsIEENCiBsZXhhbmRydVgiOk1BSUxUTzphbGV4YW5kcnV4LnBhbGFs
YXVAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSJCdXRsZXIsIFBhDQogdWwgQSAoV2luZCBSaXZlcikiOk1B
SUxUTzpwYXVsLmJ1dGxlckB3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJ
UEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJLYW1ibGUsIE5pDQogdGlu
IEEiOk1BSUxUTzpuaXRpbi5hLmthbWJsZUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBB
UlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlN6YW5raW4sIE0N
CiBhY2llaiI6TUFJTFRPOm1hY2llai5zemFua2luQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1S
RVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj1PbGl2aWEg
U2FsDQogaXNidXJ5Ok1BSUxUTzpvbGl2aWEuc2FsaXNidXJ5QHRvYmlhcy50dg0KQVRURU5ERUU7
Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0n
Q2hyaXMgS2FtDQogaW5za2knOk1BSUxUTzpjaHJpcy5rYW1pbnNraUB0b2JpYXMudHYNCkFUVEVO
REVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7
Q049IidNYXVwaW4sIEMNCiBoYXNlJyI6TUFJTFRPOmNoYXNlLm1hdXBpbkB0aS5jb20NCkFUVEVO
REVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7
Q049Ikdlb3JnZXNjdSwNCiAgQWxleGFuZHJ1IEMiOk1BSUxUTzphbGV4YW5kcnUuYy5nZW9yZ2Vz
Y3VAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSJHYXZheiwgSW9uDQogdXQgQSI6TUFJTFRPOmlvbnV0LmEu
Z2F2YXpAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1O
RUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJQcnV0ZWFudSwgDQogQ29kcmluIEMiOk1BSUxUTzpj
b2RyaW4uYy5wcnV0ZWFudUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5U
O1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkxldG5lcywgVGgNCiBhZGRldXMg
QyI6TUFJTFRPOnRoYWRkZXVzLmMubGV0bmVzQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEt
UEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iT25nLCBCb29u
IA0KIExlb25nIjpNQUlMVE86Ym9vbi5sZW9uZy5vbmdAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xF
PVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJTZW93
LCBDaGVuDQogIFlvbmciOk1BSUxUTzpjaGVuLnlvbmcuc2Vvd0BpbnRlbC5jb20NCkFUVEVOREVF
O1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049
IkxvbmcsIFN0ZXANCiBoZW4gSiAoV2luZCBSaXZlcikiOk1BSUxUTzpzdGV2ZS5sb25nQHdpbmRy
aXZlci5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFD
VElPTjtSU1ZQPVRSVUU7Q049IlN0b2ljZXNjdSwNCiAgQ29ybmVsaXVYIjpNQUlMVE86Y29ybmVs
aXV4LnN0b2ljZXNjdUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BB
UlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049J0NocmlzIEthbQ0KIGluc2tpJzpNQUlM
VE86Y2hyaXMua2FtaW5za2lAdG9iaWFzYW5kdG9iaWFzLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEt
UEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iVm9pY3UsIENy
aQ0KIHN0aWFuYSI6TUFJTFRPOmNyaXN0aWFuYS52b2ljdUBpbnRlbC5jb20NCkFUVEVOREVFO1JP
TEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkNo
aXNhbm92aWMNCiBpLCBJb251dFgiOk1BSUxUTzppb251dHguY2hpc2Fub3ZpY2lAaW50ZWwuY29t
DQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNW
UD1UUlVFO0NOPXlvY3RvQHlvY3QNCiBvcHJvamVjdC5vcmc6TUFJTFRPOnlvY3RvQHlvY3RvcHJv
amVjdC5vcmcNCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFD
VElPTjtSU1ZQPVRSVUU7Q049IlNhcm1pZW50bywNCiAgU2FyYSBGIjpNQUlMVE86c2FyYS5mLnNh
cm1pZW50b0BpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFU
PU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlN0dWtvdiwgTGkNCiBuYSI6TUFJTFRPOmxpbmEu
c3R1a292QGludGVsLmNvbQ0KREVTQ1JJUFRJT047TEFOR1VBR0U9ZW4tVVM6V2UgZW5jb3VyYWdl
IHBlb3BsZSBhdHRlbmRpbmcgdGhlIG1lZXRpbmcgdG8gbG9nDQogb24gdGhlIFlvY3RvIFByb2pl
Y3QgSVJDIGNoYW5jZWwgZHVyaW5nIHRoZSBtZWV0aW5nIChvcHRpb25hbCk6XG5cbllvY3RvIEkN
CiBSQzogaHR0cDovL3dlYmNoYXQuZnJlZW5vZGUubmV0Lz9jaGFubmVscz0jeW9jdG9cbklSQyBU
dXRvcmlhbDogaHR0cDovL3d3dw0KIC5pcmNoZWxwLm9yZy9pcmNoZWxwL2lyY3R1dG9yaWFsLmh0
bWxcblxuQ29uZmVyZW5jZSBkZXRhaWxzXG5Db25mZXJlbmNlIG5hDQogbWU6ICAgICAgICBZb2N0
byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtXG5Db25mZXJlbmNlIGRhdGUvc3RhcnQgdGltZTogICAg
IFQNCiB1ZSBKdW4gMjVcLCAyMDEzIGF0IDExOjAwIEFNIEVhc3Rlcm4gRGF5bGlnaHQgVGltZSAo
R01ULTA0MDApXG5QYXJ0aWNpcGFudA0KIHM6ICAgMzBcbkR1cmF0aW9uOiAgICAgICA2MCBtaW51
dGVzXG5QYXJ0aWNpcGFudCBwYXNzY29kZTogICA0MjAwMTA3OFxuRGlhDQogbC1pbiBudW1iZXI6
IDEuOTcyLjk5NS43Nzc3XG5VUyBUb2xsIEZyZWUgbnVtYmVyOiAgICAxLjg3Ny41NjEuNjgyOFxu
QmxhY2sNCiBCZXJyeSB1c2Vyc1wsIGNsaWNrIHRoaXMgbGluayB0byBqb2luIHlvdXIgY29uZmVy
ZW5jZSBhcyBhIHBhcnRpY2lwYW50OiAgIA0KICAgMS45NzIuOTk1Ljc3Nzd4NDIwMDEwNzgjXG4g
ICAgICAgIERlcGVuZGluZyBvbiB3aGVyZSB5b3UgYXJlIGRpYWxpbmcgZnJvDQogbVwsIGVpdGhl
ciB5b3VyIEJsYWNrQmVycnkgd2lsbCBwYXVzZSBhbmQgZW50ZXIgdGhlIHBhc3Njb2RlIGF1dG9t
YXRpY2FsbHkNCiAgb3IgeW91IHdpbGwgYmUgcHJvbXB0ZWQgdG8gY2xpY2sgYWdhaW4gdG8gZGlh
bCB0aGUgcGFzc2NvZGUuXG5cblxuTG9jYWwgYQ0KIG5kIEdsb2JhbCBBY2Nlc3MgTnVtYmVyc1xu
XG5cblxuXG5Db3VudHJ5XG5EaWFsLWluIG51bWJlclxuXG5BdXN0cmFsaWE6XG4xDQogODAwIDYz
NiA4NDNcblxuQ3plY2ggUmVwdWJsaWM6XG4yNDIgNDMwIDM1MFxuXG5DaGluYSAoQmVpamluZyk6
XG5Gcm9tIG9mZmkNCiBjZSBkaWFsIDgtOTk1Nzc3NyBvciA4Nzg0Mjc3XG5CZWlqaW5nIE91dCBv
ZiBPZmZpY2UgZGlhbCA1ODc4IDQyNzdcblxuQ2hpbg0KIGEgKFNoYW5naGFpKTpcbkZyb20gb2Zm
aWNlIGRpYWwgOC05OTU3Nzc3IG9yIDMwNzMzMjJcblNoYW5naGFpIE91dCBvZiBPZmZpDQogY2Ug
ZGlhbCAyMzA3IDMzMjJcblxuQ2hpbmEgKFNoZW56ZW4pOlxuRnJvbSBvZmZpY2UgZGlhbCA4LTk5
NTc3Nzcgb3IgNjAwNzgNCiA3N1xuU2hlbnplbiBPdXQgb2YgT2ZmaWNlIGRpYWwgMjYwMCA3ODc3
XG5cbkNoaW5hIChPdGhlciBDaXRpZXMpOlxuRnJvbSBJUA0KICBwaG9uZSBkaWFsIDgtOTk1Nzc3
N1xuT3RoZXIgY2l0aWVzIC0gTm9uIElQIHBob25lIGRpYWwgMDIxLTIzMDczMzIyXG5cbkRlDQog
bm1hcms6XG44MDYwIDE0MDBcblxuRmlubGFuZDpcbjA5IDQxMzMzNDc3XG5cbkZyYW5jZTpcbjA0
OTcgMjc1ODg4XG5cbkdlcm0NCiBhbnk6XG4wODE2MSA4MDMyMzJcblxuSG9sbGFuZDpcbjAzMCAy
NDE3NDkwXG5cbkluZGlhOlxuQlNOTCBzdWJzY3JpYmVycyB1cw0KIGUgMTgwMCA0MjUgOTk5NiAo
VG9sbCBGcmVlKVxuQWlydGVsIHN1YnNjcmliZXJzIHVzZSAwMDA4IDAwOSA4NjEgMjEyIChUb2xs
DQogIEZyZWUpXG5Gcm9tIFRJIENhbXB1cyB1c2UgODk5NTc3Nzdcbk90aGVycyB1c2UgMjUwOSA5
NTU1IChMYW5kbGluZSB3aXRoaW4NCiAgQmFuZ2Fsb3JlKSBvclxuODAgMjUwOSA5NTU1IChPdXRz
aWRlIEJhbmdhbG9yZSlcblxuSXNyYWVsOlxuMDkgNzkwIDY3MTVcbg0KIFxuSXRhbHk6XG4wMzkg
NjkwNjEyMzQgKDAzOSBpcyBsb2NhbCBjaXR5IGNvZGUgbm90IGNvdW50cnkgY29kZSlcblxuSmFw
YW46DQogXG5Gcm9tIFRJIENhbXB1cyB1c2UgOCA5OTUgNzc3N1xuT3V0c2lkZSBUSSB1c2UgMDMg
NDMzMSAzNzc3XG5cbk1hbGF5c2lhOlwNCiBuRnJvbSBJUCBwaG9uZSBkaWFsIDI2NDM3OTlcbkZy
b20gS3VhbGEgTHVtcHVyIGRpYWwgNDI2NCAzNzk5XG5PdXRzaWRlIEt1YQ0KIGxhIEx1bXB1ciBk
aWFsICgwMyk0MjY0IDM3OTlcblxuTm9yd2F5OlxuMiAyOTUgODc0NFxuXG5QaGlsaXBwaW5lczpc
bkZyb20gDQogQmFndWlvIENpdHkgdXNlIDQ0NzExNzdcbkZyb20gTWV0cm8gTWFuaWxhIGFyZWEg
dXNlIDg3MDI0NzdcblxuU2luZ2Fwb3JlOlwNCiBuRnJvbSBJUCBwaG9uZSBkaWFsIDM4OTQ3Nzdc
bk91dHNpZGUgVEkgdXNlIDYzODkgNDc3N1xuXG5Tb3V0aCBLb3JlYTpcbkZybw0KIG0gSVAgcGhv
bmUgZGlhbCA1NjA2OTk4XG5Gcm9tIFNlb3VsIGRpYWwgNTYwNjk5OFxuT3V0c2lkZSBTZW91bCBk
aWFsICgwMik1DQogNjA2OTk4XG5cblN3ZWRlbjpcbjA4IDU4NzU1NTc3XG5cblRhaXdhbjpcbkZy
b20gSVAgcGhvbmUgZGlhbCAxMzYzXG5Gcm9tIFQNCiBhaXBlaSBkaWFsIDIyNDEgMTM2M1xuT3V0
c2lkZSBUYWlwZWkgZGlhbCAoMDIpMjI0MSAxMzYzXG5cblR1cmtleTpcbkxhbmRsaQ0KIG5lIE9u
bHkgZGlhbCAwODExIDI4OCAwMDAxXG50aGVuIGVudGVyIDg3NyA2MzMgMTEyM1xuXG5VSzpcbjAx
OTA4IDM1NTU5OVxuDQogXG5VUzpcbjk3MiA5OTUgNzc3NyBvciAxODc3IDU2MSA2ODI4XG5cblxu
UmVjdXJyaW5nIGNvbmZlcmVuY2VzXG5GaXJzdCBzY2gNCiBlZHVsZWQgY29uZmVyZW5jZTogICAg
IFR1ZSBKdW4gMjVcLCAyMDEzXG5SZWN1cnJlbmNlIGZyZXF1ZW5jeTogICBXZWVrbHkgLQ0KICBF
dmVyeSAxIHdlZWsocykgb24gVHVlc2RheVxuUmVjdXJyZW5jZSBlbmRzOiAgICAgICAgRW5kIGFm
dGVyIDUyIG9jY3VycmVuDQogY2VzXG5cblxuDQpSUlVMRTpGUkVRPVdFRUtMWTtVTlRJTD0yMDE0
MDYxN1QxNTAwMDBaO0lOVEVSVkFMPTE7QllEQVk9VFU7V0tTVD1TVQ0KU1VNTUFSWTtMQU5HVUFH
RT1lbi1VUzpZb2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJ
RD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxNDAxMjhUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lm
aWMgU3RhbmRhcmQgVGltZToyMDE0MDEyOFQwOTAwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRD
NUI3MTAxQTgyRTAwODAwMDAwMDAwMjBBQ0RBNjU5RDE2Q0YwMTAwMDAwMDAwMDAwMDAwMA0KIDAx
MDAwMDAwMDFFRjU5ODc3ODVGQTQ2NDJBNUE3OTUyN0FGNTEwMjlGDQpDTEFTUzpQVUJMSUMNClBS
SU9SSVRZOjUNCkRUU1RBTVA6MjAxNDAxMjFUMTkzOTA5Wg0KVFJBTlNQOk9QQVFVRQ0KU1RBVFVT
OkNPTkZJUk1FRA0KU0VRVUVOQ0U6MA0KTE9DQVRJT047TEFOR1VBR0U9ZW4tVVM6QnJpZGdlIElu
Zm8gRW5jbG9zZWQNClgtTUlDUk9TT0ZULUNETy1BUFBULVNFUVVFTkNFOjANClgtTUlDUk9TT0ZU
LUNETy1PV05FUkFQUFRJRDoxMjY1OTY1MDIyDQpYLU1JQ1JPU09GVC1DRE8tQlVTWVNUQVRVUzpU
RU5UQVRJVkUNClgtTUlDUk9TT0ZULUNETy1JTlRFTkRFRFNUQVRVUzpCVVNZDQpYLU1JQ1JPU09G
VC1DRE8tQUxMREFZRVZFTlQ6RkFMU0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRBTkNFOjENClgt
TUlDUk9TT0ZULUNETy1JTlNUVFlQRToxDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZB
TFNFDQpCRUdJTjpWQUxBUk0NCkFDVElPTjpESVNQTEFZDQpERVNDUklQVElPTjpSRU1JTkRFUg0K
VFJJR0dFUjtSRUxBVEVEPVNUQVJUOi1QVDE1TQ0KRU5EOlZBTEFSTQ0KRU5EOlZFVkVOVA0KRU5E
OlZDQUxFTkRBUg0K

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E49403F01fmsmsx111amrcor_--
