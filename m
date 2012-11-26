Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 161C7E0045D
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 14:40:58 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2012 14:40:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,323,1352102400"; 
	d="scan'208,217";a="247424773"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 26 Nov 2012 14:40:56 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 26 Nov 2012 14:40:56 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.171]) with mapi id
	14.01.0355.002; Mon, 26 Nov 2012 14:40:55 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>, "Bodke, Kishore K"
	<kishore.k.bodke@intel.com>, "Erway, Tracey M" <tracey.m.erway@intel.com>, 
	"Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, "Hart, Darren"
	<darren.hart@intel.com>, "Lock, Joshua" <joshua.lock@intel.com>, "Moeller, 
	Thorsten" <thorsten.moeller@intel.com>, "Osier-mixon, Jeffrey"
	<jeffrey.osier-mixon@intel.com>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Saxena, Rahul" <rahul.saxena@intel.com>,
	"Stewart, David C" <david.c.stewart@intel.com>, "Wold, Saul"
	<saul.wold@intel.com>, "Zanussi, Tom" <tom.zanussi@intel.com>, "Zhang, 
	Jessica" <jessica.zhang@intel.com>, "Rifenbark, Scott M"
	<scott.m.rifenbark@intel.com>, "Serban, Laurentiu"
	<laurentiu.serban@intel.com>, "Petrisor,
	Ileana" <ileana.petrisor@intel.com>, 
	"Damian, Alexandru" <alexandru.damian@intel.com>, "Burton, Ross"
	<ross.burton@intel.com>, "Mueller, Robert" <robert.mueller@intel.com>,
	"Arce Moreno, Abraham" <abraham.arce.moreno@intel.com>, "Santana Lopez,
	Mario A" <mario.a.santana.lopez@intel.com>, "Calles Palacios, Osvaldo"
	<osvaldo.calles.palacios@intel.com>, "Patel, Keyur R"
	<keyur.r.patel@intel.com>, 'Anders Darander' <anders@chargestorm.se>,
	'Bruce Ashfield' <bruce.ashfield@windriver.com>, 'Daniel Cauchy'
	<dcauchy@mvista.com>, "'deVries, Alex'" <Alex.deVries@windriver.com>,
	"'Dixon, Brad'" <Brad_Dixon@mentor.com>, "Dmytriyenko,
	Denys" <denys@ti.com>, 
	"'Hatle, Mark'" <mark.hatle@windriver.com>, 'Jeremy Puhlman'
	<jpuhlman@gmail.com>, "Kridner, Jason" <jdk@ti.com>,
	"'Lieu.Ta@windriver.com'" <'Lieu.Ta@windriver.com'>, "'McCombe, Kevin'"
	<kevin.mccombe@windriver.com>, 'Sanjay Raina' <sraina@mvista.com>, "'Polk, 
	Jeffrey'" <jeff.polk@windriver.com>, "'Ranslam, Rob'"
	<Rob.Ranslam@windriver.com>, "'Hudson, Sean'" <Sean_Hudson@mentor.com>,
	'Ravi Vompolu' <Ravi.Vompolu@mathworks.com>, "'Sadiq, Irfan'"
	<Irfan_Sadiq@mentor.com>, "'achaudha@mvista.com'" <achaudha@mvista.com>
Thread-Topic: Yocto Project Technical Team Meeting
Thread-Index: Ac3L89LqCt/ClNHmQjqLT20ujqok5xBFVASA
Date: Mon, 26 Nov 2012 22:40:54 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A48606B7A@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 26 Nov 2012 14:54:26 -0800
Cc: "Szankin, Maciej" <maciej.szankin@intel.com>, "Moisan,
	Radu" <radu.moisan@intel.com>, "Palalau,
	AlexandruX" <alexandrux.palalau@intel.com>, "Mirea,
	Viorel" <viorel.mirea@intel.com>, "Buerger,
	Christian \(Chris\)" <Chris.Buerger@windriver.com>,
	SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Project Technical Team Meeting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Nov 2012 22:40:58 -0000
X-Groupsio-MsgNum: 10660
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A48606B7AORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A48606B7AORSMSX101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

When: Tuesday, November 27, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (=
US & Canada).
Where: Bridge Info Enclosed

Note: The GMT offset above does not reflect daylight saving time adjustment=
s.

*~*~*~*~*~*~*~*~*~*

We encourage people attending the meeting to logon the Yocto IRC chancel du=
ring the meeting (optional):

