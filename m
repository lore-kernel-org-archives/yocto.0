Return-Path: <stephen.k.jolley@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71646E00AD5
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 12:58:02 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2014 12:53:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,648,1389772800"; 
	d="scan'208,217";a="499419641"
Received: from fmsmsx105.amr.corp.intel.com ([10.19.9.36])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2014 12:57:49 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.19.17.7) by
	FMSMSX105.amr.corp.intel.com (10.19.9.36) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 13 Mar 2014 12:57:49 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.2.9]) by
	FMSMSX153.amr.corp.intel.com ([169.254.9.28]) with mapi id
	14.03.0123.003; Thu, 13 Mar 2014 12:57:48 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "'achaudha@mvista.com'" <achaudha@mvista.com>, 'Anders Darander'
	<anders@chargestorm.se>, "Arce Moreno, Abraham"
	<abraham.arce.moreno@intel.com>, "Ashfield, Bruce (Wind River)"
	<bruce.ashfield@windriver.com>, "Barros Pena, Belen"
	<belen.barros.pena@intel.com>, "Burton, Ross" <ross.burton@intel.com>, 
	"Butler, Paul A (Wind River)" <paul.butler@windriver.com>, "Chisanovici,
	IonutX" <ionutx.chisanovici@intel.com>, 'Chris Kaminski'
	<chris.kaminski@tobias.tv>, "Damian,
	Alexandru" <alexandru.damian@intel.com>, 
	'Daniel Cauchy' <dcauchy@mvista.com>, "DeVries, Alex (Wind River)"
	<alex.devries@windriver.com>, "Dmytriyenko, Denys" <denys@ti.com>, "Erway, 
	Tracey M" <tracey.m.erway@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Gavaz,
	Ionut A" <ionut.a.gavaz@intel.com>, 
	"Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>, "Hart, Darren"
	<darren.hart@intel.com>, "Harvey, Michael" <michael.harvey@intel.com>, 
	"Hatle, Mark G (Wind River)" <mark.hatle@windriver.com>, "'Hudson, Sean'"
	<Sean_Hudson@mentor.com>, "Iorga, Cristian" <cristian.iorga@intel.com>, 
	'Jeremy Puhlman' <jpuhlman@gmail.com>, "Kamble, Nitin A"
	<nitin.a.kamble@intel.com>, "Kridner, Jason" <jdk@ti.com>, "Letnes,
	Thaddeus
	C" <thaddeus.c.letnes@intel.com>, "Liu, Song" <song.liu@intel.com>, "Long, 
	Stephen J (Wind River)" <steve.long@windriver.com>, "'Long, Yanren'"
	<ylong@WPI.EDU>, "'Maupin, Chase'" <chase.maupin@ti.com>, "Moeller,
	Thorsten"
	<thorsten.moeller@intel.com>, "Moses, Fred" <fred.moses@intel.com>,
	"Mueller, Robert" <robert.mueller@intel.com>, Olivia Salisbury
	<olivia.salisbury@tobias.tv>, "Ong,
	Boon Leong" <boon.leong.ong@intel.com>, 
	"Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>, "Palalau,
	AlexandruX" <alexandrux.palalau@intel.com>, "Patel,
	Keyur R" <keyur.r.patel@intel.com>, 
	"Petrisor, Ileana" <ileana.petrisor@intel.com>, "Polk,
	Jeffrey (Wind River)"
	<jeff.polk@windriver.com>, "Popa, Valentin" <valentin.popa@intel.com>, 
	"Pruteanu, Codrin C" <codrin.c.pruteanu@intel.com>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Ranslam, Robert E (Wind River)"
	<rob.ranslam@windriver.com>, 'Ravi Vompolu' <Ravi.Vompolu@mathworks.com>,
	"Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "'Sadiq, Irfan'"
	<Irfan_Sadiq@mentor.com>, 'Sanjay Raina' <sraina@mvista.com>, "Santana
	Lopez, Mario A" <mario.a.santana.lopez@intel.com>, "Sarmiento, Sara F"
	<sara.f.sarmiento@intel.com>, "Seow,
	Chen Yong" <chen.yong.seow@intel.com>, 
	"Serban, Laurentiu" <laurentiu.serban@intel.com>, "Stewart, David C"
	<david.c.stewart@intel.com>, "Stoicescu, CorneliuX"
	<corneliux.stoicescu@intel.com>, "Stukov, Lina" <lina.stukov@intel.com>,
	"Szankin, Maciej" <maciej.szankin@intel.com>, "Ta, Lieu T (Wind River)"
	<lieu.ta@windriver.com>, 'Valentin Cobelea' <Valentin.Cobelea@enea.com>,
	"Voicu, Cristiana" <cristiana.voicu@intel.com>, "Wold, Saul"
	<saul.wold@intel.com>, "Woodyatt, James" <james.woodyatt@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Zanussi, Tom"
	<tom.zanussi@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: Yocto Project Technical Team Meeting
