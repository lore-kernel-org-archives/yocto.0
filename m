Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F10ECE0045D
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 11:39:30 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Dec 2012 11:38:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,217,1355126400"; 
	d="scan'208,217";a="251918088"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga002.jf.intel.com with ESMTP; 04 Dec 2012 11:39:23 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.125]) with mapi id
	14.01.0355.002; Tue, 4 Dec 2012 11:39:22 -0800
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
	<keyur.r.patel@intel.com>, "'achaudha@mvista.com'" <achaudha@mvista.com>
Thread-Topic: Yocto Project Technical Team Meeting
Thread-Index: Ac1PD+V8Ct/ClNHmQjqLT20ujqok5xBFVASA
Date: Tue, 4 Dec 2012 19:39:21 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A4860D5D0@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 04 Dec 2012 12:07:21 -0800
Cc: "Szankin, Maciej" <maciej.szankin@intel.com>, "Moisan,
	Radu" <radu.moisan@intel.com>, "Palalau,
	AlexandruX" <alexandrux.palalau@intel.com>, "Mirea,
	Viorel" <viorel.mirea@intel.com>,
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
X-List-Received-Date: Tue, 04 Dec 2012 19:39:31 -0000
X-Groupsio-MsgNum: 10828
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A4860D5D0ORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A4860D5D0ORSMSX101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

When: Occurs every Tuesday effective 6/26/2012 until 6/18/2013 from 8:00 AM=
 to 9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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





--_000_7E680CB2A76BB8438D08CF13C09FC53A4860D5D0ORSMSX101amrcor_
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
<div>When: Occurs every Tuesday effective 6/26/2012 until 6/18/2013 from 8:=
00 AM to 9:00 AM (UTC-08:00) Pacific Time (US &amp; Canada).</div>
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