Yocto IRC: http://webchat.freenode.net/?channels=3D#yocto
IRC Tutorial: http://www.irchelp.org/irchelp/irctutorial.html

Conference details
Conference name:        Yocto Technical Team
Conference date/start time:     Tue Jun 26, 2012 at 10:00 AM Central Daylig=
ht Time
Participants:   30
Duration:       60 minutes
Participant passcode:   76994298
Dial-in number:         1.972.995.7777
US Toll Free number:    1.877.561.6828
BlackBerry users, click this link to join your conference as a participant:=
     1.972.995.7777x76994298#
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
01604 663003

US:
972 995 7777 or 1877 561 6828


Recurring conferences
First scheduled conference:     Tue Jun 26, 2012
Recurrence frequency:   Weekly - Every 1 week(s) on Tuesday
Recurrence ends:        End on Fri Jun 21, 2013, 10:40 AM CDT





--_000_7E680CB2A76BB8438D08CF13C09FC53A48606B7AORSMSX101amrcor_
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
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>When: Tuesday, November 27, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific T=
ime (US &amp; Canada).</div>
<div>Where: Bridge Info Enclosed</div>
<div>&nbsp;</div>
<div>Note: The GMT offset above does not reflect daylight saving time adjus=
tments.</div>
<div>&nbsp;</div>
<div>*~*~*~*~*~*~*~*~*~*</div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">W=
e encourage people attending the meeting to logon the Yocto IRC chancel dur=
ing the meeting (optional):</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp;</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">Y=
octo IRC: <a href=3D"http://webchat.freenode.net/?channels=3D#yocto"><font =
color=3D"blue"><u>http://webchat.freenode.net/?channels=3D#yocto</u></font>=
</a></span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">I=
RC Tutorial: <a href=3D"http://www.irchelp.org/irchelp/irctutorial.html"><f=
ont color=3D"blue"><u>http://www.irchelp.org/irchelp/irctutorial.html</u></=
font></a> </span></font></div>
<div>&nbsp;</div>
<table width=3D"725" style=3D"width:435pt;margin-left:0.2pt;">
<col width=3D"725" style=3D"width:435pt;">
<tr>
<td style=3D"background-color:#E8E8E8;"><font face=3D"Verdana" size=3D"2"><=
span style=3D"font-size:8.5pt;background-color:#E8E8E8;"><b>Conference deta=
ils</b> </span></font></td>
</tr>
</table>
<table width=3D"725" style=3D"width:435pt;margin-left:0.2pt;">
<col width=3D"217" style=3D"width:130.4pt;">
<col width=3D"507" style=3D"width:304.6pt;">
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Conference name: </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Yocto Technical Team</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Conference date/start time: </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Tue Jun 26, 2012 at 10:00 AM Central Daylight Time </b></s=
pan></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Participants: </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>30</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Duration: </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>60 minutes </b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Participant passcode: </span></font></td>
<td><font color=3D"#1F497D">76994298</font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Dial-in number: </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>1.972.995.7777 </b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">US Toll Free number: </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>1.877.561.6828 </b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">BlackBerry users, click this link to join your conference as =
a <b>participant</b>:</span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>1.972.995.7777x</b><font face=3D"Calibri" size=3D"2" color=
=3D"#1F497D"><span style=3D"font-size:11pt;">76994298</span></font><b>#</b>=
</span></font></td>
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
<td></td>
</tr>
<tr>
<td style=3D"background-color:#428CC6;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#CFCFCF"><span style=3D"font-size:8.5pt;background-color:#428CC6;">=
<b>Local and Global Access Numbers</b> </span></font></td>
</tr>
</table>
<div><font color=3D"#666666">&nbsp;</font></div>
<table width=3D"576" style=3D"width:345.6pt;margin-left:5.55pt;">
<col width=3D"172" style=3D"width:103.4pt;">
<col width=3D"403" style=3D"width:242.2pt;">
<tr>
<td></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2"><span style=3D"font-size:8.5pt;"><b>C=
ountry</b> </span></font></td>
<td><font face=3D"Verdana" size=3D"2"><span style=3D"font-size:8.5pt;"><b>D=
ial-in number</b></span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Australia:</b> </span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
1800 636 843</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Czech Republic:</b> </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">242 430 350</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>China (Beijing):</b> </span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From office dial 8-9957777 or 8784277
<br>

Beijing Out of Office dial 5878 4277</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>China (Shanghai):</b> </span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From office dial 8-9957777 or 3073322
<br>

