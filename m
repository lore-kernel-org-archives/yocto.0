Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA46DE00292
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 12:59:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Oct 2012 12:59:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,590,1344236400"; 
	d="scan'208,217";a="234193286"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 15 Oct 2012 12:59:21 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.223]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.247]) with mapi id
	14.01.0355.002; Mon, 15 Oct 2012 12:59:20 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "Petrisor, Ileana"
	<ileana.petrisor@intel.com>, "Damian, Alexandru"
	<alexandru.damian@intel.com>, "Calles Palacios, Osvaldo"
	<osvaldo.calles.palacios@intel.com>, "Patel, Keyur R"
	<keyur.r.patel@intel.com>, 'Anders Darander' <anders@chargestorm.se>,
	"Barros Pena, Belen" <belen.barros.pena@intel.com>, "Bodke, Kishore K"
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
	"'Hudson, Sean'" <Sean_Hudson@mentor.com>, "Serban, Laurentiu"
	<laurentiu.serban@intel.com>, "Burton, Ross" <ross.burton@intel.com>,
	"Mueller, Robert" <robert.mueller@intel.com>, "Arce Moreno, Abraham"
	<abraham.arce.moreno@intel.com>,
	'Ravi Vompolu' <Ravi.Vompolu@mathworks.com>, 
	"'Mitchell, Jeffrey - 0665 - MITLL'" <jmitchell@ll.mit.edu>, "'Sadiq,
	Irfan'" <Irfan_Sadiq@mentor.com>, "Santana Lopez, Mario A"
	<mario.a.santana.lopez@intel.com>, "'achaudha@mvista.com'"
	<achaudha@mvista.com>
Thread-Topic: Yocto Project Technical Team Meeting
Thread-Index: Ac2Vtw9dCt/ClNHmQjqLT20ujqok5xBFVASA
Date: Mon, 15 Oct 2012 19:59:19 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A4857594E@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 15 Oct 2012 15:07:31 -0700
Cc: "Palalau, AlexandruX" <alexandrux.palalau@intel.com>, "Mirea,
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
X-List-Received-Date: Mon, 15 Oct 2012 19:59:23 -0000
X-Groupsio-MsgNum: 10093
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A4857594EORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A4857594EORSMSX101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

When: Tuesday, October 16, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (U=
S & Canada).
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





--_000_7E680CB2A76BB8438D08CF13C09FC53A4857594EORSMSX101amrcor_
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
<div>When: Tuesday, October 16, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Ti=
me (US &amp; Canada).</div>
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