--_000_7E680CB2A76BB8438D08CF13C09FC53A4860D5D0ORSMSX101amrcor_
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
RVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0nQW5kZXJz
IERhDQogcmFuZGVyJzpNQUlMVE86YW5kZXJzQGNoYXJnZXN0b3JtLnNlDQpBVFRFTkRFRTtST0xF
PVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJCYXJy
b3MgUGVuDQogYSwgQmVsZW4iOk1BSUxUTzpiZWxlbi5iYXJyb3MucGVuYUBpbnRlbC5jb20NCkFU
VEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRS
VUU7Q049IkJvZGtlLCBLaXMNCiBob3JlIEsiOk1BSUxUTzpraXNob3JlLmsuYm9ka2VAaW50ZWwu
Y29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047
UlNWUD1UUlVFO0NOPSdCcnVjZSBBc2gNCiBmaWVsZCc6TUFJTFRPOmJydWNlLmFzaGZpZWxkQHdp
bmRyaXZlci5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURT
LUFDVElPTjtSU1ZQPVRSVUU7Q049J0RhbmllbCBDYQ0KIHVjaHknOk1BSUxUTzpkY2F1Y2h5QG12
aXN0YS5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFD
VElPTjtSU1ZQPVRSVUU7Q049IidkZVZyaWVzLCANCiBBbGV4JyI6TUFJTFRPOkFsZXguZGVWcmll
c0B3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1O
RUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSInRGl4b24sIEJyDQogYWQnIjpNQUlMVE86QnJhZF9E
aXhvbkBtZW50b3IuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1O
RUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJEbXl0cml5ZW5rDQogbywgRGVueXMiOk1BSUxUTzpk
ZW55c0B0aS5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURT
LUFDVElPTjtSU1ZQPVRSVUU7Q049IkVyd2F5LCBUcmENCiBjZXkgTSI6TUFJTFRPOnRyYWNleS5t
LmVyd2F5QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iRmxhbmFnYW4sIA0KIEVsaXphYmV0aCI6TUFJTFRP
OmVsaXphYmV0aC5mbGFuYWdhbkBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQ
QU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkhhcnQsIERhcnINCiBlbiI6
TUFJTFRPOmRhcnJlbi5oYXJ0QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBB
TlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iJ0hhdGxlLCBNYQ0KIHJrJyI6
TUFJTFRPOm1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElD
SVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0nSmVyZW15IFB1DQogaGxt
YW4nOk1BSUxUTzpqcHVobG1hbkBnbWFpbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQ
QU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IktyaWRuZXIsIEoNCiBhc29u
IjpNQUlMVE86amRrQHRpLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNU
QVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0nTGlldS5UYUB3DQogaW5kcml2ZXIuY29tJzpN
QUlMVE86J0xpZXUuVGFAd2luZHJpdmVyLmNvbScNCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQ
QU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkxvY2ssIEpvc2gNCiB1YSI6
TUFJTFRPOmpvc2h1YS5sb2NrQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBB
TlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iJ01jQ29tYmUsIA0KIEtldmlu
JyI6TUFJTFRPOmtldmluLm1jY29tYmVAd2luZHJpdmVyLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEt
UEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iTW9lbGxlciwg
VA0KIGhvcnN0ZW4iOk1BSUxUTzp0aG9yc3Rlbi5tb2VsbGVyQGludGVsLmNvbQ0KQVRURU5ERUU7
Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0n
U2FuamF5IFJhDQogaW5hJzpNQUlMVE86c3JhaW5hQG12aXN0YS5jb20NCkFUVEVOREVFO1JPTEU9
UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik9zaWVy
LW1peG8NCiBuLCBKZWZmcmV5IjpNQUlMVE86amVmZnJleS5vc2llci1taXhvbkBpbnRlbC5jb20N
CkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049IidQb2xrLCBKZWYNCiBmcmV5JyI6TUFJTFRPOmplZmYucG9sa0B3aW5kcml2ZXIu
Y29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047
UlNWUD1UUlVFO0NOPSJQdXJkaWUsIFJpDQogY2hhcmQiOk1BSUxUTzpyaWNoYXJkLnB1cmRpZUBp
bnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFD
VElPTjtSU1ZQPVRSVUU7Q049IidSYW5zbGFtLCANCiBSb2InIjpNQUlMVE86Um9iLlJhbnNsYW1A
d2luZHJpdmVyLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVF
RFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iU2F4ZW5hLCBSYQ0KIGh1bCI6TUFJTFRPOnJhaHVsLnNh
eGVuYUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5F
RURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlN0ZXdhcnQsIEQNCiBhdmlkIEMiOk1BSUxUTzpkYXZp
ZC5jLnN0ZXdhcnRAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJU
U1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJXb2xkLCBTYXVsIg0KIDpNQUlMVE86c2F1
bC53b2xkQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iWmFudXNzaSwgVA0KIG9tIjpNQUlMVE86dG9tLnph
bnVzc2lAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1O
RUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJaaGFuZywgSmVzDQogc2ljYSI6TUFJTFRPOmplc3Np
Y2EuemhhbmdAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RB
VD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJSaWZlbmJhcmssDQogIFNjb3R0IE0iOk1BSUxU
TzpzY290dC5tLnJpZmVuYmFya0BpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQ
QU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IidIdWRzb24sIFMNCiBlYW4n
IjpNQUlMVE86U2Vhbl9IdWRzb25AbWVudG9yLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElD
SVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iU2VyYmFuLCBMYQ0KIHVy
ZW50aXUiOk1BSUxUTzpsYXVyZW50aXUuc2VyYmFuQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1S
RVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUGV0cmlz
b3IsIA0KIElsZWFuYSI6TUFJTFRPOmlsZWFuYS5wZXRyaXNvckBpbnRlbC5jb20NCkFUVEVOREVF
O1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049
IkRhbWlhbiwgQWwNCiBleGFuZHJ1IjpNQUlMVE86YWxleGFuZHJ1LmRhbWlhbkBpbnRlbC5jb20N
CkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049IkJ1cnRvbiwgUm8NCiBzcyI6TUFJTFRPOnJvc3MuYnVydG9uQGludGVsLmNvbQ0K
QVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9
VFJVRTtDTj0iTXVlbGxlciwgUg0KIG9iZXJ0IjpNQUlMVE86cm9iZXJ0Lm11ZWxsZXJAaW50ZWwu
Y29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047
UlNWUD1UUlVFO0NOPSJBcmNlIE1vcmVuDQogbywgQWJyYWhhbSI6TUFJTFRPOmFicmFoYW0uYXJj
ZS5tb3Jlbm9AaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RB
VD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdSYXZpIFZvbXANCiBvbHUnOk1BSUxUTzpSYXZp
LlZvbXBvbHVAbWF0aHdvcmtzLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFS
VFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iJ1NhZGlxLCBJcg0KIGZhbiciOk1BSUxU
TzpJcmZhbl9TYWRpcUBtZW50b3IuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQ
QVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJTYW50YW5hIExvDQogcGV6LCBNYXJp
byBBIjpNQUlMVE86bWFyaW8uYS5zYW50YW5hLmxvcGV6QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9M
RT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iQ2Fs
bGVzIFBhbA0KIGFjaW9zLCBPc3ZhbGRvIjpNQUlMVE86b3N2YWxkby5jYWxsZXMucGFsYWNpb3NA
aW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1B
Q1RJT047UlNWUD1UUlVFO0NOPSJQYXRlbCwgS2V5DQogdXIgUiI6TUFJTFRPOmtleXVyLnIucGF0
ZWxAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSdhY2hhdWRoYUANCiBtdmlzdGEuY29tJzpNQUlMVE86YWNo
YXVkaGFAbXZpc3RhLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUG9wYSwgVmFsZQ0KIG50aW4iOk1BSUxUTzp2YWxl
bnRpbi5wb3BhQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNU
QVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iTW9zZXMsIEZyZQ0KIGQiOk1BSUxUTzpmcmVk
Lm1vc2VzQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj15b2N0b0B5b2N0DQogb3Byb2plY3Qub3JnOk1BSUxU
Tzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJUSUNJUEFOVDtQ
QVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJJb3JnYSwgQ3JpDQogc3RpYW4iOk1B
SUxUTzpjcmlzdGlhbi5pb3JnYUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQ
QU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049U1NELU9UQyBSbw0KIG1hbmlh
IFlvY3RvIFFBOk1BSUxUTzpzc2Qtb3RjLnJvbWFuaWEueW9jdG8ucWFAaW50ZWwuY29tDQpBVFRF
TkRFRTtST0xFPU9QVC1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJQYWxhbGF1LCBBDQogbGV4YW5kcnVYIjpNQUlMVE86YWxleGFuZHJ1eC5wYWxhbGF1QGlu
dGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNU
SU9OO1JTVlA9VFJVRTtDTj0iJ0J1dGxlciwgUA0KIGF1bCciOk1BSUxUTzpQYXVsLkJ1dGxlckB3
aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSJNaXJlYSwgVmlvDQogcmVsIjpNQUlMVE86dmlvcmVsLm1p
cmVhQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVF
RFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iS2FtYmxlLCBOaQ0KIHRpbiBBIjpNQUlMVE86bml0aW4u
YS5rYW1ibGVAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJUSUNJUEFOVDtQQVJUU1RB
VD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJTemFua2luLCBNDQogYWNpZWoiOk1BSUxUTzpt
YWNpZWouc3phbmtpbkBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BB
UlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik1vaXNhbiwgUmENCiBkdSI6TUFJTFRP
OnJhZHUubW9pc2FuQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFS
VFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iR3JpZ29yb3BvbA0KICwgSW9hbmFYIjpN
QUlMVE86aW9hbmF4LmdyaWdvcm9wb2xAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJU
SUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJCdXJ0b24sIFJvDQog
c3MiOk1BSUxUTzpyb3NzLmJ1cnRvbkBpbnRlbC5jb20NCkRFU0NSSVBUSU9OO0xBTkdVQUdFPWVu
LVVTOldoZW46IE9jY3VycyBldmVyeSBUdWVzZGF5IGVmZmVjdGl2ZSA2LzI2LzIwMTIgdQ0KIG50
aWwgNi8xOC8yMDEzIGZyb20gODowMCBBTSB0byA5OjAwIEFNIChVVEMtMDg6MDApIFBhY2lmaWMg
VGltZSAoVVMgJiBDYW5hDQogZGEpLlxuV2hlcmU6IEJyaWRnZSBJbmZvIEVuY2xvc2VkXG5cbk5v
dGU6IFRoZSBHTVQgb2Zmc2V0IGFib3ZlIGRvZXMgbm90IHINCiBlZmxlY3QgZGF5bGlnaHQgc2F2
aW5nIHRpbWUgYWRqdXN0bWVudHMuXG5cbip+Kn4qfip+Kn4qfip+Kn4qfipcblxuV2UgZW5jbw0K
IHVyYWdlIHBlb3BsZSBhdHRlbmRpbmcgdGhlIG1lZXRpbmcgdG8gbG9nb24gdGhlIFlvY3RvIElS
QyBjaGFuY2VsIGR1cmluZyB0DQogaGUgbWVldGluZyAob3B0aW9uYWwpOlxuXG5Zb2N0byBJUkM6
IGh0dHA6Ly93ZWJjaGF0LmZyZWVub2RlLm5ldC8/Y2hhbm5lbHMNCiA9I3lvY3RvXG5JUkMgVHV0
b3JpYWw6IGh0dHA6Ly93d3cuaXJjaGVscC5vcmcvaXJjaGVscC9pcmN0dXRvcmlhbC5odG1sXG5c
bg0KIENvbmZlcmVuY2UgZGV0YWlsc1xuQ29uZmVyZW5jZSBuYW1lOiAgICAgICAgWW9jdG8gVGVj
aG5pY2FsIFRlYW1cbkNvbmZlcmVuDQogY2UgZGF0ZS9zdGFydCB0aW1lOiAgICAgVHVlIEp1biAy
NlwsIDIwMTIgYXQgMTA6MDAgQU0gQ2VudHJhbCBEYXlsaWdodCBUaW0NCiBlXG5QYXJ0aWNpcGFu
dHM6ICAgMzBcbkR1cmF0aW9uOiAgICAgICA2MCBtaW51dGVzXG5QYXJ0aWNpcGFudCBwYXNzY29k
ZTogIA0KICA3Njk5NDI5OFxuRGlhbC1pbiBudW1iZXI6ICAgICAgICAgMS45NzIuOTk1Ljc3Nzdc
blVTIFRvbGwgRnJlZSBudW1iZXI6ICAgDQogIDEuODc3LjU2MS42ODI4XG5CbGFja0JlcnJ5IHVz
ZXJzXCwgY2xpY2sgdGhpcyBsaW5rIHRvIGpvaW4geW91ciBjb25mZXJlbmMNCiBlIGFzIGEgcGFy
dGljaXBhbnQ6ICAgICAxLjk3Mi45OTUuNzc3N3g3Njk5NDI5OCNcbiAgICAgICAgRGVwZW5kaW5n
IG9uIHdoZQ0KIHJlIHlvdSBhcmUgZGlhbGluZyBmcm9tXCwgZWl0aGVyIHlvdXIgQmxhY2tCZXJy
eSB3aWxsIHBhdXNlIGFuZCBlbnRlciB0aGUgDQogcGFzc2NvZGUgYXV0b21hdGljYWxseSBvciB5
b3Ugd2lsbCBiZSBwcm9tcHRlZCB0byBjbGljayBhZ2FpbiB0byBkaWFsIHRoZSANCiBwYXNzY29k
ZS5cblxuXG5Mb2NhbCBhbmQgR2xvYmFsIEFjY2VzcyBOdW1iZXJzXG5cblxuXG5cbkNvdW50cnlc
bkRpYWwtaW4gbg0KIHVtYmVyXG5cbkF1c3RyYWxpYTpcbjE4MDAgNjM2IDg0M1xuXG5DemVjaCBS
ZXB1YmxpYzpcbjI0MiA0MzAgMzUwXG5cbkNoaW5hDQogIChCZWlqaW5nKTpcbkZyb20gb2ZmaWNl
IGRpYWwgOC05OTU3Nzc3IG9yIDg3ODQyNzdcbkJlaWppbmcgT3V0IG9mIE9mZmljZSANCiBkaWFs
IDU4NzggNDI3N1xuXG5DaGluYSAoU2hhbmdoYWkpOlxuRnJvbSBvZmZpY2UgZGlhbCA4LTk5NTc3
Nzcgb3IgMzA3MzMyMg0KIFxuU2hhbmdoYWkgT3V0IG9mIE9mZmljZSBkaWFsIDIzMDcgMzMyMlxu
XG5DaGluYSAoU2hlbnplbik6XG5Gcm9tIG9mZmljZSBkDQogaWFsIDgtOTk1Nzc3NyBvciA2MDA3
ODc3XG5TaGVuemVuIE91dCBvZiBPZmZpY2UgZGlhbCAyNjAwIDc4NzdcblxuQ2hpbmEgKE8NCiB0
aGVyIENpdGllcyk6XG5Gcm9tIElQIHBob25lIGRpYWwgOC05OTU3Nzc3XG5PdGhlciBjaXRpZXMg
LSBOb24gSVAgcGhvbmUgZA0KIGlhbCAwMjEtMjMwNzMzMjJcblxuRGVubWFyazpcbjgwNjAgMTQw
MFxuXG5GaW5sYW5kOlxuMDkgNDEzMzM0NzdcblxuRnJhbmNlDQogOlxuMDQ5NyAyNzU4ODhcblxu
R2VybWFueTpcbjA4MTYxIDgwMzIzMlxuXG5Ib2xsYW5kOlxuMDMwIDI0MTc0OTBcblxuSW5kaWEN
CiA6XG5CU05MIHN1YnNjcmliZXJzIHVzZSAxODAwIDQyNSA5OTk2IChUb2xsIEZyZWUpXG5BaXJ0
ZWwgc3Vic2NyaWJlcnMgdXNlIA0KIDAwMDggMDA5IDg2MSAyMTIgKFRvbGwgRnJlZSlcbkZyb20g
VEkgQ2FtcHVzIHVzZSA4OTk1Nzc3N1xuT3RoZXJzIHVzZSAyNTA5DQogIDk1NTUgKExhbmRsaW5l
IHdpdGhpbiBCYW5nYWxvcmUpIG9yXG44MCAyNTA5IDk1NTUgKE91dHNpZGUgQmFuZ2Fsb3JlKVxu
XG4NCiBJc3JhZWw6XG4wOSA3OTAgNjcxNVxuXG5JdGFseTpcbjAzOSA2OTA2MTIzNCAoMDM5IGlz
IGxvY2FsIGNpdHkgY29kZSBub3QgYw0KIG91bnRyeSBjb2RlKVxuXG5KYXBhbjpcbkZyb20gVEkg
Q2FtcHVzIHVzZSA4IDk5NSA3Nzc3XG5PdXRzaWRlIFRJIHVzZSAwMyA0DQogMzMxIDM3Nzdcblxu
TWFsYXlzaWE6XG5Gcm9tIElQIHBob25lIGRpYWwgMjY0Mzc5OVxuRnJvbSBLdWFsYSBMdW1wdXIg
ZGlhbCANCiA0MjY0IDM3OTlcbk91dHNpZGUgS3VhbGEgTHVtcHVyIGRpYWwgKDAzKTQyNjQgMzc5
OVxuXG5Ob3J3YXk6XG4yIDI5NSA4NzQ0XA0KIG5cblBoaWxpcHBpbmVzOlxuRnJvbSBCYWd1aW8g
Q2l0eSB1c2UgNDQ3MTE3N1xuRnJvbSBNZXRybyBNYW5pbGEgYXJlYSB1c2UgDQogODcwMjQ3N1xu
XG5TaW5nYXBvcmU6XG5Gcm9tIElQIHBob25lIGRpYWwgMzg5NDc3N1xuT3V0c2lkZSBUSSB1c2Ug
NjM4OSA0NzcNCiA3XG5cblNvdXRoIEtvcmVhOlxuRnJvbSBJUCBwaG9uZSBkaWFsIDU2MDY5OThc
bkZyb20gU2VvdWwgZGlhbCA1NjA2OTk4XG5PdQ0KIHRzaWRlIFNlb3VsIGRpYWwgKDAyKTU2MDY5
OThcblxuU3dlZGVuOlxuMDggNTg3NTU1NzdcblxuVGFpd2FuOlxuRnJvbSBJUCBwDQogaG9uZSBk
aWFsIDEzNjNcbkZyb20gVGFpcGVpIGRpYWwgMjI0MSAxMzYzXG5PdXRzaWRlIFRhaXBlaSBkaWFs
ICgwMikyMjQxIDENCiAzNjNcblxuVHVya2V5OlxuTGFuZGxpbmUgT25seSBkaWFsIDA4MTEgMjg4
IDAwMDFcbnRoZW4gZW50ZXIgODc3IDYzMyAxMTIzXA0KIG5cblVLOlxuMDE2MDQgNjYzMDAzXG5c
blVTOlxuOTcyIDk5NSA3Nzc3IG9yIDE4NzcgNTYxIDY4MjhcblxuXG5SZWN1cnJpbmcgDQogY29u
ZmVyZW5jZXNcbkZpcnN0IHNjaGVkdWxlZCBjb25mZXJlbmNlOiAgICAgVHVlIEp1biAyNlwsIDIw
MTJcblJlY3VycmVuY2UNCiAgZnJlcXVlbmN5OiAgIFdlZWtseSAtIEV2ZXJ5IDEgd2VlayhzKSBv
biBUdWVzZGF5XG5SZWN1cnJlbmNlIGVuZHM6ICAgICAgIA0KICBFbmQgb24gRnJpIEp1biAyMVws
IDIwMTNcLCAxMDo0MCBBTSBDRFRcblxuXG5cblxuDQpSUlVMRTpGUkVRPVdFRUtMWTtVTlRJTD0y
MDEzMDYxOFQxNTAwMDBaO0lOVEVSVkFMPTE7QllEQVk9VFU7V0tTVD1TVQ0KRVhEQVRFO1RaSUQ9
UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIxMTA2VDA4MDAwMA0KU1VNTUFSWTtMQU5HVUFHRT1l
bi1VUzpZb2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1Q
YWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjA2MjZUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMg
U3RhbmRhcmQgVGltZToyMDEyMDYyNlQwOTAwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3
MTAxQTgyRTAwODAwMDAwMDAwNzA2NjFEMzUyODRFQ0QwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAw
MDAwMEUxRjQxQTcxRjk5NzNENDFBRTA5RTYzNjYzMUVDOUVCDQpDTEFTUzpQVUJMSUMNClBSSU9S
SVRZOjUNCkRUU1RBTVA6MjAxMjEyMDRUMTkzOTE2Wg0KVFJBTlNQOk9QQVFVRQ0KU1RBVFVTOkNP
TkZJUk1FRA0KU0VRVUVOQ0U6MTkNCkxPQ0FUSU9OO0xBTkdVQUdFPWVuLVVTOkJyaWRnZSBJbmZv
IEVuY2xvc2VkDQpYLU1JQ1JPU09GVC1DRE8tQVBQVC1TRVFVRU5DRToxOQ0KWC1NSUNST1NPRlQt
Q0RPLU9XTkVSQVBQVElEOjIwMDgzMTE3NzINClgtTUlDUk9TT0ZULUNETy1CVVNZU1RBVFVTOlRF
TlRBVElWRQ0KWC1NSUNST1NPRlQtQ0RPLUlOVEVOREVEU1RBVFVTOkJVU1kNClgtTUlDUk9TT0ZU
LUNETy1BTExEQVlFVkVOVDpGQUxTRQ0KWC1NSUNST1NPRlQtQ0RPLUlNUE9SVEFOQ0U6MQ0KWC1N
SUNST1NPRlQtQ0RPLUlOU1RUWVBFOjENClgtTUlDUk9TT0ZULURJU0FMTE9XLUNPVU5URVI6RkFM
U0UNCkJFR0lOOlZBTEFSTQ0KQUNUSU9OOkRJU1BMQVkNCkRFU0NSSVBUSU9OOlJFTUlOREVSDQpU
UklHR0VSO1JFTEFURUQ9U1RBUlQ6LVBUMTVNDQpFTkQ6VkFMQVJNDQpFTkQ6VkVWRU5UDQpCRUdJ
TjpWRVZFTlQNClNVTU1BUlk6WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0aW5nDQpE
VFNUQVJUO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIwNzAzVDA4MDAwMA0KRFRFTkQ7
VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjA3MDNUMDkwMDAwDQpVSUQ6MDQwMDAwMDA4
MjAwRTAwMDc0QzVCNzEwMUE4MkUwMDgwMDAwMDAwMDcwNjYxRDM1Mjg0RUNEMDEwMDAwMDAwMDAw
MDAwMDANCiAwMTAwMDAwMDBFMUY0MUE3MUY5OTczRDQxQUUwOUU2MzY2MzFFQzlFQg0KUkVDVVJS
RU5DRS1JRDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMDcwM1QwMDAwMDANCkNMQVNT
OlBVQkxJQw0KUFJJT1JJVFk6NQ0KRFRTVEFNUDoyMDEyMTIwNFQxOTM5MTZaDQpUUkFOU1A6T1BB
UVVFDQpTVEFUVVM6Q09ORklSTUVEDQpTRVFVRU5DRToxOQ0KTE9DQVRJT046QnJpZGdlIEluZm8g
RW5jbG9zZWQNClgtTUlDUk9TT0ZULUNETy1BUFBULVNFUVVFTkNFOjE5DQpYLU1JQ1JPU09GVC1D
RE8tT1dORVJBUFBUSUQ6MjAwODMxMTc3Mg0KWC1NSUNST1NPRlQtQ0RPLUJVU1lTVEFUVVM6VEVO
VEFUSVZFDQpYLU1JQ1JPU09GVC1DRE8tSU5URU5ERURTVEFUVVM6QlVTWQ0KWC1NSUNST1NPRlQt
Q0RPLUFMTERBWUVWRU5UOkZBTFNFDQpYLU1JQ1JPU09GVC1DRE8tSU1QT1JUQU5DRToxDQpYLU1J
Q1JPU09GVC1DRE8tSU5TVFRZUEU6MQ0KWC1NSUNST1NPRlQtRElTQUxMT1ctQ09VTlRFUjpGQUxT
RQ0KRU5EOlZFVkVOVA0KQkVHSU46VkVWRU5UDQpTVU1NQVJZOllvY3RvIFByb2plY3QgVGVjaG5p
Y2FsIFRlYW0gTWVldGluZw0KRFRTVEFSVDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEy
MDcxMFQwODAwMDANCkRURU5EO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIwNzEwVDA5
MDAwMA0KVUlEOjA0MDAwMDAwODIwMEUwMDA3NEM1QjcxMDFBODJFMDA4MDAwMDAwMDA3MDY2MUQz
NTI4NEVDRDAxMDAwMDAwMDAwMDAwMDAwDQogMDEwMDAwMDAwRTFGNDFBNzFGOTk3M0Q0MUFFMDlF
NjM2NjMxRUM5RUINClJFQ1VSUkVOQ0UtSUQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAx
MjA3MTBUMDAwMDAwDQpDTEFTUzpQVUJMSUMNClBSSU9SSVRZOjUNCkRUU1RBTVA6MjAxMjEyMDRU
MTkzOTE2Wg0KVFJBTlNQOk9QQVFVRQ0KU1RBVFVTOkNPTkZJUk1FRA0KU0VRVUVOQ0U6MTkNCkxP
Q0FUSU9OOkJyaWRnZSBJbmZvIEVuY2xvc2VkDQpYLU1JQ1JPU09GVC1DRE8tQVBQVC1TRVFVRU5D
RToxOQ0KWC1NSUNST1NPRlQtQ0RPLU9XTkVSQVBQVElEOjIwMDgzMTE3NzINClgtTUlDUk9TT0ZU
LUNETy1CVVNZU1RBVFVTOlRFTlRBVElWRQ0KWC1NSUNST1NPRlQtQ0RPLUlOVEVOREVEU1RBVFVT
OkJVU1kNClgtTUlDUk9TT0ZULUNETy1BTExEQVlFVkVOVDpGQUxTRQ0KWC1NSUNST1NPRlQtQ0RP
LUlNUE9SVEFOQ0U6MQ0KWC1NSUNST1NPRlQtQ0RPLUlOU1RUWVBFOjENClgtTUlDUk9TT0ZULURJ
U0FMTE9XLUNPVU5URVI6RkFMU0UNCkVORDpWRVZFTlQNCkJFR0lOOlZFVkVOVA0KU1VNTUFSWTpZ
b2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1QYWNpZmlj
IFN0YW5kYXJkIFRpbWU6MjAxMjA3MjRUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMgU3RhbmRh
cmQgVGltZToyMDEyMDcyNFQwOTAwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgy
RTAwODAwMDAwMDAwNzA2NjFEMzUyODRFQ0QwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAwMDAwMEUx
RjQxQTcxRjk5NzNENDFBRTA5RTYzNjYzMUVDOUVCDQpSRUNVUlJFTkNFLUlEO1RaSUQ9UGFjaWZp
YyBTdGFuZGFyZCBUaW1lOjIwMTIwNzI0VDAwMDAwMA0KQ0xBU1M6UFVCTElDDQpQUklPUklUWTo1
DQpEVFNUQU1QOjIwMTIxMjA0VDE5MzkxNloNClRSQU5TUDpPUEFRVUUNClNUQVRVUzpDT05GSVJN
RUQNClNFUVVFTkNFOjE5DQpMT0NBVElPTjpCcmlkZ2UgSW5mbyBFbmNsb3NlZA0KWC1NSUNST1NP
RlQtQ0RPLUFQUFQtU0VRVUVOQ0U6MTkNClgtTUlDUk9TT0ZULUNETy1PV05FUkFQUFRJRDoyMDA4
MzExNzcyDQpYLU1JQ1JPU09GVC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgtTUlDUk9TT0ZU
LUNETy1JTlRFTkRFRFNUQVRVUzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZRVZFTlQ6RkFM
U0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNETy1JTlNUVFlQ
RToxDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZBTFNFDQpFTkQ6VkVWRU5UDQpCRUdJ
TjpWRVZFTlQNClNVTU1BUlk6WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0aW5nDQpE
VFNUQVJUO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIwODI4VDA4MDAwMA0KRFRFTkQ7
VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjA4MjhUMDkwMDAwDQpVSUQ6MDQwMDAwMDA4
MjAwRTAwMDc0QzVCNzEwMUE4MkUwMDgwMDAwMDAwMDcwNjYxRDM1Mjg0RUNEMDEwMDAwMDAwMDAw
MDAwMDANCiAwMTAwMDAwMDBFMUY0MUE3MUY5OTczRDQxQUUwOUU2MzY2MzFFQzlFQg0KUkVDVVJS
RU5DRS1JRDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMDgyOFQwMDAwMDANCkNMQVNT
OlBVQkxJQw0KUFJJT1JJVFk6NQ0KRFRTVEFNUDoyMDEyMTIwNFQxOTM5MTZaDQpUUkFOU1A6T1BB
UVVFDQpTVEFUVVM6Q09ORklSTUVEDQpTRVFVRU5DRToxOQ0KTE9DQVRJT046QnJpZGdlIEluZm8g
RW5jbG9zZWQNClgtTUlDUk9TT0ZULUNETy1BUFBULVNFUVVFTkNFOjE5DQpYLU1JQ1JPU09GVC1D
RE8tT1dORVJBUFBUSUQ6MjAwODMxMTc3Mg0KWC1NSUNST1NPRlQtQ0RPLUJVU1lTVEFUVVM6VEVO
VEFUSVZFDQpYLU1JQ1JPU09GVC1DRE8tSU5URU5ERURTVEFUVVM6QlVTWQ0KWC1NSUNST1NPRlQt
Q0RPLUFMTERBWUVWRU5UOkZBTFNFDQpYLU1JQ1JPU09GVC1DRE8tSU1QT1JUQU5DRToxDQpYLU1J
Q1JPU09GVC1DRE8tSU5TVFRZUEU6MQ0KWC1NSUNST1NPRlQtRElTQUxMT1ctQ09VTlRFUjpGQUxT
RQ0KRU5EOlZFVkVOVA0KQkVHSU46VkVWRU5UDQpTVU1NQVJZOllvY3RvIFByb2plY3QgVGVjaG5p
Y2FsIFRlYW0gTWVldGluZw0KRFRTVEFSVDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEy
MDkyNVQwODAwMDANCkRURU5EO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIwOTI1VDA5
MDAwMA0KVUlEOjA0MDAwMDAwODIwMEUwMDA3NEM1QjcxMDFBODJFMDA4MDAwMDAwMDA3MDY2MUQz
NTI4NEVDRDAxMDAwMDAwMDAwMDAwMDAwDQogMDEwMDAwMDAwRTFGNDFBNzFGOTk3M0Q0MUFFMDlF
NjM2NjMxRUM5RUINClJFQ1VSUkVOQ0UtSUQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAx
MjA5MjVUMDAwMDAwDQpDTEFTUzpQVUJMSUMNClBSSU9SSVRZOjUNCkRUU1RBTVA6MjAxMjEyMDRU
MTkzOTE2Wg0KVFJBTlNQOk9QQVFVRQ0KU1RBVFVTOkNPTkZJUk1FRA0KU0VRVUVOQ0U6MTkNCkxP
Q0FUSU9OOkJyaWRnZSBJbmZvIEVuY2xvc2VkDQpYLU1JQ1JPU09GVC1DRE8tQVBQVC1TRVFVRU5D
RToxOQ0KWC1NSUNST1NPRlQtQ0RPLU9XTkVSQVBQVElEOjIwMDgzMTE3NzINClgtTUlDUk9TT0ZU
LUNETy1CVVNZU1RBVFVTOlRFTlRBVElWRQ0KWC1NSUNST1NPRlQtQ0RPLUlOVEVOREVEU1RBVFVT
OkJVU1kNClgtTUlDUk9TT0ZULUNETy1BTExEQVlFVkVOVDpGQUxTRQ0KWC1NSUNST1NPRlQtQ0RP
LUlNUE9SVEFOQ0U6MQ0KWC1NSUNST1NPRlQtQ0RPLUlOU1RUWVBFOjENClgtTUlDUk9TT0ZULURJ
U0FMTE9XLUNPVU5URVI6RkFMU0UNCkVORDpWRVZFTlQNCkJFR0lOOlZFVkVOVA0KU1VNTUFSWTpZ
b2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1QYWNpZmlj
IFN0YW5kYXJkIFRpbWU6MjAxMjEwMDlUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMgU3RhbmRh
cmQgVGltZToyMDEyMTAwOVQwOTAwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgy
RTAwODAwMDAwMDAwNzA2NjFEMzUyODRFQ0QwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAwMDAwMEUx
RjQxQTcxRjk5NzNENDFBRTA5RTYzNjYzMUVDOUVCDQpSRUNVUlJFTkNFLUlEO1RaSUQ9UGFjaWZp
YyBTdGFuZGFyZCBUaW1lOjIwMTIxMDA5VDAwMDAwMA0KQ0xBU1M6UFVCTElDDQpQUklPUklUWTo1
DQpEVFNUQU1QOjIwMTIxMjA0VDE5MzkxNloNClRSQU5TUDpPUEFRVUUNClNUQVRVUzpDT05GSVJN
RUQNClNFUVVFTkNFOjE5DQpMT0NBVElPTjpCcmlkZ2UgSW5mbyBFbmNsb3NlZA0KWC1NSUNST1NP
RlQtQ0RPLUFQUFQtU0VRVUVOQ0U6MTkNClgtTUlDUk9TT0ZULUNETy1PV05FUkFQUFRJRDoyMDA4
MzExNzcyDQpYLU1JQ1JPU09GVC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgtTUlDUk9TT0ZU
LUNETy1JTlRFTkRFRFNUQVRVUzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZRVZFTlQ6RkFM
U0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNETy1JTlNUVFlQ
RToxDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZBTFNFDQpFTkQ6VkVWRU5UDQpCRUdJ
TjpWRVZFTlQNClNVTU1BUlk6WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0aW5nDQpE
VFNUQVJUO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIxMDE2VDA4MDAwMA0KRFRFTkQ7
VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjEwMTZUMDkwMDAwDQpVSUQ6MDQwMDAwMDA4
MjAwRTAwMDc0QzVCNzEwMUE4MkUwMDgwMDAwMDAwMDcwNjYxRDM1Mjg0RUNEMDEwMDAwMDAwMDAw
MDAwMDANCiAwMTAwMDAwMDBFMUY0MUE3MUY5OTczRDQxQUUwOUU2MzY2MzFFQzlFQg0KUkVDVVJS
RU5DRS1JRDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMTAxNlQwMDAwMDANCkNMQVNT
OlBVQkxJQw0KUFJJT1JJVFk6NQ0KRFRTVEFNUDoyMDEyMTIwNFQxOTM5MTZaDQpUUkFOU1A6T1BB
UVVFDQpTVEFUVVM6Q09ORklSTUVEDQpTRVFVRU5DRToxOQ0KTE9DQVRJT046QnJpZGdlIEluZm8g
RW5jbG9zZWQNClgtTUlDUk9TT0ZULUNETy1BUFBULVNFUVVFTkNFOjE5DQpYLU1JQ1JPU09GVC1D
RE8tT1dORVJBUFBUSUQ6MjAwODMxMTc3Mg0KWC1NSUNST1NPRlQtQ0RPLUJVU1lTVEFUVVM6VEVO
VEFUSVZFDQpYLU1JQ1JPU09GVC1DRE8tSU5URU5ERURTVEFUVVM6QlVTWQ0KWC1NSUNST1NPRlQt
Q0RPLUFMTERBWUVWRU5UOkZBTFNFDQpYLU1JQ1JPU09GVC1DRE8tSU1QT1JUQU5DRToxDQpYLU1J
Q1JPU09GVC1DRE8tSU5TVFRZUEU6MQ0KWC1NSUNST1NPRlQtRElTQUxMT1ctQ09VTlRFUjpGQUxT
RQ0KRU5EOlZFVkVOVA0KQkVHSU46VkVWRU5UDQpTVU1NQVJZOllvY3RvIFByb2plY3QgVGVjaG5p
Y2FsIFRlYW0gTWVldGluZw0KRFRTVEFSVDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEy
MTAyM1QwODAwMDANCkRURU5EO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIxMDIzVDA5
MDAwMA0KVUlEOjA0MDAwMDAwODIwMEUwMDA3NEM1QjcxMDFBODJFMDA4MDAwMDAwMDA3MDY2MUQz
NTI4NEVDRDAxMDAwMDAwMDAwMDAwMDAwDQogMDEwMDAwMDAwRTFGNDFBNzFGOTk3M0Q0MUFFMDlF
NjM2NjMxRUM5RUINClJFQ1VSUkVOQ0UtSUQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAx
MjEwMjNUMDAwMDAwDQpDTEFTUzpQVUJMSUMNClBSSU9SSVRZOjUNCkRUU1RBTVA6MjAxMjEyMDRU
MTkzOTE2Wg0KVFJBTlNQOk9QQVFVRQ0KU1RBVFVTOkNPTkZJUk1FRA0KU0VRVUVOQ0U6MTkNCkxP
Q0FUSU9OOkJyaWRnZSBJbmZvIEVuY2xvc2VkDQpYLU1JQ1JPU09GVC1DRE8tQVBQVC1TRVFVRU5D
RToxOQ0KWC1NSUNST1NPRlQtQ0RPLU9XTkVSQVBQVElEOjIwMDgzMTE3NzINClgtTUlDUk9TT0ZU
LUNETy1CVVNZU1RBVFVTOlRFTlRBVElWRQ0KWC1NSUNST1NPRlQtQ0RPLUlOVEVOREVEU1RBVFVT
OkJVU1kNClgtTUlDUk9TT0ZULUNETy1BTExEQVlFVkVOVDpGQUxTRQ0KWC1NSUNST1NPRlQtQ0RP
LUlNUE9SVEFOQ0U6MQ0KWC1NSUNST1NPRlQtQ0RPLUlOU1RUWVBFOjENClgtTUlDUk9TT0ZULURJ
U0FMTE9XLUNPVU5URVI6RkFMU0UNCkVORDpWRVZFTlQNCkJFR0lOOlZFVkVOVA0KU1VNTUFSWTpZ
b2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1QYWNpZmlj
IFN0YW5kYXJkIFRpbWU6MjAxMjEwMzBUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMgU3RhbmRh
cmQgVGltZToyMDEyMTAzMFQwOTAwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgy
RTAwODAwMDAwMDAwNzA2NjFEMzUyODRFQ0QwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAwMDAwMEUx
RjQxQTcxRjk5NzNENDFBRTA5RTYzNjYzMUVDOUVCDQpSRUNVUlJFTkNFLUlEO1RaSUQ9UGFjaWZp
YyBTdGFuZGFyZCBUaW1lOjIwMTIxMDMwVDAwMDAwMA0KQ0xBU1M6UFVCTElDDQpQUklPUklUWTo1
DQpEVFNUQU1QOjIwMTIxMjA0VDE5MzkxNloNClRSQU5TUDpPUEFRVUUNClNUQVRVUzpDT05GSVJN
RUQNClNFUVVFTkNFOjE5DQpMT0NBVElPTjpCcmlkZ2UgSW5mbyBFbmNsb3NlZA0KWC1NSUNST1NP
RlQtQ0RPLUFQUFQtU0VRVUVOQ0U6MTkNClgtTUlDUk9TT0ZULUNETy1PV05FUkFQUFRJRDoyMDA4
MzExNzcyDQpYLU1JQ1JPU09GVC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgtTUlDUk9TT0ZU
LUNETy1JTlRFTkRFRFNUQVRVUzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZRVZFTlQ6RkFM
U0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNETy1JTlNUVFlQ
RToxDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZBTFNFDQpFTkQ6VkVWRU5UDQpCRUdJ
TjpWRVZFTlQNClNVTU1BUlk6WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0aW5nDQpE
VFNUQVJUO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIxMTEzVDA4MDAwMA0KRFRFTkQ7
VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjExMTNUMDkwMDAwDQpVSUQ6MDQwMDAwMDA4
MjAwRTAwMDc0QzVCNzEwMUE4MkUwMDgwMDAwMDAwMDcwNjYxRDM1Mjg0RUNEMDEwMDAwMDAwMDAw
MDAwMDANCiAwMTAwMDAwMDBFMUY0MUE3MUY5OTczRDQxQUUwOUU2MzY2MzFFQzlFQg0KUkVDVVJS
RU5DRS1JRDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMTExM1QwMDAwMDANCkNMQVNT
OlBVQkxJQw0KUFJJT1JJVFk6NQ0KRFRTVEFNUDoyMDEyMTIwNFQxOTM5MTZaDQpUUkFOU1A6T1BB
UVVFDQpTVEFUVVM6Q09ORklSTUVEDQpTRVFVRU5DRToxOQ0KTE9DQVRJT046QnJpZGdlIEluZm8g
RW5jbG9zZWQNClgtTUlDUk9TT0ZULUNETy1BUFBULVNFUVVFTkNFOjE5DQpYLU1JQ1JPU09GVC1D
RE8tT1dORVJBUFBUSUQ6MjAwODMxMTc3Mg0KWC1NSUNST1NPRlQtQ0RPLUJVU1lTVEFUVVM6VEVO
VEFUSVZFDQpYLU1JQ1JPU09GVC1DRE8tSU5URU5ERURTVEFUVVM6QlVTWQ0KWC1NSUNST1NPRlQt
Q0RPLUFMTERBWUVWRU5UOkZBTFNFDQpYLU1JQ1JPU09GVC1DRE8tSU1QT1JUQU5DRToxDQpYLU1J
Q1JPU09GVC1DRE8tSU5TVFRZUEU6MQ0KWC1NSUNST1NPRlQtRElTQUxMT1ctQ09VTlRFUjpGQUxT
RQ0KRU5EOlZFVkVOVA0KQkVHSU46VkVWRU5UDQpTVU1NQVJZOllvY3RvIFByb2plY3QgVGVjaG5p
Y2FsIFRlYW0gTWVldGluZw0KRFRTVEFSVDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEy
MTEyMFQwODAwMDANCkRURU5EO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIxMTIwVDA5
MDAwMA0KVUlEOjA0MDAwMDAwODIwMEUwMDA3NEM1QjcxMDFBODJFMDA4MDAwMDAwMDA3MDY2MUQz
NTI4NEVDRDAxMDAwMDAwMDAwMDAwMDAwDQogMDEwMDAwMDAwRTFGNDFBNzFGOTk3M0Q0MUFFMDlF
NjM2NjMxRUM5RUINClJFQ1VSUkVOQ0UtSUQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAx
MjExMjBUMDAwMDAwDQpDTEFTUzpQVUJMSUMNClBSSU9SSVRZOjUNCkRUU1RBTVA6MjAxMjEyMDRU
MTkzOTE2Wg0KVFJBTlNQOk9QQVFVRQ0KU1RBVFVTOkNPTkZJUk1FRA0KU0VRVUVOQ0U6MTkNCkxP
Q0FUSU9OOkJyaWRnZSBJbmZvIEVuY2xvc2VkDQpYLU1JQ1JPU09GVC1DRE8tQVBQVC1TRVFVRU5D
RToxOQ0KWC1NSUNST1NPRlQtQ0RPLU9XTkVSQVBQVElEOjIwMDgzMTE3NzINClgtTUlDUk9TT0ZU
LUNETy1CVVNZU1RBVFVTOlRFTlRBVElWRQ0KWC1NSUNST1NPRlQtQ0RPLUlOVEVOREVEU1RBVFVT
OkJVU1kNClgtTUlDUk9TT0ZULUNETy1BTExEQVlFVkVOVDpGQUxTRQ0KWC1NSUNST1NPRlQtQ0RP
LUlNUE9SVEFOQ0U6MQ0KWC1NSUNST1NPRlQtQ0RPLUlOU1RUWVBFOjENClgtTUlDUk9TT0ZULURJ
U0FMTE9XLUNPVU5URVI6RkFMU0UNCkVORDpWRVZFTlQNCkJFR0lOOlZFVkVOVA0KU1VNTUFSWTpZ
b2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1QYWNpZmlj
IFN0YW5kYXJkIFRpbWU6MjAxMjExMjdUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMgU3RhbmRh
cmQgVGltZToyMDEyMTEyN1QwOTAwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgy
RTAwODAwMDAwMDAwNzA2NjFEMzUyODRFQ0QwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAwMDAwMEUx
RjQxQTcxRjk5NzNENDFBRTA5RTYzNjYzMUVDOUVCDQpSRUNVUlJFTkNFLUlEO1RaSUQ9UGFjaWZp
YyBTdGFuZGFyZCBUaW1lOjIwMTIxMTI3VDAwMDAwMA0KQ0xBU1M6UFVCTElDDQpQUklPUklUWTo1
DQpEVFNUQU1QOjIwMTIxMjA0VDE5MzkxNloNClRSQU5TUDpPUEFRVUUNClNUQVRVUzpDT05GSVJN
RUQNClNFUVVFTkNFOjE5DQpMT0NBVElPTjpCcmlkZ2UgSW5mbyBFbmNsb3NlZA0KWC1NSUNST1NP
RlQtQ0RPLUFQUFQtU0VRVUVOQ0U6MTkNClgtTUlDUk9TT0ZULUNETy1PV05FUkFQUFRJRDoyMDA4
MzExNzcyDQpYLU1JQ1JPU09GVC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgtTUlDUk9TT0ZU
LUNETy1JTlRFTkRFRFNUQVRVUzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZRVZFTlQ6RkFM
U0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNETy1JTlNUVFlQ
RToxDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZBTFNFDQpFTkQ6VkVWRU5UDQpFTkQ6
VkNBTEVOREFSDQo=

--_000_7E680CB2A76BB8438D08CF13C09FC53A4860D5D0ORSMSX101amrcor_--