Shanghai Out of Office dial 2307 3322</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>China (Shenzen):</b> </span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From office dial 8-9957777 or 6007877
<br>

Shenzen Out of Office dial 2600 7877</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>China (Other Cities):</b> </span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From IP phone dial 8-9957777
<br>

Other cities - Non IP phone dial 021-23073322</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Denmark:</b> </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">8060 1400</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Finland:</b> </span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
09 41333477</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>France: </b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">0497 275888</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Germany:</b> </span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
08161 803232</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Holland: </b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">030 2417490</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>India: </b></span></font></td>
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
-size:8.5pt;"><b>Israel: </b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">09 790 6715</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Italy:</b> </span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
039 69061234 (039 is local city code not country code)</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Japan: </b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">From TI Campus use 8 995 7777
<br>

Outside TI use 03 4331 3777</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Malaysia: </b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From IP phone dial 2643799
<br>

From Kuala Lumpur dial 4264 3799 <br>

Outside Kuala Lumpur dial (03)4264 3799</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Norway: </b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">2 295 8744</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Philippines:</b> </span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From Baguio City use 4471177
<br>

From Metro Manila area use 8702477</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Singapore:</b> </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">From IP phone dial 3894777
<br>

Outside TI use 6389 4777</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>South Korea:</b> </span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From IP phone dial 5606998
<br>

From Seoul dial 5606998 <br>

Outside Seoul dial (02)5606998</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Sweden: </b></span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">08 58755577</span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>Taiwan:</b> </span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
From IP phone dial 1363
<br>

From Taipei dial 2241 1363 <br>

Outside Taipei dial (02)2241 1363</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Turkey:</b> </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Landline Only</b> dial 0811 288 0001
<br>