Thread-Index: Ac8+9oFCW05ISXAeTQC4eGRsLJnvBAAAAA8g
Date: Thu, 13 Mar 2014 19:57:48 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155E54FF54AF@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 Mar 2014 09:06:53 -0700
Cc: 'Paul Eggleton' <paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Thu, 13 Mar 2014 19:58:03 -0000
X-Groupsio-MsgNum: 18547
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155E54FF54AFfmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E54FF54AFfmsmsx111amrcor_
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
Duration:       30 minutes
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



--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E54FF54AFfmsmsx111amrcor_
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
-size:8.5pt;"><b>3</b><b>0 minutes</b></span></font></td>
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

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E54FF54AFfmsmsx111amrcor_
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
PVRSVUU7Q049J2FjaGF1ZGhhQA0KIG12aXN0YS5jb20nOk1BSUxUTzphY2hhdWRoYUBtdmlzdGEu
Y29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047
UlNWUD1UUlVFO0NOPSdBbmRlcnMgRGENCiByYW5kZXInOk1BSUxUTzphbmRlcnNAY2hhcmdlc3Rv
cm0uc2UNCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElP
TjtSU1ZQPVRSVUU7Q049IkFyY2UgTW9yZW4NCiBvLCBBYnJhaGFtIjpNQUlMVE86YWJyYWhhbS5h
cmNlLm1vcmVub0BpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRT
VEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkFzaGZpZWxkLCANCiBCcnVjZSAoV2luZCBS
aXZlcikiOk1BSUxUTzpicnVjZS5hc2hmaWVsZEB3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xF
PVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJCYXJy
b3MgUGVuDQogYSwgQmVsZW4iOk1BSUxUTzpiZWxlbi5iYXJyb3MucGVuYUBpbnRlbC5jb20NCkFU
VEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRS
VUU7Q049IkJ1cnRvbiwgUm8NCiBzcyI6TUFJTFRPOnJvc3MuYnVydG9uQGludGVsLmNvbQ0KQVRU
RU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJV
RTtDTj0iQnV0bGVyLCBQYQ0KIHVsIEEgKFdpbmQgUml2ZXIpIjpNQUlMVE86cGF1bC5idXRsZXJA
d2luZHJpdmVyLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVF
RFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iQ2hpc2Fub3ZpYw0KIGksIElvbnV0WCI6TUFJTFRPOmlv
bnV0eC5jaGlzYW5vdmljaUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5U
O1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049J0NocmlzIEthbQ0KIGluc2tpJzpN
QUlMVE86Y2hyaXMua2FtaW5za2lAdG9iaWFzLnR2DQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJ
UEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJEYW1pYW4sIEFsDQogZXhh
bmRydSI6TUFJTFRPOmFsZXhhbmRydS5kYW1pYW5AaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJF
US1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdEYW5pZWwg
Q2ENCiB1Y2h5JzpNQUlMVE86ZGNhdWNoeUBtdmlzdGEuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1Q
QVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJEZVZyaWVzLCBB
DQogbGV4IChXaW5kIFJpdmVyKSI6TUFJTFRPOmFsZXguZGV2cmllc0B3aW5kcml2ZXIuY29tDQpB
VFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1U
UlVFO0NOPSJEbXl0cml5ZW5rDQogbywgRGVueXMiOk1BSUxUTzpkZW55c0B0aS5jb20NCkFUVEVO
REVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7
Q049IkVyd2F5LCBUcmENCiBjZXkgTSI6TUFJTFRPOnRyYWNleS5tLmVyd2F5QGludGVsLmNvbQ0K
QVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9
VFJVRTtDTj0iRmxhbmFnYW4sIA0KIEVsaXphYmV0aCI6TUFJTFRPOmVsaXphYmV0aC5mbGFuYWdh
bkBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURT
LUFDVElPTjtSU1ZQPVRSVUU7Q049IkdhdmF6LCBJb24NCiB1dCBBIjpNQUlMVE86aW9udXQuYS5n
YXZhekBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5F
RURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ikdlb3JnZXNjdSwNCiAgQWxleGFuZHJ1IEMiOk1BSUxU
TzphbGV4YW5kcnUuYy5nZW9yZ2VzY3VAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJU
SUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJIYXJ0LCBEYXJyDQog
ZW4iOk1BSUxUTzpkYXJyZW4uaGFydEBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJ
Q0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkhhcnZleSwgTWkNCiBj
aGFlbCI6TUFJTFRPOm1pY2hhZWwuaGFydmV5QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEt
UEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iSGF0bGUsIE1h
cg0KIGsgRyAoV2luZCBSaXZlcikiOk1BSUxUTzptYXJrLmhhdGxlQHdpbmRyaXZlci5jb20NCkFU
VEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRS
VUU7Q049IidIdWRzb24sIFMNCiBlYW4nIjpNQUlMVE86U2Vhbl9IdWRzb25AbWVudG9yLmNvbQ0K
QVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9
VFJVRTtDTj0iSW9yZ2EsIENyaQ0KIHN0aWFuIjpNQUlMVE86Y3Jpc3RpYW4uaW9yZ2FAaW50ZWwu
Y29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047
UlNWUD1UUlVFO0NOPSdKZXJlbXkgUHUNCiBobG1hbic6TUFJTFRPOmpwdWhsbWFuQGdtYWlsLmNv
bQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JT
VlA9VFJVRTtDTj0iS2FtYmxlLCBOaQ0KIHRpbiBBIjpNQUlMVE86bml0aW4uYS5rYW1ibGVAaW50
ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJ
T047UlNWUD1UUlVFO0NOPSJLcmlkbmVyLCBKDQogYXNvbiI6TUFJTFRPOmpka0B0aS5jb20NCkFU
VEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRS
VUU7Q049IkxldG5lcywgVGgNCiBhZGRldXMgQyI6TUFJTFRPOnRoYWRkZXVzLmMubGV0bmVzQGlu
dGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNU
SU9OO1JTVlA9VFJVRTtDTj0iTGl1LCBTb25nIjoNCiBNQUlMVE86c29uZy5saXVAaW50ZWwuY29t
DQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNW
UD1UUlVFO0NOPSJMb25nLCBTdGVwDQogaGVuIEogKFdpbmQgUml2ZXIpIjpNQUlMVE86c3RldmUu
bG9uZ0B3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RB
VD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSInTG9uZywgWWFuDQogcmVuJyI6TUFJTFRPOnls
b25nQFdQSS5FRFUNCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURT
LUFDVElPTjtSU1ZQPVRSVUU7Q049IidNYXVwaW4sIEMNCiBoYXNlJyI6TUFJTFRPOmNoYXNlLm1h
dXBpbkB0aS5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURT
LUFDVElPTjtSU1ZQPVRSVUU7Q049Ik1vZWxsZXIsIFQNCiBob3JzdGVuIjpNQUlMVE86dGhvcnN0
ZW4ubW9lbGxlckBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRT
VEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik1vc2VzLCBGcmUNCiBkIjpNQUlMVE86ZnJl
ZC5tb3Nlc0BpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFU
PU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik11ZWxsZXIsIFINCiBvYmVydCI6TUFJTFRPOnJv
YmVydC5tdWVsbGVyQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFS
VFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj1PbGl2aWEgU2FsDQogaXNidXJ5Ok1BSUxU
TzpvbGl2aWEuc2FsaXNidXJ5QHRvYmlhcy50dg0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBB
TlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iT25nLCBCb29uIA0KIExlb25n
IjpNQUlMVE86Ym9vbi5sZW9uZy5vbmdAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJU
SUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJPc2llci1taXhvDQog
biwgSmVmZnJleSI6TUFJTFRPOmplZmZyZXkub3NpZXItbWl4b25AaW50ZWwuY29tDQpBVFRFTkRF
RTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NO
PSJQYWxhbGF1LCBBDQogbGV4YW5kcnVYIjpNQUlMVE86YWxleGFuZHJ1eC5wYWxhbGF1QGludGVs
LmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9O
O1JTVlA9VFJVRTtDTj0iUGF0ZWwsIEtleQ0KIHVyIFIiOk1BSUxUTzprZXl1ci5yLnBhdGVsQGlu
dGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNU
SU9OO1JTVlA9VFJVRTtDTj0iUGV0cmlzb3IsIA0KIElsZWFuYSI6TUFJTFRPOmlsZWFuYS5wZXRy
aXNvckBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5F
RURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlBvbGssIEplZmYNCiByZXkgKFdpbmQgUml2ZXIpIjpN
QUlMVE86amVmZi5wb2xrQHdpbmRyaXZlci5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQ
QU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlBvcGEsIFZhbGUNCiBudGlu
IjpNQUlMVE86dmFsZW50aW4ucG9wYUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJ
Q0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlBydXRlYW51LCANCiBD
b2RyaW4gQyI6TUFJTFRPOmNvZHJpbi5jLnBydXRlYW51QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9M
RT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUHVy
ZGllLCBSaQ0KIGNoYXJkIjpNQUlMVE86cmljaGFyZC5wdXJkaWVAaW50ZWwuY29tDQpBVFRFTkRF
RTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NO
PSJSYW5zbGFtLCBSDQogb2JlcnQgRSAoV2luZCBSaXZlcikiOk1BSUxUTzpyb2IucmFuc2xhbUB3
aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSdSYXZpIFZvbXANCiBvbHUnOk1BSUxUTzpSYXZpLlZvbXBv
bHVAbWF0aHdvcmtzLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUmlmZW5iYXJrLA0KICBTY290dCBNIjpNQUlMVE86
c2NvdHQubS5yaWZlbmJhcmtAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFO
VDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSInU2FkaXEsIElyDQogZmFuJyI6
TUFJTFRPOklyZmFuX1NhZGlxQG1lbnRvci5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQ
QU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049J1NhbmpheSBSYQ0KIGluYSc6
TUFJTFRPOnNyYWluYUBtdmlzdGEuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQ
QVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJTYW50YW5hIExvDQogcGV6LCBNYXJp
byBBIjpNQUlMVE86bWFyaW8uYS5zYW50YW5hLmxvcGV6QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9M
RT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iU2Fy
bWllbnRvLA0KICBTYXJhIEYiOk1BSUxUTzpzYXJhLmYuc2FybWllbnRvQGludGVsLmNvbQ0KQVRU
RU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJV
RTtDTj0iU2VvdywgQ2hlbg0KICBZb25nIjpNQUlMVE86Y2hlbi55b25nLnNlb3dAaW50ZWwuY29t
DQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNW
UD1UUlVFO0NOPSJTZXJiYW4sIExhDQogdXJlbnRpdSI6TUFJTFRPOmxhdXJlbnRpdS5zZXJiYW5A
aW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1B
Q1RJT047UlNWUD1UUlVFO0NOPSJTdGV3YXJ0LCBEDQogYXZpZCBDIjpNQUlMVE86ZGF2aWQuYy5z
dGV3YXJ0QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iU3RvaWNlc2N1LA0KICBDb3JuZWxpdVgiOk1BSUxU
Tzpjb3JuZWxpdXguc3RvaWNlc2N1QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElD
SVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iU3R1a292LCBMaQ0KIG5h
IjpNQUlMVE86bGluYS5zdHVrb3ZAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJ
UEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJTemFua2luLCBNDQogYWNp
ZWoiOk1BSUxUTzptYWNpZWouc3phbmtpbkBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBB
UlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlRhLCBMaWV1IFQN
CiAgKFdpbmQgUml2ZXIpIjpNQUlMVE86bGlldS50YUB3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtS
T0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdW
YWxlbnRpbiANCiBDb2JlbGVhJzpNQUlMVE86VmFsZW50aW4uQ29iZWxlYUBlbmVhLmNvbQ0KQVRU
RU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJV
RTtDTj0iVm9pY3UsIENyaQ0KIHN0aWFuYSI6TUFJTFRPOmNyaXN0aWFuYS52b2ljdUBpbnRlbC5j
b20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtS
U1ZQPVRSVUU7Q049IldvbGQsIFNhdWwiDQogOk1BSUxUTzpzYXVsLndvbGRAaW50ZWwuY29tDQpB
VFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1U
UlVFO0NOPSJXb29keWF0dCwgDQogSmFtZXMiOk1BSUxUTzpqYW1lcy53b29keWF0dEBpbnRlbC5j
b20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtS
U1ZQPVRSVUU7Q049eW9jdG9AeW9jdA0KIG9wcm9qZWN0Lm9yZzpNQUlMVE86eW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZw0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMt
QUNUSU9OO1JTVlA9VFJVRTtDTj0iWmFudXNzaSwgVA0KIG9tIjpNQUlMVE86dG9tLnphbnVzc2lA
aW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1B
Q1RJT047UlNWUD1UUlVFO0NOPSJaaGFuZywgSmVzDQogc2ljYSI6TUFJTFRPOmplc3NpY2Euemhh
bmdAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSdQYXVsIEVnZ2wNCiBldG9uJzpNQUlMVE86cGF1bC5lZ2ds
ZXRvbkBsaW51eC5pbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRT
VEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkJ1dGxlciwgUGENCiB1bCBBIChXaW5kIFJp
dmVyKSI6TUFJTFRPOnBhdWwuYnV0bGVyQHdpbmRyaXZlci5jb20NCkFUVEVOREVFO1JPTEU9T1BU
LVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049J0ZlbGl4MDEg
Rg0KIGlzY2hlcic6TUFJTFRPOmZlbGl4MDEuZmlzY2hlckBpYXYuZGUNCkFUVEVOREVFO1JPTEU9
T1BULVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlpoYW8s
IFpoZW4NCiBmZW5nIChXaW5kIFJpdmVyKSI6TUFJTFRPOnpoZW5mZW5nLnpoYW9Ad2luZHJpdmVy
LmNvbQ0KREVTQ1JJUFRJT047TEFOR1VBR0U9ZW4tVVM6V2UgZW5jb3VyYWdlIHBlb3BsZSBhdHRl
bmRpbmcgdGhlIG1lZXRpbmcgdG8gbG9nDQogb24gdGhlIFlvY3RvIFByb2plY3QgSVJDIGNoYW5j
ZWwgZHVyaW5nIHRoZSBtZWV0aW5nIChvcHRpb25hbCk6XG5cbllvY3RvIEkNCiBSQzogaHR0cDov
L3dlYmNoYXQuZnJlZW5vZGUubmV0Lz9jaGFubmVscz0jeW9jdG9cbklSQyBUdXRvcmlhbDogaHR0
cDovL3d3dw0KIC5pcmNoZWxwLm9yZy9pcmNoZWxwL2lyY3R1dG9yaWFsLmh0bWxcblxuQ29uZmVy
ZW5jZSBkZXRhaWxzXG5Db25mZXJlbmNlIG5hDQogbWU6ICAgICAgICBZb2N0byBQcm9qZWN0IFRl
Y2huaWNhbCBUZWFtXG5Db25mZXJlbmNlIGRhdGUvc3RhcnQgdGltZTogICAgIFQNCiB1ZSBKdW4g
MjVcLCAyMDEzIGF0IDExOjAwIEFNIEVhc3Rlcm4gRGF5bGlnaHQgVGltZSAoR01ULTA0MDApXG5Q
YXJ0aWNpcGFudA0KIHM6ICAgMzBcbkR1cmF0aW9uOiAgICAgICAzMCBtaW51dGVzXG5QYXJ0aWNp
cGFudCBwYXNzY29kZTogICA0MjAwMTA3OFxuRGlhDQogbC1pbiBudW1iZXI6IDEuOTcyLjk5NS43
Nzc3XG5VUyBUb2xsIEZyZWUgbnVtYmVyOiAgICAxLjg3Ny41NjEuNjgyOFxuQmxhY2sNCiBCZXJy
eSB1c2Vyc1wsIGNsaWNrIHRoaXMgbGluayB0byBqb2luIHlvdXIgY29uZmVyZW5jZSBhcyBhIHBh
cnRpY2lwYW50OiAgIA0KICAgMS45NzIuOTk1Ljc3Nzd4NDIwMDEwNzgjXG4gICAgICAgIERlcGVu
ZGluZyBvbiB3aGVyZSB5b3UgYXJlIGRpYWxpbmcgZnJvDQogbVwsIGVpdGhlciB5b3VyIEJsYWNr
QmVycnkgd2lsbCBwYXVzZSBhbmQgZW50ZXIgdGhlIHBhc3Njb2RlIGF1dG9tYXRpY2FsbHkNCiAg
b3IgeW91IHdpbGwgYmUgcHJvbXB0ZWQgdG8gY2xpY2sgYWdhaW4gdG8gZGlhbCB0aGUgcGFzc2Nv
ZGUuXG5cblxuTG9jYWwgYQ0KIG5kIEdsb2JhbCBBY2Nlc3MgTnVtYmVyc1xuXG5cblxuXG5Db3Vu
dHJ5XG5EaWFsLWluIG51bWJlclxuXG5BdXN0cmFsaWE6XG4xDQogODAwIDYzNiA4NDNcblxuQ3pl
Y2ggUmVwdWJsaWM6XG4yNDIgNDMwIDM1MFxuXG5DaGluYSAoQmVpamluZyk6XG5Gcm9tIG9mZmkN
CiBjZSBkaWFsIDgtOTk1Nzc3NyBvciA4Nzg0Mjc3XG5CZWlqaW5nIE91dCBvZiBPZmZpY2UgZGlh
bCA1ODc4IDQyNzdcblxuQ2hpbg0KIGEgKFNoYW5naGFpKTpcbkZyb20gb2ZmaWNlIGRpYWwgOC05
OTU3Nzc3IG9yIDMwNzMzMjJcblNoYW5naGFpIE91dCBvZiBPZmZpDQogY2UgZGlhbCAyMzA3IDMz
MjJcblxuQ2hpbmEgKFNoZW56ZW4pOlxuRnJvbSBvZmZpY2UgZGlhbCA4LTk5NTc3Nzcgb3IgNjAw
NzgNCiA3N1xuU2hlbnplbiBPdXQgb2YgT2ZmaWNlIGRpYWwgMjYwMCA3ODc3XG5cbkNoaW5hIChP
dGhlciBDaXRpZXMpOlxuRnJvbSBJUA0KICBwaG9uZSBkaWFsIDgtOTk1Nzc3N1xuT3RoZXIgY2l0
aWVzIC0gTm9uIElQIHBob25lIGRpYWwgMDIxLTIzMDczMzIyXG5cbkRlDQogbm1hcms6XG44MDYw
IDE0MDBcblxuRmlubGFuZDpcbjA5IDQxMzMzNDc3XG5cbkZyYW5jZTpcbjA0OTcgMjc1ODg4XG5c
bkdlcm0NCiBhbnk6XG4wODE2MSA4MDMyMzJcblxuSG9sbGFuZDpcbjAzMCAyNDE3NDkwXG5cbklu
ZGlhOlxuQlNOTCBzdWJzY3JpYmVycyB1cw0KIGUgMTgwMCA0MjUgOTk5NiAoVG9sbCBGcmVlKVxu
QWlydGVsIHN1YnNjcmliZXJzIHVzZSAwMDA4IDAwOSA4NjEgMjEyIChUb2xsDQogIEZyZWUpXG5G
cm9tIFRJIENhbXB1cyB1c2UgODk5NTc3Nzdcbk90aGVycyB1c2UgMjUwOSA5NTU1IChMYW5kbGlu
ZSB3aXRoaW4NCiAgQmFuZ2Fsb3JlKSBvclxuODAgMjUwOSA5NTU1IChPdXRzaWRlIEJhbmdhbG9y
ZSlcblxuSXNyYWVsOlxuMDkgNzkwIDY3MTVcbg0KIFxuSXRhbHk6XG4wMzkgNjkwNjEyMzQgKDAz
OSBpcyBsb2NhbCBjaXR5IGNvZGUgbm90IGNvdW50cnkgY29kZSlcblxuSmFwYW46DQogXG5Gcm9t
IFRJIENhbXB1cyB1c2UgOCA5OTUgNzc3N1xuT3V0c2lkZSBUSSB1c2UgMDMgNDMzMSAzNzc3XG5c
bk1hbGF5c2lhOlwNCiBuRnJvbSBJUCBwaG9uZSBkaWFsIDI2NDM3OTlcbkZyb20gS3VhbGEgTHVt
cHVyIGRpYWwgNDI2NCAzNzk5XG5PdXRzaWRlIEt1YQ0KIGxhIEx1bXB1ciBkaWFsICgwMyk0MjY0
IDM3OTlcblxuTm9yd2F5OlxuMiAyOTUgODc0NFxuXG5QaGlsaXBwaW5lczpcbkZyb20gDQogQmFn
dWlvIENpdHkgdXNlIDQ0NzExNzdcbkZyb20gTWV0cm8gTWFuaWxhIGFyZWEgdXNlIDg3MDI0Nzdc
blxuU2luZ2Fwb3JlOlwNCiBuRnJvbSBJUCBwaG9uZSBkaWFsIDM4OTQ3Nzdcbk91dHNpZGUgVEkg
dXNlIDYzODkgNDc3N1xuXG5Tb3V0aCBLb3JlYTpcbkZybw0KIG0gSVAgcGhvbmUgZGlhbCA1NjA2
OTk4XG5Gcm9tIFNlb3VsIGRpYWwgNTYwNjk5OFxuT3V0c2lkZSBTZW91bCBkaWFsICgwMik1DQog
NjA2OTk4XG5cblN3ZWRlbjpcbjA4IDU4NzU1NTc3XG5cblRhaXdhbjpcbkZyb20gSVAgcGhvbmUg
ZGlhbCAxMzYzXG5Gcm9tIFQNCiBhaXBlaSBkaWFsIDIyNDEgMTM2M1xuT3V0c2lkZSBUYWlwZWkg
ZGlhbCAoMDIpMjI0MSAxMzYzXG5cblR1cmtleTpcbkxhbmRsaQ0KIG5lIE9ubHkgZGlhbCAwODEx
IDI4OCAwMDAxXG50aGVuIGVudGVyIDg3NyA2MzMgMTEyM1xuXG5VSzpcbjAxOTA4IDM1NTU5OVxu
DQogXG5VUzpcbjk3MiA5OTUgNzc3NyBvciAxODc3IDU2MSA2ODI4XG5cblxuUmVjdXJyaW5nIGNv
bmZlcmVuY2VzXG5GaXJzdCBzY2gNCiBlZHVsZWQgY29uZmVyZW5jZTogICAgIFR1ZSBKdW4gMjVc
LCAyMDEzXG5SZWN1cnJlbmNlIGZyZXF1ZW5jeTogICBXZWVrbHkgLQ0KICBFdmVyeSAxIHdlZWso
cykgb24gVHVlc2RheVxuUmVjdXJyZW5jZSBlbmRzOiAgICAgICAgRW5kIGFmdGVyIDUyIG9jY3Vy
cmVuDQogY2VzXG5cblxuDQpSUlVMRTpGUkVRPVdFRUtMWTtVTlRJTD0yMDE0MDYxN1QxNTAwMDBa
O0lOVEVSVkFMPTE7QllEQVk9VFU7V0tTVD1TVQ0KU1VNTUFSWTtMQU5HVUFHRT1lbi1VUzpZb2N0
byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1QYWNpZmljIFN0
YW5kYXJkIFRpbWU6MjAxNDAzMThUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMgU3RhbmRhcmQg
VGltZToyMDE0MDMxOFQwODMwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAw
ODAwMDAwMDAwMjBBQ0RBNjU5RDE2Q0YwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAwMDAwMDFFRjU5
ODc3ODVGQTQ2NDJBNUE3OTUyN0FGNTEwMjlGDQpDTEFTUzpQVUJMSUMNClBSSU9SSVRZOjUNCkRU
U1RBTVA6MjAxNDAzMTNUMTk1NzQ3Wg0KVFJBTlNQOk9QQVFVRQ0KU1RBVFVTOkNPTkZJUk1FRA0K
U0VRVUVOQ0U6NQ0KTE9DQVRJT047TEFOR1VBR0U9ZW4tVVM6QnJpZGdlIEluZm8gRW5jbG9zZWQN
ClgtTUlDUk9TT0ZULUNETy1BUFBULVNFUVVFTkNFOjUNClgtTUlDUk9TT0ZULUNETy1PV05FUkFQ
UFRJRDoxMjY1OTY1MDIyDQpYLU1JQ1JPU09GVC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgt
TUlDUk9TT0ZULUNETy1JTlRFTkRFRFNUQVRVUzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZ
RVZFTlQ6RkFMU0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNE
Ty1JTlNUVFlQRToxDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZBTFNFDQpCRUdJTjpW
QUxBUk0NCkFDVElPTjpESVNQTEFZDQpERVNDUklQVElPTjpSRU1JTkRFUg0KVFJJR0dFUjtSRUxB
VEVEPVNUQVJUOi1QVDE1TQ0KRU5EOlZBTEFSTQ0KRU5EOlZFVkVOVA0KRU5EOlZDQUxFTkRBUg0K

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E54FF54AFfmsmsx111amrcor_--