--_000_7E680CB2A76BB8438D08CF13C09FC53A4857594EORSMSX101amrcor_
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
RVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUmlmZW5i
YXJrLA0KICBTY290dCBNIjpNQUlMVE86c2NvdHQubS5yaWZlbmJhcmtAaW50ZWwuY29tDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJQZXRyaXNvciwgDQogSWxlYW5hIjpNQUlMVE86aWxlYW5hLnBldHJpc29yQGludGVsLmNv
bQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JT
VlA9VFJVRTtDTj0iRGFtaWFuLCBBbA0KIGV4YW5kcnUiOk1BSUxUTzphbGV4YW5kcnUuZGFtaWFu
QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMt
QUNUSU9OO1JTVlA9VFJVRTtDTj0iQ2FsbGVzIFBhbA0KIGFjaW9zLCBPc3ZhbGRvIjpNQUlMVE86
b3N2YWxkby5jYWxsZXMucGFsYWNpb3NAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJU
SUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJQYXRlbCwgS2V5DQog
dXIgUiI6TUFJTFRPOmtleXVyLnIucGF0ZWxAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1Q
QVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdBbmRlcnMgRGEN
CiByYW5kZXInOk1BSUxUTzphbmRlcnNAY2hhcmdlc3Rvcm0uc2UNCkFUVEVOREVFO1JPTEU9UkVR
LVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkJhcnJvcyBQ
ZW4NCiBhLCBCZWxlbiI6TUFJTFRPOmJlbGVuLmJhcnJvcy5wZW5hQGludGVsLmNvbQ0KQVRURU5E
RUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtD
Tj0iQm9ka2UsIEtpcw0KIGhvcmUgSyI6TUFJTFRPOmtpc2hvcmUuay5ib2RrZUBpbnRlbC5jb20N
CkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049J0JydWNlIEFzaA0KIGZpZWxkJzpNQUlMVE86YnJ1Y2UuYXNoZmllbGRAd2luZHJp
dmVyLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNU
SU9OO1JTVlA9VFJVRTtDTj0nRGFuaWVsIENhDQogdWNoeSc6TUFJTFRPOmRjYXVjaHlAbXZpc3Rh
LmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9O
O1JTVlA9VFJVRTtDTj0iJ2RlVnJpZXMsIA0KIEFsZXgnIjpNQUlMVE86QWxleC5kZVZyaWVzQHdp
bmRyaXZlci5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURT
LUFDVElPTjtSU1ZQPVRSVUU7Q049IidEaXhvbiwgQnINCiBhZCciOk1BSUxUTzpCcmFkX0RpeG9u
QG1lbnRvci5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURT
LUFDVElPTjtSU1ZQPVRSVUU7Q049IkRteXRyaXllbmsNCiBvLCBEZW55cyI6TUFJTFRPOmRlbnlz
QHRpLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNU
SU9OO1JTVlA9VFJVRTtDTj0iRXJ3YXksIFRyYQ0KIGNleSBNIjpNQUlMVE86dHJhY2V5Lm0uZXJ3
YXlAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSJGbGFuYWdhbiwgDQogRWxpemFiZXRoIjpNQUlMVE86ZWxp
emFiZXRoLmZsYW5hZ2FuQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7
UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iSGFydCwgRGFycg0KIGVuIjpNQUlM
VE86ZGFycmVuLmhhcnRAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQ
QVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSInSGF0bGUsIE1hDQogcmsnIjpNQUlM
VE86bWFyay5oYXRsZUB3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFO
VDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdKZXJlbXkgUHUNCiBobG1hbic6
TUFJTFRPOmpwdWhsbWFuQGdtYWlsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7
UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iS3JpZG5lciwgSg0KIGFzb24iOk1B
SUxUTzpqZGtAdGkuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1O
RUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdMaWV1LlRhQHcNCiBpbmRyaXZlci5jb20nOk1BSUxU
TzonTGlldS5UYUB3aW5kcml2ZXIuY29tJw0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7
UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iTG9jaywgSm9zaA0KIHVhIjpNQUlM
VE86am9zaHVhLmxvY2tAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQ
QVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSInTWNDb21iZSwgDQogS2V2aW4nIjpN
QUlMVE86a2V2aW4ubWNjb21iZUB3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJU
SUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJNb2VsbGVyLCBUDQog
aG9yc3RlbiI6TUFJTFRPOnRob3JzdGVuLm1vZWxsZXJAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xF
PVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdTYW5q
YXkgUmENCiBpbmEnOk1BSUxUTzpzcmFpbmFAbXZpc3RhLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEt
UEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iT3NpZXItbWl4
bw0KIG4sIEplZmZyZXkiOk1BSUxUTzpqZWZmcmV5Lm9zaWVyLW1peG9uQGludGVsLmNvbQ0KQVRU
RU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJV
RTtDTj0iJ1BvbGssIEplZg0KIGZyZXknIjpNQUlMVE86amVmZi5wb2xrQHdpbmRyaXZlci5jb20N
CkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049IlB1cmRpZSwgUmkNCiBjaGFyZCI6TUFJTFRPOnJpY2hhcmQucHVyZGllQGludGVs
LmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9O
O1JTVlA9VFJVRTtDTj0iJ1JhbnNsYW0sIA0KIFJvYiciOk1BSUxUTzpSb2IuUmFuc2xhbUB3aW5k
cml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1B
Q1RJT047UlNWUD1UUlVFO0NOPSJTYXhlbmEsIFJhDQogaHVsIjpNQUlMVE86cmFodWwuc2F4ZW5h
QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMt
QUNUSU9OO1JTVlA9VFJVRTtDTj0iU3Rld2FydCwgRA0KIGF2aWQgQyI6TUFJTFRPOmRhdmlkLmMu
c3Rld2FydEBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFU
PU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IldvbGQsIFNhdWwiDQogOk1BSUxUTzpzYXVsLndv
bGRAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSJaYW51c3NpLCBUDQogb20iOk1BSUxUTzp0b20uemFudXNz
aUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURT
LUFDVElPTjtSU1ZQPVRSVUU7Q049IlpoYW5nLCBKZXMNCiBzaWNhIjpNQUlMVE86amVzc2ljYS56
aGFuZ0BpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5F
RURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IidIdWRzb24sIFMNCiBlYW4nIjpNQUlMVE86U2Vhbl9I
dWRzb25AbWVudG9yLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iU2VyYmFuLCBMYQ0KIHVyZW50aXUiOk1BSUxUTzps
YXVyZW50aXUuc2VyYmFuQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7
UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iQnVydG9uLCBSbw0KIHNzIjpNQUlM
VE86cm9zcy5idXJ0b25AaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQ
QVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJNdWVsbGVyLCBSDQogb2JlcnQiOk1B
SUxUTzpyb2JlcnQubXVlbGxlckBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQ
QU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkFyY2UgTW9yZW4NCiBvLCBB
YnJhaGFtIjpNQUlMVE86YWJyYWhhbS5hcmNlLm1vcmVub0BpbnRlbC5jb20NCkFUVEVOREVFO1JP
TEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049J1Jh
dmkgVm9tcA0KIG9sdSc6TUFJTFRPOlJhdmkuVm9tcG9sdUBtYXRod29ya3MuY29tDQpBVFRFTkRF
RTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NO
PSInTWl0Y2hlbGwsDQogIEplZmZyZXkgLSAwNjY1IC0gTUlUTEwnIjpNQUlMVE86am1pdGNoZWxs
QGxsLm1pdC5lZHUNCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURT
LUFDVElPTjtSU1ZQPVRSVUU7Q049IidTYWRpcSwgSXINCiBmYW4nIjpNQUlMVE86SXJmYW5fU2Fk
aXFAbWVudG9yLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVF
RFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iU2FudGFuYSBMbw0KIHBleiwgTWFyaW8gQSI6TUFJTFRP
Om1hcmlvLmEuc2FudGFuYS5sb3BlekBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJ
Q0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049J2FjaGF1ZGhhQA0KIG12
aXN0YS5jb20nOk1BSUxUTzphY2hhdWRoYUBtdmlzdGEuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1Q
QVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJQb3BhLCBWYWxl
DQogbnRpbiI6TUFJTFRPOnZhbGVudGluLnBvcGFAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPU9Q
VC1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJNb3Nlcywg
RnJlDQogZCI6TUFJTFRPOmZyZWQubW9zZXNAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1Q
QVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPXlvY3RvQHlvY3QN
CiBvcHJvamVjdC5vcmc6TUFJTFRPOnlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCkFUVEVOREVFO1JP
TEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Iklv
cmdhLCBDcmkNCiBzdGlhbiI6TUFJTFRPOmNyaXN0aWFuLmlvcmdhQGludGVsLmNvbQ0KQVRURU5E
RUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtD
Tj1TU0QtT1RDIFJvDQogbWFuaWEgWW9jdG8gUUE6TUFJTFRPOnNzZC1vdGMucm9tYW5pYS55b2N0
by5xYUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5F
RURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlBhbGFsYXUsIEENCiBsZXhhbmRydVgiOk1BSUxUTzph
bGV4YW5kcnV4LnBhbGFsYXVAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJUSUNJUEFO
VDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSInQnV0bGVyLCBQDQogYXVsJyI6
TUFJTFRPOlBhdWwuQnV0bGVyQHdpbmRyaXZlci5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBBUlRJ
Q0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik1pcmVhLCBWaW8NCiBy
ZWwiOk1BSUxUTzp2aW9yZWwubWlyZWFAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJU
SUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJDaGlhbmcsIFRlDQog
cmVuY2UiOk1BSUxUTzp0ZXJlbmNlLmNoaWFuZ0BpbnRlbC5jb20NCkRFU0NSSVBUSU9OO0xBTkdV
QUdFPWVuLVVTOldoZW46IFR1ZXNkYXlcLCBPY3RvYmVyIDE2XCwgMjAxMiA4OjAwIEFNLTk6MDAg
QQ0KIE0gKFVUQy0wODowMCkgUGFjaWZpYyBUaW1lIChVUyAmIENhbmFkYSkuXG5XaGVyZTogQnJp
ZGdlIEluZm8gRW5jbG9zZWRcblxuDQogTm90ZTogVGhlIEdNVCBvZmZzZXQgYWJvdmUgZG9lcyBu
b3QgcmVmbGVjdCBkYXlsaWdodCBzYXZpbmcgdGltZSBhZGp1c3RtZW4NCiB0cy5cblxuKn4qfip+
Kn4qfip+Kn4qfip+KlxuXG5XZSBlbmNvdXJhZ2UgcGVvcGxlIGF0dGVuZGluZyB0aGUgbWVldGlu
ZyB0bw0KICBsb2dvbiB0aGUgWW9jdG8gSVJDIGNoYW5jZWwgZHVyaW5nIHRoZSBtZWV0aW5nIChv
cHRpb25hbCk6XG5cbllvY3RvIElSQzogDQogaHR0cDovL3dlYmNoYXQuZnJlZW5vZGUubmV0Lz9j
aGFubmVscz0jeW9jdG9cbklSQyBUdXRvcmlhbDogaHR0cDovL3d3dy5pcmMNCiBoZWxwLm9yZy9p
cmNoZWxwL2lyY3R1dG9yaWFsLmh0bWxcblxuQ29uZmVyZW5jZSBkZXRhaWxzXG5Db25mZXJlbmNl
IG5hbWU6IA0KICAgICAgICBZb2N0byBUZWNobmljYWwgVGVhbVxuQ29uZmVyZW5jZSBkYXRlL3N0
YXJ0IHRpbWU6ICAgICBUdWUgSnVuIDI2XCwgDQogMjAxMiBhdCAxMDowMCBBTSBDZW50cmFsIERh
eWxpZ2h0IFRpbWVcblBhcnRpY2lwYW50czogICAzMFxuRHVyYXRpb246ICAgICANCiAgIDYwIG1p
bnV0ZXNcblBhcnRpY2lwYW50IHBhc3Njb2RlOiAgIDc2OTk0Mjk4XG5EaWFsLWluIG51bWJlcjog
ICAgICAgICAxLg0KIDk3Mi45OTUuNzc3N1xuVVMgVG9sbCBGcmVlIG51bWJlcjogICAgMS44Nzcu
NTYxLjY4MjhcbkJsYWNrQmVycnkgdXNlcnNcLCBjDQogbGljayB0aGlzIGxpbmsgdG8gam9pbiB5
b3VyIGNvbmZlcmVuY2UgYXMgYSBwYXJ0aWNpcGFudDogICAgIDEuOTcyLjk5NS43NzcNCiA3eDc2
OTk0Mjk4I1xuICAgICAgICBEZXBlbmRpbmcgb24gd2hlcmUgeW91IGFyZSBkaWFsaW5nIGZyb21c
LCBlaXRoZXIgeW91cg0KICBCbGFja0JlcnJ5IHdpbGwgcGF1c2UgYW5kIGVudGVyIHRoZSBwYXNz
Y29kZSBhdXRvbWF0aWNhbGx5IG9yIHlvdSB3aWxsIGJlDQogIHByb21wdGVkIHRvIGNsaWNrIGFn
YWluIHRvIGRpYWwgdGhlIHBhc3Njb2RlLlxuXG5cbkxvY2FsIGFuZCBHbG9iYWwgQWNjZXMNCiBz
IE51bWJlcnNcblxuXG5cblxuQ291bnRyeVxuRGlhbC1pbiBudW1iZXJcblxuQXVzdHJhbGlhOlxu
MTgwMCA2MzYgODQzXG5cbg0KIEN6ZWNoIFJlcHVibGljOlxuMjQyIDQzMCAzNTBcblxuQ2hpbmEg
KEJlaWppbmcpOlxuRnJvbSBvZmZpY2UgZGlhbCA4LTk5NTc3DQogNzcgb3IgODc4NDI3N1xuQmVp
amluZyBPdXQgb2YgT2ZmaWNlIGRpYWwgNTg3OCA0Mjc3XG5cbkNoaW5hIChTaGFuZ2hhaSk6XG4N
CiBGcm9tIG9mZmljZSBkaWFsIDgtOTk1Nzc3NyBvciAzMDczMzIyXG5TaGFuZ2hhaSBPdXQgb2Yg
T2ZmaWNlIGRpYWwgMjMwNyAzMw0KIDIyXG5cbkNoaW5hIChTaGVuemVuKTpcbkZyb20gb2ZmaWNl
IGRpYWwgOC05OTU3Nzc3IG9yIDYwMDc4NzdcblNoZW56ZW4gT3V0DQogIG9mIE9mZmljZSBkaWFs
IDI2MDAgNzg3N1xuXG5DaGluYSAoT3RoZXIgQ2l0aWVzKTpcbkZyb20gSVAgcGhvbmUgZGlhbCA4
LTkNCiA5NTc3Nzdcbk90aGVyIGNpdGllcyAtIE5vbiBJUCBwaG9uZSBkaWFsIDAyMS0yMzA3MzMy
MlxuXG5EZW5tYXJrOlxuODA2MCAxNA0KIDAwXG5cbkZpbmxhbmQ6XG4wOSA0MTMzMzQ3N1xuXG5G
cmFuY2U6XG4wNDk3IDI3NTg4OFxuXG5HZXJtYW55OlxuMDgxNjEgODAzDQogMjMyXG5cbkhvbGxh
bmQ6XG4wMzAgMjQxNzQ5MFxuXG5JbmRpYTpcbkJTTkwgc3Vic2NyaWJlcnMgdXNlIDE4MDAgNDI1
IDk5OTYNCiAgKFRvbGwgRnJlZSlcbkFpcnRlbCBzdWJzY3JpYmVycyB1c2UgMDAwOCAwMDkgODYx
IDIxMiAoVG9sbCBGcmVlKVxuRnJvbSBUSQ0KICBDYW1wdXMgdXNlIDg5OTU3Nzc3XG5PdGhlcnMg
dXNlIDI1MDkgOTU1NSAoTGFuZGxpbmUgd2l0aGluIEJhbmdhbG9yZSkgb3JcDQogbjgwIDI1MDkg
OTU1NSAoT3V0c2lkZSBCYW5nYWxvcmUpXG5cbklzcmFlbDpcbjA5IDc5MCA2NzE1XG5cbkl0YWx5
OlxuMDM5IDYNCiA5MDYxMjM0ICgwMzkgaXMgbG9jYWwgY2l0eSBjb2RlIG5vdCBjb3VudHJ5IGNv
ZGUpXG5cbkphcGFuOlxuRnJvbSBUSSBDYW1wdQ0KIHMgdXNlIDggOTk1IDc3Nzdcbk91dHNpZGUg
VEkgdXNlIDAzIDQzMzEgMzc3N1xuXG5NYWxheXNpYTpcbkZyb20gSVAgcGhvbmUgDQogZGlhbCAy
NjQzNzk5XG5Gcm9tIEt1YWxhIEx1bXB1ciBkaWFsIDQyNjQgMzc5OVxuT3V0c2lkZSBLdWFsYSBM
dW1wdXIgZGlhbCANCiAoMDMpNDI2NCAzNzk5XG5cbk5vcndheTpcbjIgMjk1IDg3NDRcblxuUGhp
bGlwcGluZXM6XG5Gcm9tIEJhZ3VpbyBDaXR5IHVzZQ0KICA0NDcxMTc3XG5Gcm9tIE1ldHJvIE1h
bmlsYSBhcmVhIHVzZSA4NzAyNDc3XG5cblNpbmdhcG9yZTpcbkZyb20gSVAgcGhvbmUgDQogZGlh
bCAzODk0Nzc3XG5PdXRzaWRlIFRJIHVzZSA2Mzg5IDQ3NzdcblxuU291dGggS29yZWE6XG5Gcm9t
IElQIHBob25lIGRpYWwNCiAgNTYwNjk5OFxuRnJvbSBTZW91bCBkaWFsIDU2MDY5OThcbk91dHNp
ZGUgU2VvdWwgZGlhbCAoMDIpNTYwNjk5OFxuXG5Td2VkZQ0KIG46XG4wOCA1ODc1NTU3N1xuXG5U
YWl3YW46XG5Gcm9tIElQIHBob25lIGRpYWwgMTM2M1xuRnJvbSBUYWlwZWkgZGlhbCAyMjQxDQog
IDEzNjNcbk91dHNpZGUgVGFpcGVpIGRpYWwgKDAyKTIyNDEgMTM2M1xuXG5UdXJrZXk6XG5MYW5k
bGluZSBPbmx5IGRpYWwgMDgNCiAxMSAyODggMDAwMVxudGhlbiBlbnRlciA4NzcgNjMzIDExMjNc
blxuVUs6XG4wMTYwNCA2NjMwMDNcblxuVVM6XG45NzIgOTk1IA0KIDc3Nzcgb3IgMTg3NyA1NjEg
NjgyOFxuXG5cblJlY3VycmluZyBjb25mZXJlbmNlc1xuRmlyc3Qgc2NoZWR1bGVkIGNvbmZlcmVu
DQogY2U6ICAgICBUdWUgSnVuIDI2XCwgMjAxMlxuUmVjdXJyZW5jZSBmcmVxdWVuY3k6ICAgV2Vl
a2x5IC0gRXZlcnkgMSB3ZWVrKHMNCiApIG9uIFR1ZXNkYXlcblJlY3VycmVuY2UgZW5kczogICAg
ICAgIEVuZCBvbiBGcmkgSnVuIDIxXCwgMjAxM1wsIDEwOjQwIEFNIA0KIENEVFxuXG5cblxuXG4N
ClNVTU1BUlk7TEFOR1VBR0U9ZW4tVVM6WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0
aW5nDQpEVFNUQVJUO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIxMDE2VDA4MDAwMA0K
RFRFTkQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjEwMTZUMDkwMDAwDQpVSUQ6MDQw
MDAwMDA4MjAwRTAwMDc0QzVCNzEwMUE4MkUwMDgwMDAwMDAwMDcwNjYxRDM1Mjg0RUNEMDEwMDAw
MDAwMDAwMDAwMDANCiAwMTAwMDAwMDBFMUY0MUE3MUY5OTczRDQxQUUwOUU2MzY2MzFFQzlFQg0K
UkVDVVJSRU5DRS1JRDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMTAxNlQwODAwMDAN
CkNMQVNTOlBVQkxJQw0KUFJJT1JJVFk6NQ0KRFRTVEFNUDoyMDEyMTAxNVQxOTU5MTVaDQpUUkFO
U1A6T1BBUVVFDQpTVEFUVVM6Q09ORklSTUVEDQpTRVFVRU5DRToxMw0KTE9DQVRJT047TEFOR1VB
R0U9ZW4tVVM6QnJpZGdlIEluZm8gRW5jbG9zZWQNClgtTUlDUk9TT0ZULUNETy1BUFBULVNFUVVF
TkNFOjEzDQpYLU1JQ1JPU09GVC1DRE8tT1dORVJBUFBUSUQ6MjAwODMxMTc3Mg0KWC1NSUNST1NP
RlQtQ0RPLUJVU1lTVEFUVVM6VEVOVEFUSVZFDQpYLU1JQ1JPU09GVC1DRE8tSU5URU5ERURTVEFU
VVM6QlVTWQ0KWC1NSUNST1NPRlQtQ0RPLUFMTERBWUVWRU5UOkZBTFNFDQpYLU1JQ1JPU09GVC1D
RE8tSU1QT1JUQU5DRToxDQpYLU1JQ1JPU09GVC1DRE8tSU5TVFRZUEU6Mw0KWC1NSUNST1NPRlQt
RElTQUxMT1ctQ09VTlRFUjpGQUxTRQ0KQkVHSU46VkFMQVJNDQpBQ1RJT046RElTUExBWQ0KREVT
Q1JJUFRJT046UkVNSU5ERVINClRSSUdHRVI7UkVMQVRFRD1TVEFSVDotUFQxNU0NCkVORDpWQUxB
Uk0NCkVORDpWRVZFTlQNCkVORDpWQ0FMRU5EQVINCg==

--_000_7E680CB2A76BB8438D08CF13C09FC53A4857594EORSMSX101amrcor_--