then enter 877 633 1123 </span></font></td>
</tr>
<tr>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
<b>UK: </b></span></font></td>
<td style=3D"background-color:#EBEBEB;"><font face=3D"Verdana" size=3D"2" c=
olor=3D"#666666"><span style=3D"font-size:8.5pt;background-color:#EBEBEB;">=
01604 663003</span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>US:</b> </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">972 995 7777 or 1877 561 6828</span></font></td>
</tr>
</table>
<div><font color=3D"#666666">&nbsp;</font></div>
</td>
</tr>
</table>
<table width=3D"725" style=3D"width:435pt;margin-left:0.2pt;">
<col width=3D"725" style=3D"width:435pt;">
<tr>
<td style=3D"background-color:#E8E8E8;"><font face=3D"Verdana" size=3D"2"><=
span style=3D"font-size:8.5pt;background-color:#E8E8E8;"><b>Recurring confe=
rences </b></span></font></td>
</tr>
</table>
<table width=3D"725" style=3D"width:435pt;margin-left:0.2pt;">
<col width=3D"217" style=3D"width:130.4pt;">
<col width=3D"507" style=3D"width:304.6pt;">
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">First scheduled conference: </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Tue Jun 26, 2012</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Recurrence frequency: </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>Weekly - Every 1 week(s) on Tuesday</b></span></font></td>
</tr>
<tr>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;">Recurrence ends: </span></font></td>
<td><font face=3D"Verdana" size=3D"2" color=3D"#666666"><span style=3D"font=
-size:8.5pt;"><b>End on Fri Jun 21, 2013, 10:40 AM CDT</b></span></font></t=
d>
</tr>
</table>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A48606B7AORSMSX101amrcor_
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
Q049IkxpdSwgU29uZyI6TUFJTFRPOnNvbmcubGl1QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1S
RVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iQmFycm9z
IFBlbg0KIGEsIEJlbGVuIjpNQUlMVE86YmVsZW4uYmFycm9zLnBlbmFAaW50ZWwuY29tDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJCb2RrZSwgS2lzDQogaG9yZSBLIjpNQUlMVE86a2lzaG9yZS5rLmJvZGtlQGludGVsLmNv
bQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JT
VlA9VFJVRTtDTj0iRXJ3YXksIFRyYQ0KIGNleSBNIjpNQUlMVE86dHJhY2V5Lm0uZXJ3YXlAaW50
ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJ
T047UlNWUD1UUlVFO0NOPSJGbGFuYWdhbiwgDQogRWxpemFiZXRoIjpNQUlMVE86ZWxpemFiZXRo
LmZsYW5hZ2FuQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNU
QVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iSGFydCwgRGFycg0KIGVuIjpNQUlMVE86ZGFy
cmVuLmhhcnRAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RB
VD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJMb2NrLCBKb3NoDQogdWEiOk1BSUxUTzpqb3No
dWEubG9ja0BpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFU
PU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik1vZWxsZXIsIFQNCiBob3JzdGVuIjpNQUlMVE86
dGhvcnN0ZW4ubW9lbGxlckBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5U
O1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik9zaWVyLW1peG8NCiBuLCBKZWZm
cmV5IjpNQUlMVE86amVmZnJleS5vc2llci1taXhvbkBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9
UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlB1cmRp
ZSwgUmkNCiBjaGFyZCI6TUFJTFRPOnJpY2hhcmQucHVyZGllQGludGVsLmNvbQ0KQVRURU5ERUU7
Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0i
U2F4ZW5hLCBSYQ0KIGh1bCI6TUFJTFRPOnJhaHVsLnNheGVuYUBpbnRlbC5jb20NCkFUVEVOREVF
O1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049
IlN0ZXdhcnQsIEQNCiBhdmlkIEMiOk1BSUxUTzpkYXZpZC5jLnN0ZXdhcnRAaW50ZWwuY29tDQpB
VFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1U
UlVFO0NOPSJXb2xkLCBTYXVsIg0KIDpNQUlMVE86c2F1bC53b2xkQGludGVsLmNvbQ0KQVRURU5E
RUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtD
Tj0iWmFudXNzaSwgVA0KIG9tIjpNQUlMVE86dG9tLnphbnVzc2lAaW50ZWwuY29tDQpBVFRFTkRF
RTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NO
PSJaaGFuZywgSmVzDQogc2ljYSI6TUFJTFRPOmplc3NpY2EuemhhbmdAaW50ZWwuY29tDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJSaWZlbmJhcmssDQogIFNjb3R0IE0iOk1BSUxUTzpzY290dC5tLnJpZmVuYmFya0BpbnRl
bC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElP
TjtSU1ZQPVRSVUU7Q049IlNlcmJhbiwgTGENCiB1cmVudGl1IjpNQUlMVE86bGF1cmVudGl1LnNl
cmJhbkBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5F
RURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlBldHJpc29yLCANCiBJbGVhbmEiOk1BSUxUTzppbGVh
bmEucGV0cmlzb3JAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJU
U1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJEYW1pYW4sIEFsDQogZXhhbmRydSI6TUFJ
TFRPOmFsZXhhbmRydS5kYW1pYW5AaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJ
UEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJCdXJ0b24sIFJvDQogc3Mi
Ok1BSUxUTzpyb3NzLmJ1cnRvbkBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQ
QU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik11ZWxsZXIsIFINCiBvYmVy
dCI6TUFJTFRPOnJvYmVydC5tdWVsbGVyQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFS
VElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iQXJjZSBNb3Jlbg0K
IG8sIEFicmFoYW0iOk1BSUxUTzphYnJhaGFtLmFyY2UubW9yZW5vQGludGVsLmNvbQ0KQVRURU5E
RUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtD
Tj0iU2FudGFuYSBMbw0KIHBleiwgTWFyaW8gQSI6TUFJTFRPOm1hcmlvLmEuc2FudGFuYS5sb3Bl
ekBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURT
LUFDVElPTjtSU1ZQPVRSVUU7Q049IkNhbGxlcyBQYWwNCiBhY2lvcywgT3N2YWxkbyI6TUFJTFRP
Om9zdmFsZG8uY2FsbGVzLnBhbGFjaW9zQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFS
VElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUGF0ZWwsIEtleQ0K
IHVyIFIiOk1BSUxUTzprZXl1ci5yLnBhdGVsQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEt
UEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0nQW5kZXJzIERh
DQogcmFuZGVyJzpNQUlMVE86YW5kZXJzQGNoYXJnZXN0b3JtLnNlDQpBVFRFTkRFRTtST0xFPVJF
US1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdCcnVjZSBB
c2gNCiBmaWVsZCc6TUFJTFRPOmJydWNlLmFzaGZpZWxkQHdpbmRyaXZlci5jb20NCkFUVEVOREVF
O1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049
J0RhbmllbCBDYQ0KIHVjaHknOk1BSUxUTzpkY2F1Y2h5QG12aXN0YS5jb20NCkFUVEVOREVFO1JP
TEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Iidk
ZVZyaWVzLCANCiBBbGV4JyI6TUFJTFRPOkFsZXguZGVWcmllc0B3aW5kcml2ZXIuY29tDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSInRGl4b24sIEJyDQogYWQnIjpNQUlMVE86QnJhZF9EaXhvbkBtZW50b3IuY29tDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJEbXl0cml5ZW5rDQogbywgRGVueXMiOk1BSUxUTzpkZW55c0B0aS5jb20NCkFUVEVOREVF
O1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049
IidIYXRsZSwgTWENCiByayciOk1BSUxUTzptYXJrLmhhdGxlQHdpbmRyaXZlci5jb20NCkFUVEVO
REVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7
Q049J0plcmVteSBQdQ0KIGhsbWFuJzpNQUlMVE86anB1aGxtYW5AZ21haWwuY29tDQpBVFRFTkRF
RTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NO
PSJLcmlkbmVyLCBKDQogYXNvbiI6TUFJTFRPOmpka0B0aS5jb20NCkFUVEVOREVFO1JPTEU9UkVR
LVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049J0xpZXUuVGFA
dw0KIGluZHJpdmVyLmNvbSc6TUFJTFRPOidMaWV1LlRhQHdpbmRyaXZlci5jb20nDQpBVFRFTkRF
RTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NO
PSInTWNDb21iZSwgDQogS2V2aW4nIjpNQUlMVE86a2V2aW4ubWNjb21iZUB3aW5kcml2ZXIuY29t
DQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNW
UD1UUlVFO0NOPSdTYW5qYXkgUmENCiBpbmEnOk1BSUxUTzpzcmFpbmFAbXZpc3RhLmNvbQ0KQVRU
RU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJV
RTtDTj0iJ1BvbGssIEplZg0KIGZyZXknIjpNQUlMVE86amVmZi5wb2xrQHdpbmRyaXZlci5jb20N
CkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049IidSYW5zbGFtLCANCiBSb2InIjpNQUlMVE86Um9iLlJhbnNsYW1Ad2luZHJpdmVy
LmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9O
O1JTVlA9VFJVRTtDTj0iJ0h1ZHNvbiwgUw0KIGVhbiciOk1BSUxUTzpTZWFuX0h1ZHNvbkBtZW50
b3IuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJ
T047UlNWUD1UUlVFO0NOPSdSYXZpIFZvbXANCiBvbHUnOk1BSUxUTzpSYXZpLlZvbXBvbHVAbWF0
aHdvcmtzLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMt
QUNUSU9OO1JTVlA9VFJVRTtDTj0iJ1NhZGlxLCBJcg0KIGZhbiciOk1BSUxUTzpJcmZhbl9TYWRp
cUBtZW50b3IuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSdhY2hhdWRoYUANCiBtdmlzdGEuY29tJzpNQUlMVE86YWNo
YXVkaGFAbXZpc3RhLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUG9wYSwgVmFsZQ0KIG50aW4iOk1BSUxUTzp2YWxl
bnRpbi5wb3BhQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNU
QVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iTW9zZXMsIEZyZQ0KIGQiOk1BSUxUTzpmcmVk
Lm1vc2VzQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iSW9yZ2EsIENyaQ0KIHN0aWFuIjpNQUlMVE86Y3Jp
c3RpYW4uaW9yZ2FAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJUSUNJUEFOVDtQQVJU
U1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPVNTRC1PVEMgUm8NCiBtYW5pYSBZb2N0byBR
QTpNQUlMVE86c3NkLW90Yy5yb21hbmlhLnlvY3RvLnFhQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9M
RT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUGFs
YWxhdSwgQQ0KIGxleGFuZHJ1WCI6TUFJTFRPOmFsZXhhbmRydXgucGFsYWxhdUBpbnRlbC5jb20N
CkFUVEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049Ik1vaXNhbiwgUmENCiBkdSI6TUFJTFRPOnJhZHUubW9pc2FuQGludGVsLmNvbQ0K
QVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9
VFJVRTtDTj0iQnVlcmdlciwgQw0KIGhyaXN0aWFuIChDaHJpcykiOk1BSUxUTzpDaHJpcy5CdWVy
Z2VyQHdpbmRyaXZlci5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRTVEFU
PU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049eW9jdG9AeW9jdA0KIG9wcm9qZWN0Lm9yZzpNQUlM
VE86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7
UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iJ0J1dGxlciwgUA0KIGF1bCciOk1B
SUxUTzpQYXVsLkJ1dGxlckB3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJUSUNJ
UEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJNaXJlYSwgVmlvDQogcmVs
IjpNQUlMVE86dmlvcmVsLm1pcmVhQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElD
SVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iS2FtYmxlLCBOaQ0KIHRp
biBBIjpNQUlMVE86bml0aW4uYS5rYW1ibGVAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1Q
QVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJTemFua2luLCBN
DQogYWNpZWoiOk1BSUxUTzptYWNpZWouc3phbmtpbkBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9
T1BULVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkdyaWdv
cm9wb2wNCiAsIElvYW5hWCI6TUFJTFRPOmlvYW5heC5ncmlnb3JvcG9sQGludGVsLmNvbQ0KREVT
Q1JJUFRJT047TEFOR1VBR0U9ZW4tVVM6V2hlbjogVHVlc2RheVwsIE5vdmVtYmVyIDI3XCwgMjAx
MiA4OjAwIEFNLTk6MDAgDQogQU0gKFVUQy0wODowMCkgUGFjaWZpYyBUaW1lIChVUyAmIENhbmFk
YSkuXG5XaGVyZTogQnJpZGdlIEluZm8gRW5jbG9zZWRcblwNCiBuTm90ZTogVGhlIEdNVCBvZmZz
ZXQgYWJvdmUgZG9lcyBub3QgcmVmbGVjdCBkYXlsaWdodCBzYXZpbmcgdGltZSBhZGp1c3RtZQ0K
IG50cy5cblxuKn4qfip+Kn4qfip+Kn4qfip+KlxuXG5XZSBlbmNvdXJhZ2UgcGVvcGxlIGF0dGVu
ZGluZyB0aGUgbWVldGluZyB0DQogbyBsb2dvbiB0aGUgWW9jdG8gSVJDIGNoYW5jZWwgZHVyaW5n
IHRoZSBtZWV0aW5nIChvcHRpb25hbCk6XG5cbllvY3RvIElSQzoNCiAgaHR0cDovL3dlYmNoYXQu
ZnJlZW5vZGUubmV0Lz9jaGFubmVscz0jeW9jdG9cbklSQyBUdXRvcmlhbDogaHR0cDovL3d3dy5p
cg0KIGNoZWxwLm9yZy9pcmNoZWxwL2lyY3R1dG9yaWFsLmh0bWxcblxuQ29uZmVyZW5jZSBkZXRh
aWxzXG5Db25mZXJlbmNlIG5hbWU6DQogICAgICAgICBZb2N0byBUZWNobmljYWwgVGVhbVxuQ29u
ZmVyZW5jZSBkYXRlL3N0YXJ0IHRpbWU6ICAgICBUdWUgSnVuIDI2XCwNCiAgMjAxMiBhdCAxMDow
MCBBTSBDZW50cmFsIERheWxpZ2h0IFRpbWVcblBhcnRpY2lwYW50czogICAzMFxuRHVyYXRpb246
ICAgIA0KICAgIDYwIG1pbnV0ZXNcblBhcnRpY2lwYW50IHBhc3Njb2RlOiAgIDc2OTk0Mjk4XG5E
aWFsLWluIG51bWJlcjogICAgICAgICAxDQogLjk3Mi45OTUuNzc3N1xuVVMgVG9sbCBGcmVlIG51
bWJlcjogICAgMS44NzcuNTYxLjY4MjhcbkJsYWNrQmVycnkgdXNlcnNcLCANCiBjbGljayB0aGlz
IGxpbmsgdG8gam9pbiB5b3VyIGNvbmZlcmVuY2UgYXMgYSBwYXJ0aWNpcGFudDogICAgIDEuOTcy
Ljk5NS43Nw0KIDc3eDc2OTk0Mjk4I1xuICAgICAgICBEZXBlbmRpbmcgb24gd2hlcmUgeW91IGFy
ZSBkaWFsaW5nIGZyb21cLCBlaXRoZXIgeW91DQogciBCbGFja0JlcnJ5IHdpbGwgcGF1c2UgYW5k
IGVudGVyIHRoZSBwYXNzY29kZSBhdXRvbWF0aWNhbGx5IG9yIHlvdSB3aWxsIGINCiBlIHByb21w
dGVkIHRvIGNsaWNrIGFnYWluIHRvIGRpYWwgdGhlIHBhc3Njb2RlLlxuXG5cbkxvY2FsIGFuZCBH
bG9iYWwgQWNjZQ0KIHNzIE51bWJlcnNcblxuXG5cblxuQ291bnRyeVxuRGlhbC1pbiBudW1iZXJc
blxuQXVzdHJhbGlhOlxuMTgwMCA2MzYgODQzXG5cDQogbkN6ZWNoIFJlcHVibGljOlxuMjQyIDQz
MCAzNTBcblxuQ2hpbmEgKEJlaWppbmcpOlxuRnJvbSBvZmZpY2UgZGlhbCA4LTk5NTcNCiA3Nzcg
b3IgODc4NDI3N1xuQmVpamluZyBPdXQgb2YgT2ZmaWNlIGRpYWwgNTg3OCA0Mjc3XG5cbkNoaW5h
IChTaGFuZ2hhaSk6XA0KIG5Gcm9tIG9mZmljZSBkaWFsIDgtOTk1Nzc3NyBvciAzMDczMzIyXG5T
aGFuZ2hhaSBPdXQgb2YgT2ZmaWNlIGRpYWwgMjMwNyAzDQogMzIyXG5cbkNoaW5hIChTaGVuemVu
KTpcbkZyb20gb2ZmaWNlIGRpYWwgOC05OTU3Nzc3IG9yIDYwMDc4NzdcblNoZW56ZW4gT3UNCiB0
IG9mIE9mZmljZSBkaWFsIDI2MDAgNzg3N1xuXG5DaGluYSAoT3RoZXIgQ2l0aWVzKTpcbkZyb20g
SVAgcGhvbmUgZGlhbCA4LQ0KIDk5NTc3Nzdcbk90aGVyIGNpdGllcyAtIE5vbiBJUCBwaG9uZSBk
aWFsIDAyMS0yMzA3MzMyMlxuXG5EZW5tYXJrOlxuODA2MCAxDQogNDAwXG5cbkZpbmxhbmQ6XG4w
OSA0MTMzMzQ3N1xuXG5GcmFuY2U6XG4wNDk3IDI3NTg4OFxuXG5HZXJtYW55OlxuMDgxNjEgODAN
CiAzMjMyXG5cbkhvbGxhbmQ6XG4wMzAgMjQxNzQ5MFxuXG5JbmRpYTpcbkJTTkwgc3Vic2NyaWJl
cnMgdXNlIDE4MDAgNDI1IDk5OQ0KIDYgKFRvbGwgRnJlZSlcbkFpcnRlbCBzdWJzY3JpYmVycyB1
c2UgMDAwOCAwMDkgODYxIDIxMiAoVG9sbCBGcmVlKVxuRnJvbSBUDQogSSBDYW1wdXMgdXNlIDg5
OTU3Nzc3XG5PdGhlcnMgdXNlIDI1MDkgOTU1NSAoTGFuZGxpbmUgd2l0aGluIEJhbmdhbG9yZSkg
b3INCiBcbjgwIDI1MDkgOTU1NSAoT3V0c2lkZSBCYW5nYWxvcmUpXG5cbklzcmFlbDpcbjA5IDc5
MCA2NzE1XG5cbkl0YWx5OlxuMDM5IA0KIDY5MDYxMjM0ICgwMzkgaXMgbG9jYWwgY2l0eSBjb2Rl
IG5vdCBjb3VudHJ5IGNvZGUpXG5cbkphcGFuOlxuRnJvbSBUSSBDYW1wDQogdXMgdXNlIDggOTk1
IDc3Nzdcbk91dHNpZGUgVEkgdXNlIDAzIDQzMzEgMzc3N1xuXG5NYWxheXNpYTpcbkZyb20gSVAg
cGhvbmUNCiAgZGlhbCAyNjQzNzk5XG5Gcm9tIEt1YWxhIEx1bXB1ciBkaWFsIDQyNjQgMzc5OVxu
T3V0c2lkZSBLdWFsYSBMdW1wdXIgZGlhbA0KICAoMDMpNDI2NCAzNzk5XG5cbk5vcndheTpcbjIg
Mjk1IDg3NDRcblxuUGhpbGlwcGluZXM6XG5Gcm9tIEJhZ3VpbyBDaXR5IHVzDQogZSA0NDcxMTc3
XG5Gcm9tIE1ldHJvIE1hbmlsYSBhcmVhIHVzZSA4NzAyNDc3XG5cblNpbmdhcG9yZTpcbkZyb20g
SVAgcGhvbmUNCiAgZGlhbCAzODk0Nzc3XG5PdXRzaWRlIFRJIHVzZSA2Mzg5IDQ3NzdcblxuU291
dGggS29yZWE6XG5Gcm9tIElQIHBob25lIGRpYQ0KIGwgNTYwNjk5OFxuRnJvbSBTZW91bCBkaWFs
IDU2MDY5OThcbk91dHNpZGUgU2VvdWwgZGlhbCAoMDIpNTYwNjk5OFxuXG5Td2VkDQogZW46XG4w
OCA1ODc1NTU3N1xuXG5UYWl3YW46XG5Gcm9tIElQIHBob25lIGRpYWwgMTM2M1xuRnJvbSBUYWlw
ZWkgZGlhbCAyMjQNCiAxIDEzNjNcbk91dHNpZGUgVGFpcGVpIGRpYWwgKDAyKTIyNDEgMTM2M1xu
XG5UdXJrZXk6XG5MYW5kbGluZSBPbmx5IGRpYWwgMA0KIDgxMSAyODggMDAwMVxudGhlbiBlbnRl
ciA4NzcgNjMzIDExMjNcblxuVUs6XG4wMTYwNCA2NjMwMDNcblxuVVM6XG45NzIgOTk1DQogIDc3
Nzcgb3IgMTg3NyA1NjEgNjgyOFxuXG5cblJlY3VycmluZyBjb25mZXJlbmNlc1xuRmlyc3Qgc2No
ZWR1bGVkIGNvbmZlcmUNCiBuY2U6ICAgICBUdWUgSnVuIDI2XCwgMjAxMlxuUmVjdXJyZW5jZSBm
cmVxdWVuY3k6ICAgV2Vla2x5IC0gRXZlcnkgMSB3ZWVrKA0KIHMpIG9uIFR1ZXNkYXlcblJlY3Vy
cmVuY2UgZW5kczogICAgICAgIEVuZCBvbiBGcmkgSnVuIDIxXCwgMjAxM1wsIDEwOjQwIEFNDQog
IENEVFxuXG5cblxuXG4NClNVTU1BUlk7TEFOR1VBR0U9ZW4tVVM6WW9jdG8gUHJvamVjdCBUZWNo
bmljYWwgVGVhbSBNZWV0aW5nDQpEVFNUQVJUO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIw
MTIxMTI3VDA4MDAwMA0KRFRFTkQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjExMjdU
MDkwMDAwDQpVSUQ6MDQwMDAwMDA4MjAwRTAwMDc0QzVCNzEwMUE4MkUwMDgwMDAwMDAwMDcwNjYx
RDM1Mjg0RUNEMDEwMDAwMDAwMDAwMDAwMDANCiAwMTAwMDAwMDBFMUY0MUE3MUY5OTczRDQxQUUw
OUU2MzY2MzFFQzlFQg0KUkVDVVJSRU5DRS1JRDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToy
MDEyMTEyN1QwODAwMDANCkNMQVNTOlBVQkxJQw0KUFJJT1JJVFk6NQ0KRFRTVEFNUDoyMDEyMTEy
NlQyMjQwNTFaDQpUUkFOU1A6T1BBUVVFDQpTVEFUVVM6Q09ORklSTUVEDQpTRVFVRU5DRToxOA0K
TE9DQVRJT047TEFOR1VBR0U9ZW4tVVM6QnJpZGdlIEluZm8gRW5jbG9zZWQNClgtTUlDUk9TT0ZU
LUNETy1BUFBULVNFUVVFTkNFOjE4DQpYLU1JQ1JPU09GVC1DRE8tT1dORVJBUFBUSUQ6MjAwODMx
MTc3Mg0KWC1NSUNST1NPRlQtQ0RPLUJVU1lTVEFUVVM6VEVOVEFUSVZFDQpYLU1JQ1JPU09GVC1D
RE8tSU5URU5ERURTVEFUVVM6QlVTWQ0KWC1NSUNST1NPRlQtQ0RPLUFMTERBWUVWRU5UOkZBTFNF
DQpYLU1JQ1JPU09GVC1DRE8tSU1QT1JUQU5DRToxDQpYLU1JQ1JPU09GVC1DRE8tSU5TVFRZUEU6
Mw0KWC1NSUNST1NPRlQtRElTQUxMT1ctQ09VTlRFUjpGQUxTRQ0KQkVHSU46VkFMQVJNDQpBQ1RJ
T046RElTUExBWQ0KREVTQ1JJUFRJT046UkVNSU5ERVINClRSSUdHRVI7UkVMQVRFRD1TVEFSVDot
UFQxNU0NCkVORDpWQUxBUk0NCkVORDpWRVZFTlQNCkVORDpWQ0FMRU5EQVINCg==

--_000_7E680CB2A76BB8438D08CF13C09FC53A48606B7AORSMSX101amrcor_--
