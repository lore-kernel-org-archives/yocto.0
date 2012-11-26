Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13386E00348
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 14:40:58 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2012 14:40:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,323,1352102400"; 
	d="scan'208,217";a="252848523"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 26 Nov 2012 14:40:56 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 26 Nov 2012 14:40:55 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.43]) with mapi id
	14.01.0355.002; Mon, 26 Nov 2012 14:40:54 -0800
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
Date: Mon, 26 Nov 2012 22:40:54 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A48606B71@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 26 Nov 2012 14:54:26 -0800
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
X-List-Received-Date: Mon, 26 Nov 2012 22:40:59 -0000
X-Groupsio-MsgNum: 10661
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A48606B71ORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A48606B71ORSMSX101amrcor_
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





--_000_7E680CB2A76BB8438D08CF13C09FC53A48606B71ORSMSX101amrcor_
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

--_000_7E680CB2A76BB8438D08CF13C09FC53A48606B71ORSMSX101amrcor_
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
QUlMVE86aW9hbmF4LmdyaWdvcm9wb2xAaW50ZWwuY29tDQpERVNDUklQVElPTjtMQU5HVUFHRT1l
bi1VUzpXaGVuOiBPY2N1cnMgZXZlcnkgVHVlc2RheSBlZmZlY3RpdmUgNi8yNi8yMDEyIHUNCiBu
dGlsIDYvMTgvMjAxMyBmcm9tIDg6MDAgQU0gdG8gOTowMCBBTSAoVVRDLTA4OjAwKSBQYWNpZmlj
IFRpbWUgKFVTICYgQ2FuYQ0KIGRhKS5cbldoZXJlOiBCcmlkZ2UgSW5mbyBFbmNsb3NlZFxuXG5O
b3RlOiBUaGUgR01UIG9mZnNldCBhYm92ZSBkb2VzIG5vdCByDQogZWZsZWN0IGRheWxpZ2h0IHNh
dmluZyB0aW1lIGFkanVzdG1lbnRzLlxuXG4qfip+Kn4qfip+Kn4qfip+Kn4qXG5cbldlIGVuY28N
CiB1cmFnZSBwZW9wbGUgYXR0ZW5kaW5nIHRoZSBtZWV0aW5nIHRvIGxvZ29uIHRoZSBZb2N0byBJ
UkMgY2hhbmNlbCBkdXJpbmcgdA0KIGhlIG1lZXRpbmcgKG9wdGlvbmFsKTpcblxuWW9jdG8gSVJD
OiBodHRwOi8vd2ViY2hhdC5mcmVlbm9kZS5uZXQvP2NoYW5uZWxzDQogPSN5b2N0b1xuSVJDIFR1
dG9yaWFsOiBodHRwOi8vd3d3LmlyY2hlbHAub3JnL2lyY2hlbHAvaXJjdHV0b3JpYWwuaHRtbFxu
XG4NCiBDb25mZXJlbmNlIGRldGFpbHNcbkNvbmZlcmVuY2UgbmFtZTogICAgICAgIFlvY3RvIFRl
Y2huaWNhbCBUZWFtXG5Db25mZXJlbg0KIGNlIGRhdGUvc3RhcnQgdGltZTogICAgIFR1ZSBKdW4g
MjZcLCAyMDEyIGF0IDEwOjAwIEFNIENlbnRyYWwgRGF5bGlnaHQgVGltDQogZVxuUGFydGljaXBh
bnRzOiAgIDMwXG5EdXJhdGlvbjogICAgICAgNjAgbWludXRlc1xuUGFydGljaXBhbnQgcGFzc2Nv
ZGU6ICANCiAgNzY5OTQyOThcbkRpYWwtaW4gbnVtYmVyOiAgICAgICAgIDEuOTcyLjk5NS43Nzc3
XG5VUyBUb2xsIEZyZWUgbnVtYmVyOiAgIA0KICAxLjg3Ny41NjEuNjgyOFxuQmxhY2tCZXJyeSB1
c2Vyc1wsIGNsaWNrIHRoaXMgbGluayB0byBqb2luIHlvdXIgY29uZmVyZW5jDQogZSBhcyBhIHBh
cnRpY2lwYW50OiAgICAgMS45NzIuOTk1Ljc3Nzd4NzY5OTQyOTgjXG4gICAgICAgIERlcGVuZGlu
ZyBvbiB3aGUNCiByZSB5b3UgYXJlIGRpYWxpbmcgZnJvbVwsIGVpdGhlciB5b3VyIEJsYWNrQmVy
cnkgd2lsbCBwYXVzZSBhbmQgZW50ZXIgdGhlIA0KIHBhc3Njb2RlIGF1dG9tYXRpY2FsbHkgb3Ig
eW91IHdpbGwgYmUgcHJvbXB0ZWQgdG8gY2xpY2sgYWdhaW4gdG8gZGlhbCB0aGUgDQogcGFzc2Nv
ZGUuXG5cblxuTG9jYWwgYW5kIEdsb2JhbCBBY2Nlc3MgTnVtYmVyc1xuXG5cblxuXG5Db3VudHJ5
XG5EaWFsLWluIG4NCiB1bWJlclxuXG5BdXN0cmFsaWE6XG4xODAwIDYzNiA4NDNcblxuQ3plY2gg
UmVwdWJsaWM6XG4yNDIgNDMwIDM1MFxuXG5DaGluYQ0KICAoQmVpamluZyk6XG5Gcm9tIG9mZmlj
ZSBkaWFsIDgtOTk1Nzc3NyBvciA4Nzg0Mjc3XG5CZWlqaW5nIE91dCBvZiBPZmZpY2UgDQogZGlh
bCA1ODc4IDQyNzdcblxuQ2hpbmEgKFNoYW5naGFpKTpcbkZyb20gb2ZmaWNlIGRpYWwgOC05OTU3
Nzc3IG9yIDMwNzMzMjINCiBcblNoYW5naGFpIE91dCBvZiBPZmZpY2UgZGlhbCAyMzA3IDMzMjJc
blxuQ2hpbmEgKFNoZW56ZW4pOlxuRnJvbSBvZmZpY2UgZA0KIGlhbCA4LTk5NTc3Nzcgb3IgNjAw
Nzg3N1xuU2hlbnplbiBPdXQgb2YgT2ZmaWNlIGRpYWwgMjYwMCA3ODc3XG5cbkNoaW5hIChPDQog
dGhlciBDaXRpZXMpOlxuRnJvbSBJUCBwaG9uZSBkaWFsIDgtOTk1Nzc3N1xuT3RoZXIgY2l0aWVz
IC0gTm9uIElQIHBob25lIGQNCiBpYWwgMDIxLTIzMDczMzIyXG5cbkRlbm1hcms6XG44MDYwIDE0
MDBcblxuRmlubGFuZDpcbjA5IDQxMzMzNDc3XG5cbkZyYW5jZQ0KIDpcbjA0OTcgMjc1ODg4XG5c
bkdlcm1hbnk6XG4wODE2MSA4MDMyMzJcblxuSG9sbGFuZDpcbjAzMCAyNDE3NDkwXG5cbkluZGlh
DQogOlxuQlNOTCBzdWJzY3JpYmVycyB1c2UgMTgwMCA0MjUgOTk5NiAoVG9sbCBGcmVlKVxuQWly
dGVsIHN1YnNjcmliZXJzIHVzZSANCiAwMDA4IDAwOSA4NjEgMjEyIChUb2xsIEZyZWUpXG5Gcm9t
IFRJIENhbXB1cyB1c2UgODk5NTc3Nzdcbk90aGVycyB1c2UgMjUwOQ0KICA5NTU1IChMYW5kbGlu
ZSB3aXRoaW4gQmFuZ2Fsb3JlKSBvclxuODAgMjUwOSA5NTU1IChPdXRzaWRlIEJhbmdhbG9yZSlc
blxuDQogSXNyYWVsOlxuMDkgNzkwIDY3MTVcblxuSXRhbHk6XG4wMzkgNjkwNjEyMzQgKDAzOSBp
cyBsb2NhbCBjaXR5IGNvZGUgbm90IGMNCiBvdW50cnkgY29kZSlcblxuSmFwYW46XG5Gcm9tIFRJ
IENhbXB1cyB1c2UgOCA5OTUgNzc3N1xuT3V0c2lkZSBUSSB1c2UgMDMgNA0KIDMzMSAzNzc3XG5c
bk1hbGF5c2lhOlxuRnJvbSBJUCBwaG9uZSBkaWFsIDI2NDM3OTlcbkZyb20gS3VhbGEgTHVtcHVy
IGRpYWwgDQogNDI2NCAzNzk5XG5PdXRzaWRlIEt1YWxhIEx1bXB1ciBkaWFsICgwMyk0MjY0IDM3
OTlcblxuTm9yd2F5OlxuMiAyOTUgODc0NFwNCiBuXG5QaGlsaXBwaW5lczpcbkZyb20gQmFndWlv
IENpdHkgdXNlIDQ0NzExNzdcbkZyb20gTWV0cm8gTWFuaWxhIGFyZWEgdXNlIA0KIDg3MDI0Nzdc
blxuU2luZ2Fwb3JlOlxuRnJvbSBJUCBwaG9uZSBkaWFsIDM4OTQ3Nzdcbk91dHNpZGUgVEkgdXNl
IDYzODkgNDc3DQogN1xuXG5Tb3V0aCBLb3JlYTpcbkZyb20gSVAgcGhvbmUgZGlhbCA1NjA2OTk4
XG5Gcm9tIFNlb3VsIGRpYWwgNTYwNjk5OFxuT3UNCiB0c2lkZSBTZW91bCBkaWFsICgwMik1NjA2
OTk4XG5cblN3ZWRlbjpcbjA4IDU4NzU1NTc3XG5cblRhaXdhbjpcbkZyb20gSVAgcA0KIGhvbmUg
ZGlhbCAxMzYzXG5Gcm9tIFRhaXBlaSBkaWFsIDIyNDEgMTM2M1xuT3V0c2lkZSBUYWlwZWkgZGlh
bCAoMDIpMjI0MSAxDQogMzYzXG5cblR1cmtleTpcbkxhbmRsaW5lIE9ubHkgZGlhbCAwODExIDI4
OCAwMDAxXG50aGVuIGVudGVyIDg3NyA2MzMgMTEyM1wNCiBuXG5VSzpcbjAxNjA0IDY2MzAwM1xu
XG5VUzpcbjk3MiA5OTUgNzc3NyBvciAxODc3IDU2MSA2ODI4XG5cblxuUmVjdXJyaW5nIA0KIGNv
bmZlcmVuY2VzXG5GaXJzdCBzY2hlZHVsZWQgY29uZmVyZW5jZTogICAgIFR1ZSBKdW4gMjZcLCAy
MDEyXG5SZWN1cnJlbmNlDQogIGZyZXF1ZW5jeTogICBXZWVrbHkgLSBFdmVyeSAxIHdlZWsocykg
b24gVHVlc2RheVxuUmVjdXJyZW5jZSBlbmRzOiAgICAgICANCiAgRW5kIG9uIEZyaSBKdW4gMjFc
LCAyMDEzXCwgMTA6NDAgQU0gQ0RUXG5cblxuXG5cbg0KUlJVTEU6RlJFUT1XRUVLTFk7VU5USUw9
MjAxMzA2MThUMTUwMDAwWjtJTlRFUlZBTD0xO0JZREFZPVRVO1dLU1Q9U1UNCkVYREFURTtUWklE
PVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMTEwNlQwODAwMDANClNVTU1BUlk7TEFOR1VBR0U9
ZW4tVVM6WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0aW5nDQpEVFNUQVJUO1RaSUQ9
UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIwNjI2VDA4MDAwMA0KRFRFTkQ7VFpJRD1QYWNpZmlj
IFN0YW5kYXJkIFRpbWU6MjAxMjA2MjZUMDkwMDAwDQpVSUQ6MDQwMDAwMDA4MjAwRTAwMDc0QzVC
NzEwMUE4MkUwMDgwMDAwMDAwMDcwNjYxRDM1Mjg0RUNEMDEwMDAwMDAwMDAwMDAwMDANCiAwMTAw
MDAwMDBFMUY0MUE3MUY5OTczRDQxQUUwOUU2MzY2MzFFQzlFQg0KQ0xBU1M6UFVCTElDDQpQUklP
UklUWTo1DQpEVFNUQU1QOjIwMTIxMTI2VDIyNDA0OVoNClRSQU5TUDpPUEFRVUUNClNUQVRVUzpD
T05GSVJNRUQNClNFUVVFTkNFOjE3DQpMT0NBVElPTjtMQU5HVUFHRT1lbi1VUzpCcmlkZ2UgSW5m
byBFbmNsb3NlZA0KWC1NSUNST1NPRlQtQ0RPLUFQUFQtU0VRVUVOQ0U6MTcNClgtTUlDUk9TT0ZU
LUNETy1PV05FUkFQUFRJRDoyMDA4MzExNzcyDQpYLU1JQ1JPU09GVC1DRE8tQlVTWVNUQVRVUzpU
RU5UQVRJVkUNClgtTUlDUk9TT0ZULUNETy1JTlRFTkRFRFNUQVRVUzpCVVNZDQpYLU1JQ1JPU09G
VC1DRE8tQUxMREFZRVZFTlQ6RkFMU0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRBTkNFOjENClgt
TUlDUk9TT0ZULUNETy1JTlNUVFlQRToxDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZB
TFNFDQpCRUdJTjpWQUxBUk0NCkFDVElPTjpESVNQTEFZDQpERVNDUklQVElPTjpSRU1JTkRFUg0K
VFJJR0dFUjtSRUxBVEVEPVNUQVJUOi1QVDE1TQ0KRU5EOlZBTEFSTQ0KRU5EOlZFVkVOVA0KQkVH
SU46VkVWRU5UDQpTVU1NQVJZOllvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0K
RFRTVEFSVDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMDcwM1QwODAwMDANCkRURU5E
O1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIwNzAzVDA5MDAwMA0KVUlEOjA0MDAwMDAw
ODIwMEUwMDA3NEM1QjcxMDFBODJFMDA4MDAwMDAwMDA3MDY2MUQzNTI4NEVDRDAxMDAwMDAwMDAw
MDAwMDAwDQogMDEwMDAwMDAwRTFGNDFBNzFGOTk3M0Q0MUFFMDlFNjM2NjMxRUM5RUINClJFQ1VS
UkVOQ0UtSUQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjA3MDNUMDAwMDAwDQpDTEFT
UzpQVUJMSUMNClBSSU9SSVRZOjUNCkRUU1RBTVA6MjAxMjExMjZUMjI0MDQ5Wg0KVFJBTlNQOk9Q
QVFVRQ0KU1RBVFVTOkNPTkZJUk1FRA0KU0VRVUVOQ0U6MTcNCkxPQ0FUSU9OOkJyaWRnZSBJbmZv
IEVuY2xvc2VkDQpYLU1JQ1JPU09GVC1DRE8tQVBQVC1TRVFVRU5DRToxNw0KWC1NSUNST1NPRlQt
Q0RPLU9XTkVSQVBQVElEOjIwMDgzMTE3NzINClgtTUlDUk9TT0ZULUNETy1CVVNZU1RBVFVTOlRF
TlRBVElWRQ0KWC1NSUNST1NPRlQtQ0RPLUlOVEVOREVEU1RBVFVTOkJVU1kNClgtTUlDUk9TT0ZU
LUNETy1BTExEQVlFVkVOVDpGQUxTRQ0KWC1NSUNST1NPRlQtQ0RPLUlNUE9SVEFOQ0U6MQ0KWC1N
SUNST1NPRlQtQ0RPLUlOU1RUWVBFOjENClgtTUlDUk9TT0ZULURJU0FMTE9XLUNPVU5URVI6RkFM
U0UNCkVORDpWRVZFTlQNCkJFR0lOOlZFVkVOVA0KU1VNTUFSWTpZb2N0byBQcm9qZWN0IFRlY2hu
aWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAx
MjA3MTBUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMDcxMFQw
OTAwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwNzA2NjFE
MzUyODRFQ0QwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAwMDAwMEUxRjQxQTcxRjk5NzNENDFBRTA5
RTYzNjYzMUVDOUVCDQpSRUNVUlJFTkNFLUlEO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIw
MTIwNzEwVDAwMDAwMA0KQ0xBU1M6UFVCTElDDQpQUklPUklUWTo1DQpEVFNUQU1QOjIwMTIxMTI2
VDIyNDA0OVoNClRSQU5TUDpPUEFRVUUNClNUQVRVUzpDT05GSVJNRUQNClNFUVVFTkNFOjE3DQpM
T0NBVElPTjpCcmlkZ2UgSW5mbyBFbmNsb3NlZA0KWC1NSUNST1NPRlQtQ0RPLUFQUFQtU0VRVUVO
Q0U6MTcNClgtTUlDUk9TT0ZULUNETy1PV05FUkFQUFRJRDoyMDA4MzExNzcyDQpYLU1JQ1JPU09G
VC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgtTUlDUk9TT0ZULUNETy1JTlRFTkRFRFNUQVRV
UzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZRVZFTlQ6RkFMU0UNClgtTUlDUk9TT0ZULUNE
Ty1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNETy1JTlNUVFlQRToxDQpYLU1JQ1JPU09GVC1E
SVNBTExPVy1DT1VOVEVSOkZBTFNFDQpFTkQ6VkVWRU5UDQpCRUdJTjpWRVZFTlQNClNVTU1BUlk6
WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0aW5nDQpEVFNUQVJUO1RaSUQ9UGFjaWZp
YyBTdGFuZGFyZCBUaW1lOjIwMTIwNzI0VDA4MDAwMA0KRFRFTkQ7VFpJRD1QYWNpZmljIFN0YW5k
YXJkIFRpbWU6MjAxMjA3MjRUMDkwMDAwDQpVSUQ6MDQwMDAwMDA4MjAwRTAwMDc0QzVCNzEwMUE4
MkUwMDgwMDAwMDAwMDcwNjYxRDM1Mjg0RUNEMDEwMDAwMDAwMDAwMDAwMDANCiAwMTAwMDAwMDBF
MUY0MUE3MUY5OTczRDQxQUUwOUU2MzY2MzFFQzlFQg0KUkVDVVJSRU5DRS1JRDtUWklEPVBhY2lm
aWMgU3RhbmRhcmQgVGltZToyMDEyMDcyNFQwMDAwMDANCkNMQVNTOlBVQkxJQw0KUFJJT1JJVFk6
NQ0KRFRTVEFNUDoyMDEyMTEyNlQyMjQwNDlaDQpUUkFOU1A6T1BBUVVFDQpTVEFUVVM6Q09ORklS
TUVEDQpTRVFVRU5DRToxNw0KTE9DQVRJT046QnJpZGdlIEluZm8gRW5jbG9zZWQNClgtTUlDUk9T
T0ZULUNETy1BUFBULVNFUVVFTkNFOjE3DQpYLU1JQ1JPU09GVC1DRE8tT1dORVJBUFBUSUQ6MjAw
ODMxMTc3Mg0KWC1NSUNST1NPRlQtQ0RPLUJVU1lTVEFUVVM6VEVOVEFUSVZFDQpYLU1JQ1JPU09G
VC1DRE8tSU5URU5ERURTVEFUVVM6QlVTWQ0KWC1NSUNST1NPRlQtQ0RPLUFMTERBWUVWRU5UOkZB
TFNFDQpYLU1JQ1JPU09GVC1DRE8tSU1QT1JUQU5DRToxDQpYLU1JQ1JPU09GVC1DRE8tSU5TVFRZ
UEU6MQ0KWC1NSUNST1NPRlQtRElTQUxMT1ctQ09VTlRFUjpGQUxTRQ0KRU5EOlZFVkVOVA0KQkVH
SU46VkVWRU5UDQpTVU1NQVJZOllvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0K
RFRTVEFSVDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMDgyOFQwODAwMDANCkRURU5E
O1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIwODI4VDA5MDAwMA0KVUlEOjA0MDAwMDAw
ODIwMEUwMDA3NEM1QjcxMDFBODJFMDA4MDAwMDAwMDA3MDY2MUQzNTI4NEVDRDAxMDAwMDAwMDAw
MDAwMDAwDQogMDEwMDAwMDAwRTFGNDFBNzFGOTk3M0Q0MUFFMDlFNjM2NjMxRUM5RUINClJFQ1VS
UkVOQ0UtSUQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjA4MjhUMDAwMDAwDQpDTEFT
UzpQVUJMSUMNClBSSU9SSVRZOjUNCkRUU1RBTVA6MjAxMjExMjZUMjI0MDQ5Wg0KVFJBTlNQOk9Q
QVFVRQ0KU1RBVFVTOkNPTkZJUk1FRA0KU0VRVUVOQ0U6MTcNCkxPQ0FUSU9OOkJyaWRnZSBJbmZv
IEVuY2xvc2VkDQpYLU1JQ1JPU09GVC1DRE8tQVBQVC1TRVFVRU5DRToxNw0KWC1NSUNST1NPRlQt
Q0RPLU9XTkVSQVBQVElEOjIwMDgzMTE3NzINClgtTUlDUk9TT0ZULUNETy1CVVNZU1RBVFVTOlRF
TlRBVElWRQ0KWC1NSUNST1NPRlQtQ0RPLUlOVEVOREVEU1RBVFVTOkJVU1kNClgtTUlDUk9TT0ZU
LUNETy1BTExEQVlFVkVOVDpGQUxTRQ0KWC1NSUNST1NPRlQtQ0RPLUlNUE9SVEFOQ0U6MQ0KWC1N
SUNST1NPRlQtQ0RPLUlOU1RUWVBFOjENClgtTUlDUk9TT0ZULURJU0FMTE9XLUNPVU5URVI6RkFM
U0UNCkVORDpWRVZFTlQNCkJFR0lOOlZFVkVOVA0KU1VNTUFSWTpZb2N0byBQcm9qZWN0IFRlY2hu
aWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAx
MjA5MjVUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMDkyNVQw
OTAwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwNzA2NjFE
MzUyODRFQ0QwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAwMDAwMEUxRjQxQTcxRjk5NzNENDFBRTA5
RTYzNjYzMUVDOUVCDQpSRUNVUlJFTkNFLUlEO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIw
MTIwOTI1VDAwMDAwMA0KQ0xBU1M6UFVCTElDDQpQUklPUklUWTo1DQpEVFNUQU1QOjIwMTIxMTI2
VDIyNDA0OVoNClRSQU5TUDpPUEFRVUUNClNUQVRVUzpDT05GSVJNRUQNClNFUVVFTkNFOjE3DQpM
T0NBVElPTjpCcmlkZ2UgSW5mbyBFbmNsb3NlZA0KWC1NSUNST1NPRlQtQ0RPLUFQUFQtU0VRVUVO
Q0U6MTcNClgtTUlDUk9TT0ZULUNETy1PV05FUkFQUFRJRDoyMDA4MzExNzcyDQpYLU1JQ1JPU09G
VC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgtTUlDUk9TT0ZULUNETy1JTlRFTkRFRFNUQVRV
UzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZRVZFTlQ6RkFMU0UNClgtTUlDUk9TT0ZULUNE
Ty1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNETy1JTlNUVFlQRToxDQpYLU1JQ1JPU09GVC1E
SVNBTExPVy1DT1VOVEVSOkZBTFNFDQpFTkQ6VkVWRU5UDQpCRUdJTjpWRVZFTlQNClNVTU1BUlk6
WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0aW5nDQpEVFNUQVJUO1RaSUQ9UGFjaWZp
YyBTdGFuZGFyZCBUaW1lOjIwMTIxMDA5VDA4MDAwMA0KRFRFTkQ7VFpJRD1QYWNpZmljIFN0YW5k
YXJkIFRpbWU6MjAxMjEwMDlUMDkwMDAwDQpVSUQ6MDQwMDAwMDA4MjAwRTAwMDc0QzVCNzEwMUE4
MkUwMDgwMDAwMDAwMDcwNjYxRDM1Mjg0RUNEMDEwMDAwMDAwMDAwMDAwMDANCiAwMTAwMDAwMDBF
MUY0MUE3MUY5OTczRDQxQUUwOUU2MzY2MzFFQzlFQg0KUkVDVVJSRU5DRS1JRDtUWklEPVBhY2lm
aWMgU3RhbmRhcmQgVGltZToyMDEyMTAwOVQwMDAwMDANCkNMQVNTOlBVQkxJQw0KUFJJT1JJVFk6
NQ0KRFRTVEFNUDoyMDEyMTEyNlQyMjQwNDlaDQpUUkFOU1A6T1BBUVVFDQpTVEFUVVM6Q09ORklS
TUVEDQpTRVFVRU5DRToxNw0KTE9DQVRJT046QnJpZGdlIEluZm8gRW5jbG9zZWQNClgtTUlDUk9T
T0ZULUNETy1BUFBULVNFUVVFTkNFOjE3DQpYLU1JQ1JPU09GVC1DRE8tT1dORVJBUFBUSUQ6MjAw
ODMxMTc3Mg0KWC1NSUNST1NPRlQtQ0RPLUJVU1lTVEFUVVM6VEVOVEFUSVZFDQpYLU1JQ1JPU09G
VC1DRE8tSU5URU5ERURTVEFUVVM6QlVTWQ0KWC1NSUNST1NPRlQtQ0RPLUFMTERBWUVWRU5UOkZB
TFNFDQpYLU1JQ1JPU09GVC1DRE8tSU1QT1JUQU5DRToxDQpYLU1JQ1JPU09GVC1DRE8tSU5TVFRZ
UEU6MQ0KWC1NSUNST1NPRlQtRElTQUxMT1ctQ09VTlRFUjpGQUxTRQ0KRU5EOlZFVkVOVA0KQkVH
SU46VkVWRU5UDQpTVU1NQVJZOllvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0K
RFRTVEFSVDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMTAxNlQwODAwMDANCkRURU5E
O1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIxMDE2VDA5MDAwMA0KVUlEOjA0MDAwMDAw
ODIwMEUwMDA3NEM1QjcxMDFBODJFMDA4MDAwMDAwMDA3MDY2MUQzNTI4NEVDRDAxMDAwMDAwMDAw
MDAwMDAwDQogMDEwMDAwMDAwRTFGNDFBNzFGOTk3M0Q0MUFFMDlFNjM2NjMxRUM5RUINClJFQ1VS
UkVOQ0UtSUQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjEwMTZUMDAwMDAwDQpDTEFT
UzpQVUJMSUMNClBSSU9SSVRZOjUNCkRUU1RBTVA6MjAxMjExMjZUMjI0MDQ5Wg0KVFJBTlNQOk9Q
QVFVRQ0KU1RBVFVTOkNPTkZJUk1FRA0KU0VRVUVOQ0U6MTcNCkxPQ0FUSU9OOkJyaWRnZSBJbmZv
IEVuY2xvc2VkDQpYLU1JQ1JPU09GVC1DRE8tQVBQVC1TRVFVRU5DRToxNw0KWC1NSUNST1NPRlQt
Q0RPLU9XTkVSQVBQVElEOjIwMDgzMTE3NzINClgtTUlDUk9TT0ZULUNETy1CVVNZU1RBVFVTOlRF
TlRBVElWRQ0KWC1NSUNST1NPRlQtQ0RPLUlOVEVOREVEU1RBVFVTOkJVU1kNClgtTUlDUk9TT0ZU
LUNETy1BTExEQVlFVkVOVDpGQUxTRQ0KWC1NSUNST1NPRlQtQ0RPLUlNUE9SVEFOQ0U6MQ0KWC1N
SUNST1NPRlQtQ0RPLUlOU1RUWVBFOjENClgtTUlDUk9TT0ZULURJU0FMTE9XLUNPVU5URVI6RkFM
U0UNCkVORDpWRVZFTlQNCkJFR0lOOlZFVkVOVA0KU1VNTUFSWTpZb2N0byBQcm9qZWN0IFRlY2hu
aWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAx
MjEwMjNUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMTAyM1Qw
OTAwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwNzA2NjFE
MzUyODRFQ0QwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAwMDAwMEUxRjQxQTcxRjk5NzNENDFBRTA5
RTYzNjYzMUVDOUVCDQpSRUNVUlJFTkNFLUlEO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIw
MTIxMDIzVDAwMDAwMA0KQ0xBU1M6UFVCTElDDQpQUklPUklUWTo1DQpEVFNUQU1QOjIwMTIxMTI2
VDIyNDA0OVoNClRSQU5TUDpPUEFRVUUNClNUQVRVUzpDT05GSVJNRUQNClNFUVVFTkNFOjE3DQpM
T0NBVElPTjpCcmlkZ2UgSW5mbyBFbmNsb3NlZA0KWC1NSUNST1NPRlQtQ0RPLUFQUFQtU0VRVUVO
Q0U6MTcNClgtTUlDUk9TT0ZULUNETy1PV05FUkFQUFRJRDoyMDA4MzExNzcyDQpYLU1JQ1JPU09G
VC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgtTUlDUk9TT0ZULUNETy1JTlRFTkRFRFNUQVRV
UzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZRVZFTlQ6RkFMU0UNClgtTUlDUk9TT0ZULUNE
Ty1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNETy1JTlNUVFlQRToxDQpYLU1JQ1JPU09GVC1E
SVNBTExPVy1DT1VOVEVSOkZBTFNFDQpFTkQ6VkVWRU5UDQpCRUdJTjpWRVZFTlQNClNVTU1BUlk6
WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0aW5nDQpEVFNUQVJUO1RaSUQ9UGFjaWZp
YyBTdGFuZGFyZCBUaW1lOjIwMTIxMDMwVDA4MDAwMA0KRFRFTkQ7VFpJRD1QYWNpZmljIFN0YW5k
YXJkIFRpbWU6MjAxMjEwMzBUMDkwMDAwDQpVSUQ6MDQwMDAwMDA4MjAwRTAwMDc0QzVCNzEwMUE4
MkUwMDgwMDAwMDAwMDcwNjYxRDM1Mjg0RUNEMDEwMDAwMDAwMDAwMDAwMDANCiAwMTAwMDAwMDBF
MUY0MUE3MUY5OTczRDQxQUUwOUU2MzY2MzFFQzlFQg0KUkVDVVJSRU5DRS1JRDtUWklEPVBhY2lm
aWMgU3RhbmRhcmQgVGltZToyMDEyMTAzMFQwMDAwMDANCkNMQVNTOlBVQkxJQw0KUFJJT1JJVFk6
NQ0KRFRTVEFNUDoyMDEyMTEyNlQyMjQwNDlaDQpUUkFOU1A6T1BBUVVFDQpTVEFUVVM6Q09ORklS
TUVEDQpTRVFVRU5DRToxNw0KTE9DQVRJT046QnJpZGdlIEluZm8gRW5jbG9zZWQNClgtTUlDUk9T
T0ZULUNETy1BUFBULVNFUVVFTkNFOjE3DQpYLU1JQ1JPU09GVC1DRE8tT1dORVJBUFBUSUQ6MjAw
ODMxMTc3Mg0KWC1NSUNST1NPRlQtQ0RPLUJVU1lTVEFUVVM6VEVOVEFUSVZFDQpYLU1JQ1JPU09G
VC1DRE8tSU5URU5ERURTVEFUVVM6QlVTWQ0KWC1NSUNST1NPRlQtQ0RPLUFMTERBWUVWRU5UOkZB
TFNFDQpYLU1JQ1JPU09GVC1DRE8tSU1QT1JUQU5DRToxDQpYLU1JQ1JPU09GVC1DRE8tSU5TVFRZ
UEU6MQ0KWC1NSUNST1NPRlQtRElTQUxMT1ctQ09VTlRFUjpGQUxTRQ0KRU5EOlZFVkVOVA0KQkVH
SU46VkVWRU5UDQpTVU1NQVJZOllvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0K
RFRTVEFSVDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMTExM1QwODAwMDANCkRURU5E
O1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIxMTEzVDA5MDAwMA0KVUlEOjA0MDAwMDAw
ODIwMEUwMDA3NEM1QjcxMDFBODJFMDA4MDAwMDAwMDA3MDY2MUQzNTI4NEVDRDAxMDAwMDAwMDAw
MDAwMDAwDQogMDEwMDAwMDAwRTFGNDFBNzFGOTk3M0Q0MUFFMDlFNjM2NjMxRUM5RUINClJFQ1VS
UkVOQ0UtSUQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjExMTNUMDAwMDAwDQpDTEFT
UzpQVUJMSUMNClBSSU9SSVRZOjUNCkRUU1RBTVA6MjAxMjExMjZUMjI0MDQ5Wg0KVFJBTlNQOk9Q
QVFVRQ0KU1RBVFVTOkNPTkZJUk1FRA0KU0VRVUVOQ0U6MTcNCkxPQ0FUSU9OOkJyaWRnZSBJbmZv
IEVuY2xvc2VkDQpYLU1JQ1JPU09GVC1DRE8tQVBQVC1TRVFVRU5DRToxNw0KWC1NSUNST1NPRlQt
Q0RPLU9XTkVSQVBQVElEOjIwMDgzMTE3NzINClgtTUlDUk9TT0ZULUNETy1CVVNZU1RBVFVTOlRF
TlRBVElWRQ0KWC1NSUNST1NPRlQtQ0RPLUlOVEVOREVEU1RBVFVTOkJVU1kNClgtTUlDUk9TT0ZU
LUNETy1BTExEQVlFVkVOVDpGQUxTRQ0KWC1NSUNST1NPRlQtQ0RPLUlNUE9SVEFOQ0U6MQ0KWC1N
SUNST1NPRlQtQ0RPLUlOU1RUWVBFOjENClgtTUlDUk9TT0ZULURJU0FMTE9XLUNPVU5URVI6RkFM
U0UNCkVORDpWRVZFTlQNCkJFR0lOOlZFVkVOVA0KU1VNTUFSWTpZb2N0byBQcm9qZWN0IFRlY2hu
aWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAx
MjExMjBUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMTEyMFQw
OTAwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwNzA2NjFE
MzUyODRFQ0QwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAwMDAwMEUxRjQxQTcxRjk5NzNENDFBRTA5
RTYzNjYzMUVDOUVCDQpSRUNVUlJFTkNFLUlEO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIw
MTIxMTIwVDAwMDAwMA0KQ0xBU1M6UFVCTElDDQpQUklPUklUWTo1DQpEVFNUQU1QOjIwMTIxMTI2
VDIyNDA0OVoNClRSQU5TUDpPUEFRVUUNClNUQVRVUzpDT05GSVJNRUQNClNFUVVFTkNFOjE3DQpM
T0NBVElPTjpCcmlkZ2UgSW5mbyBFbmNsb3NlZA0KWC1NSUNST1NPRlQtQ0RPLUFQUFQtU0VRVUVO
Q0U6MTcNClgtTUlDUk9TT0ZULUNETy1PV05FUkFQUFRJRDoyMDA4MzExNzcyDQpYLU1JQ1JPU09G
VC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgtTUlDUk9TT0ZULUNETy1JTlRFTkRFRFNUQVRV
UzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZRVZFTlQ6RkFMU0UNClgtTUlDUk9TT0ZULUNE
Ty1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNETy1JTlNUVFlQRToxDQpYLU1JQ1JPU09GVC1E
SVNBTExPVy1DT1VOVEVSOkZBTFNFDQpFTkQ6VkVWRU5UDQpCRUdJTjpWRVZFTlQNClNVTU1BUlk6
WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0aW5nDQpEVFNUQVJUO1RaSUQ9UGFjaWZp
YyBTdGFuZGFyZCBUaW1lOjIwMTIxMTI3VDA4MDAwMA0KRFRFTkQ7VFpJRD1QYWNpZmljIFN0YW5k
YXJkIFRpbWU6MjAxMjExMjdUMDkwMDAwDQpVSUQ6MDQwMDAwMDA4MjAwRTAwMDc0QzVCNzEwMUE4
MkUwMDgwMDAwMDAwMDcwNjYxRDM1Mjg0RUNEMDEwMDAwMDAwMDAwMDAwMDANCiAwMTAwMDAwMDBF
MUY0MUE3MUY5OTczRDQxQUUwOUU2MzY2MzFFQzlFQg0KUkVDVVJSRU5DRS1JRDtUWklEPVBhY2lm
aWMgU3RhbmRhcmQgVGltZToyMDEyMTEyN1QwMDAwMDANCkNMQVNTOlBVQkxJQw0KUFJJT1JJVFk6
NQ0KRFRTVEFNUDoyMDEyMTEyNlQyMjQwNDlaDQpUUkFOU1A6T1BBUVVFDQpTVEFUVVM6Q09ORklS
TUVEDQpTRVFVRU5DRToxNw0KTE9DQVRJT046QnJpZGdlIEluZm8gRW5jbG9zZWQNClgtTUlDUk9T
T0ZULUNETy1BUFBULVNFUVVFTkNFOjE3DQpYLU1JQ1JPU09GVC1DRE8tT1dORVJBUFBUSUQ6MjAw
ODMxMTc3Mg0KWC1NSUNST1NPRlQtQ0RPLUJVU1lTVEFUVVM6VEVOVEFUSVZFDQpYLU1JQ1JPU09G
VC1DRE8tSU5URU5ERURTVEFUVVM6QlVTWQ0KWC1NSUNST1NPRlQtQ0RPLUFMTERBWUVWRU5UOkZB
TFNFDQpYLU1JQ1JPU09GVC1DRE8tSU1QT1JUQU5DRToxDQpYLU1JQ1JPU09GVC1DRE8tSU5TVFRZ
UEU6MQ0KWC1NSUNST1NPRlQtRElTQUxMT1ctQ09VTlRFUjpGQUxTRQ0KRU5EOlZFVkVOVA0KRU5E
OlZDQUxFTkRBUg0K

--_000_7E680CB2A76BB8438D08CF13C09FC53A48606B71ORSMSX101amrcor_--
