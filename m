Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05DB7E00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 10:57:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Oct 2012 10:57:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,528,1344236400"; 
	d="scan'208,217";a="200154653"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by azsmga001.ch.intel.com with ESMTP; 03 Oct 2012 10:57:28 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.19.9.52) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 3 Oct 2012 10:57:23 -0700
Received: from fmsmsx151.amr.corp.intel.com ([169.254.6.213]) by
	FMSMSX101.amr.corp.intel.com ([169.254.1.150]) with mapi id
	14.01.0355.002; Wed, 3 Oct 2012 10:57:22 -0700
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
	<jpuhlman@gmail.com>, "Kridner, Jason" <jdk@ti.com>, "Li, Susie"
	<susie.li@intel.com>, "'Lieu.Ta@windriver.com'" <'Lieu.Ta@windriver.com'>, 
	"Lock, Joshua" <joshua.lock@intel.com>, "'McCombe, Kevin'"
	<kevin.mccombe@windriver.com>, "Moeller, Thorsten"
	<thorsten.moeller@intel.com>, Sanjay Raina <sraina@mvista.com>,
	"Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>, "'Polk, Jeffrey'"
	<jeff.polk@windriver.com>, "Purdie, Richard" <richard.purdie@intel.com>,
	"'Ranslam, Rob'" <Rob.Ranslam@windriver.com>, "Saxena, Rahul"
	<rahul.saxena@intel.com>, "Stewart, David C" <david.c.stewart@intel.com>,
	"Wang, Shane" <shane.wang@intel.com>, "Wold, Saul" <saul.wold@intel.com>,
	"Zanussi, Tom" <tom.zanussi@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Rifenbark, Scott M"
	<scott.m.rifenbark@intel.com>, "'Hudson, Sean'" <Sean_Hudson@mentor.com>,
	"Serban, Laurentiu" <laurentiu.serban@intel.com>, "Petrisor, Ileana"
	<ileana.petrisor@intel.com>, "Damian, Alexandru"
	<alexandru.damian@intel.com>, "Burton, Ross" <ross.burton@intel.com>,
	"Mueller, Robert" <robert.mueller@intel.com>, "Arce Moreno, Abraham"
	<abraham.arce.moreno@intel.com>,
	'Ravi Vompolu' <Ravi.Vompolu@mathworks.com>, 
	"'Mitchell, Jeffrey - 0665 - MITLL'" <jmitchell@ll.mit.edu>, "'Sadiq,
	Irfan'" <Irfan_Sadiq@mentor.com>, "Santana Lopez, Mario A"
	<mario.a.santana.lopez@intel.com>, "Calles Palacios, Osvaldo"
	<osvaldo.calles.palacios@intel.com>, "Patel, Keyur R"
	<keyur.r.patel@intel.com>
Thread-Topic: Yocto Project Technical Team Meeting
Thread-Index: Ac1PD+V8Ct/ClNHmQjqLT20ujqok5xBFVASA
Date: Wed, 3 Oct 2012 17:57:21 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A48554B51@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 03 Oct 2012 13:32:54 -0700
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
X-List-Received-Date: Wed, 03 Oct 2012 17:57:31 -0000
X-Groupsio-MsgNum: 9791
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A48554B51FMSMSX151amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A48554B51FMSMSX151amrcor_
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





--_000_7E680CB2A76BB8438D08CF13C09FC53A48554B51FMSMSX151amrcor_
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

--_000_7E680CB2A76BB8438D08CF13C09FC53A48554B51FMSMSX151amrcor_
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
QVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iTGksIFN1c2llIjoNCiBNQUlMVE86c3VzaWUu
bGlAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSdMaWV1LlRhQHcNCiBpbmRyaXZlci5jb20nOk1BSUxUTzon
TGlldS5UYUB3aW5kcml2ZXIuY29tJw0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFS
VFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iTG9jaywgSm9zaA0KIHVhIjpNQUlMVE86
am9zaHVhLmxvY2tAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJU
U1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSInTWNDb21iZSwgDQogS2V2aW4nIjpNQUlM
VE86a2V2aW4ubWNjb21iZUB3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJ
UEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJNb2VsbGVyLCBUDQogaG9y
c3RlbiI6TUFJTFRPOnRob3JzdGVuLm1vZWxsZXJAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJF
US1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPVNhbmpheSBS
YWkNCiBuYTpNQUlMVE86c3JhaW5hQG12aXN0YS5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJ
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
Uy1BQ1RJT047UlNWUD1UUlVFO0NOPSJXYW5nLCBTaGFuDQogZSI6TUFJTFRPOnNoYW5lLndhbmdA
aW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1B
Q1RJT047UlNWUD1UUlVFO0NOPSJXb2xkLCBTYXVsIg0KIDpNQUlMVE86c2F1bC53b2xkQGludGVs
LmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9O
O1JTVlA9VFJVRTtDTj0iWmFudXNzaSwgVA0KIG9tIjpNQUlMVE86dG9tLnphbnVzc2lAaW50ZWwu
Y29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047
UlNWUD1UUlVFO0NOPSJaaGFuZywgSmVzDQogc2ljYSI6TUFJTFRPOmplc3NpY2EuemhhbmdAaW50
ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJ
T047UlNWUD1UUlVFO0NOPSJSaWZlbmJhcmssDQogIFNjb3R0IE0iOk1BSUxUTzpzY290dC5tLnJp
ZmVuYmFya0BpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFU
PU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IidIdWRzb24sIFMNCiBlYW4nIjpNQUlMVE86U2Vh
bl9IdWRzb25AbWVudG9yLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNU
QVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iU2VyYmFuLCBMYQ0KIHVyZW50aXUiOk1BSUxU
TzpsYXVyZW50aXUuc2VyYmFuQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBB
TlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUGV0cmlzb3IsIA0KIElsZWFu
YSI6TUFJTFRPOmlsZWFuYS5wZXRyaXNvckBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBB
UlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkRhbWlhbiwgQWwN
CiBleGFuZHJ1IjpNQUlMVE86YWxleGFuZHJ1LmRhbWlhbkBpbnRlbC5jb20NCkFUVEVOREVFO1JP
TEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IkJ1
cnRvbiwgUm8NCiBzcyI6TUFJTFRPOnJvc3MuYnVydG9uQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9M
RT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iTXVl
bGxlciwgUg0KIG9iZXJ0IjpNQUlMVE86cm9iZXJ0Lm11ZWxsZXJAaW50ZWwuY29tDQpBVFRFTkRF
RTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NO
PSJBcmNlIE1vcmVuDQogbywgQWJyYWhhbSI6TUFJTFRPOmFicmFoYW0uYXJjZS5tb3Jlbm9AaW50
ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJ
T047UlNWUD1UUlVFO0NOPSdSYXZpIFZvbXANCiBvbHUnOk1BSUxUTzpSYXZpLlZvbXBvbHVAbWF0
aHdvcmtzLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMt
QUNUSU9OO1JTVlA9VFJVRTtDTj0iJ01pdGNoZWxsLA0KICBKZWZmcmV5IC0gMDY2NSAtIE1JVExM
JyI6TUFJTFRPOmptaXRjaGVsbEBsbC5taXQuZWR1DQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJ
UEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSInU2FkaXEsIElyDQogZmFu
JyI6TUFJTFRPOklyZmFuX1NhZGlxQG1lbnRvci5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJ
Q0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlNhbnRhbmEgTG8NCiBw
ZXosIE1hcmlvIEEiOk1BSUxUTzptYXJpby5hLnNhbnRhbmEubG9wZXpAaW50ZWwuY29tDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJDYWxsZXMgUGFsDQogYWNpb3MsIE9zdmFsZG8iOk1BSUxUTzpvc3ZhbGRvLmNhbGxlcy5w
YWxhY2lvc0BpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFU
PU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlBhdGVsLCBLZXkNCiB1ciBSIjpNQUlMVE86a2V5
dXIuci5wYXRlbEBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRT
VEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049IlBvcGEsIFZhbGUNCiBudGluIjpNQUlMVE86
dmFsZW50aW4ucG9wYUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BB
UlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik1vc2VzLCBGcmUNCiBkIjpNQUlMVE86
ZnJlZC5tb3Nlc0BpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRT
VEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049eW9jdG9AeW9jdA0KIG9wcm9qZWN0Lm9yZzpN
QUlMVE86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBB
TlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iSW9yZ2EsIENyaQ0KIHN0aWFu
IjpNQUlMVE86Y3Jpc3RpYW4uaW9yZ2FAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJU
SUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPVNTRC1PVEMgUm8NCiBt
YW5pYSBZb2N0byBRQTpNQUlMVE86c3NkLW90Yy5yb21hbmlhLnlvY3RvLnFhQGludGVsLmNvbQ0K
QVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9
VFJVRTtDTj0iUGFsYWxhdSwgQQ0KIGxleGFuZHJ1WCI6TUFJTFRPOmFsZXhhbmRydXgucGFsYWxh
dUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURT
LUFDVElPTjtSU1ZQPVRSVUU7Q049IidCdXRsZXIsIFANCiBhdWwnIjpNQUlMVE86UGF1bC5CdXRs
ZXJAd2luZHJpdmVyLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iTWlyZWEsIFZpbw0KIHJlbCI6TUFJTFRPOnZpb3Jl
bC5taXJlYUBpbnRlbC5jb20NCkRFU0NSSVBUSU9OO0xBTkdVQUdFPWVuLVVTOldoZW46IE9jY3Vy
cyBldmVyeSBUdWVzZGF5IGVmZmVjdGl2ZSA2LzI2LzIwMTIgdQ0KIG50aWwgNi8xOC8yMDEzIGZy
b20gODowMCBBTSB0byA5OjAwIEFNIChVVEMtMDg6MDApIFBhY2lmaWMgVGltZSAoVVMgJiBDYW5h
DQogZGEpLlxuV2hlcmU6IEJyaWRnZSBJbmZvIEVuY2xvc2VkXG5cbk5vdGU6IFRoZSBHTVQgb2Zm
c2V0IGFib3ZlIGRvZXMgbm90IHINCiBlZmxlY3QgZGF5bGlnaHQgc2F2aW5nIHRpbWUgYWRqdXN0
bWVudHMuXG5cbip+Kn4qfip+Kn4qfip+Kn4qfipcblxuV2UgZW5jbw0KIHVyYWdlIHBlb3BsZSBh
dHRlbmRpbmcgdGhlIG1lZXRpbmcgdG8gbG9nb24gdGhlIFlvY3RvIElSQyBjaGFuY2VsIGR1cmlu
ZyB0DQogaGUgbWVldGluZyAob3B0aW9uYWwpOlxuXG5Zb2N0byBJUkM6IGh0dHA6Ly93ZWJjaGF0
LmZyZWVub2RlLm5ldC8/Y2hhbm5lbHMNCiA9I3lvY3RvXG5JUkMgVHV0b3JpYWw6IGh0dHA6Ly93
d3cuaXJjaGVscC5vcmcvaXJjaGVscC9pcmN0dXRvcmlhbC5odG1sXG5cbg0KIENvbmZlcmVuY2Ug
ZGV0YWlsc1xuQ29uZmVyZW5jZSBuYW1lOiAgICAgICAgWW9jdG8gVGVjaG5pY2FsIFRlYW1cbkNv
bmZlcmVuDQogY2UgZGF0ZS9zdGFydCB0aW1lOiAgICAgVHVlIEp1biAyNlwsIDIwMTIgYXQgMTA6
MDAgQU0gQ2VudHJhbCBEYXlsaWdodCBUaW0NCiBlXG5QYXJ0aWNpcGFudHM6ICAgMzBcbkR1cmF0
aW9uOiAgICAgICA2MCBtaW51dGVzXG5QYXJ0aWNpcGFudCBwYXNzY29kZTogIA0KICA3Njk5NDI5
OFxuRGlhbC1pbiBudW1iZXI6ICAgICAgICAgMS45NzIuOTk1Ljc3NzdcblVTIFRvbGwgRnJlZSBu
dW1iZXI6ICAgDQogIDEuODc3LjU2MS42ODI4XG5CbGFja0JlcnJ5IHVzZXJzXCwgY2xpY2sgdGhp
cyBsaW5rIHRvIGpvaW4geW91ciBjb25mZXJlbmMNCiBlIGFzIGEgcGFydGljaXBhbnQ6ICAgICAx
Ljk3Mi45OTUuNzc3N3g3Njk5NDI5OCNcbiAgICAgICAgRGVwZW5kaW5nIG9uIHdoZQ0KIHJlIHlv
dSBhcmUgZGlhbGluZyBmcm9tXCwgZWl0aGVyIHlvdXIgQmxhY2tCZXJyeSB3aWxsIHBhdXNlIGFu
ZCBlbnRlciB0aGUgDQogcGFzc2NvZGUgYXV0b21hdGljYWxseSBvciB5b3Ugd2lsbCBiZSBwcm9t
cHRlZCB0byBjbGljayBhZ2FpbiB0byBkaWFsIHRoZSANCiBwYXNzY29kZS5cblxuXG5Mb2NhbCBh
bmQgR2xvYmFsIEFjY2VzcyBOdW1iZXJzXG5cblxuXG5cbkNvdW50cnlcbkRpYWwtaW4gbg0KIHVt
YmVyXG5cbkF1c3RyYWxpYTpcbjE4MDAgNjM2IDg0M1xuXG5DemVjaCBSZXB1YmxpYzpcbjI0MiA0
MzAgMzUwXG5cbkNoaW5hDQogIChCZWlqaW5nKTpcbkZyb20gb2ZmaWNlIGRpYWwgOC05OTU3Nzc3
IG9yIDg3ODQyNzdcbkJlaWppbmcgT3V0IG9mIE9mZmljZSANCiBkaWFsIDU4NzggNDI3N1xuXG5D
aGluYSAoU2hhbmdoYWkpOlxuRnJvbSBvZmZpY2UgZGlhbCA4LTk5NTc3Nzcgb3IgMzA3MzMyMg0K
IFxuU2hhbmdoYWkgT3V0IG9mIE9mZmljZSBkaWFsIDIzMDcgMzMyMlxuXG5DaGluYSAoU2hlbnpl
bik6XG5Gcm9tIG9mZmljZSBkDQogaWFsIDgtOTk1Nzc3NyBvciA2MDA3ODc3XG5TaGVuemVuIE91
dCBvZiBPZmZpY2UgZGlhbCAyNjAwIDc4NzdcblxuQ2hpbmEgKE8NCiB0aGVyIENpdGllcyk6XG5G
cm9tIElQIHBob25lIGRpYWwgOC05OTU3Nzc3XG5PdGhlciBjaXRpZXMgLSBOb24gSVAgcGhvbmUg
ZA0KIGlhbCAwMjEtMjMwNzMzMjJcblxuRGVubWFyazpcbjgwNjAgMTQwMFxuXG5GaW5sYW5kOlxu
MDkgNDEzMzM0NzdcblxuRnJhbmNlDQogOlxuMDQ5NyAyNzU4ODhcblxuR2VybWFueTpcbjA4MTYx
IDgwMzIzMlxuXG5Ib2xsYW5kOlxuMDMwIDI0MTc0OTBcblxuSW5kaWENCiA6XG5CU05MIHN1YnNj
cmliZXJzIHVzZSAxODAwIDQyNSA5OTk2IChUb2xsIEZyZWUpXG5BaXJ0ZWwgc3Vic2NyaWJlcnMg
dXNlIA0KIDAwMDggMDA5IDg2MSAyMTIgKFRvbGwgRnJlZSlcbkZyb20gVEkgQ2FtcHVzIHVzZSA4
OTk1Nzc3N1xuT3RoZXJzIHVzZSAyNTA5DQogIDk1NTUgKExhbmRsaW5lIHdpdGhpbiBCYW5nYWxv
cmUpIG9yXG44MCAyNTA5IDk1NTUgKE91dHNpZGUgQmFuZ2Fsb3JlKVxuXG4NCiBJc3JhZWw6XG4w
OSA3OTAgNjcxNVxuXG5JdGFseTpcbjAzOSA2OTA2MTIzNCAoMDM5IGlzIGxvY2FsIGNpdHkgY29k
ZSBub3QgYw0KIG91bnRyeSBjb2RlKVxuXG5KYXBhbjpcbkZyb20gVEkgQ2FtcHVzIHVzZSA4IDk5
NSA3Nzc3XG5PdXRzaWRlIFRJIHVzZSAwMyA0DQogMzMxIDM3NzdcblxuTWFsYXlzaWE6XG5Gcm9t
IElQIHBob25lIGRpYWwgMjY0Mzc5OVxuRnJvbSBLdWFsYSBMdW1wdXIgZGlhbCANCiA0MjY0IDM3
OTlcbk91dHNpZGUgS3VhbGEgTHVtcHVyIGRpYWwgKDAzKTQyNjQgMzc5OVxuXG5Ob3J3YXk6XG4y
IDI5NSA4NzQ0XA0KIG5cblBoaWxpcHBpbmVzOlxuRnJvbSBCYWd1aW8gQ2l0eSB1c2UgNDQ3MTE3
N1xuRnJvbSBNZXRybyBNYW5pbGEgYXJlYSB1c2UgDQogODcwMjQ3N1xuXG5TaW5nYXBvcmU6XG5G
cm9tIElQIHBob25lIGRpYWwgMzg5NDc3N1xuT3V0c2lkZSBUSSB1c2UgNjM4OSA0NzcNCiA3XG5c
blNvdXRoIEtvcmVhOlxuRnJvbSBJUCBwaG9uZSBkaWFsIDU2MDY5OThcbkZyb20gU2VvdWwgZGlh
bCA1NjA2OTk4XG5PdQ0KIHRzaWRlIFNlb3VsIGRpYWwgKDAyKTU2MDY5OThcblxuU3dlZGVuOlxu
MDggNTg3NTU1NzdcblxuVGFpd2FuOlxuRnJvbSBJUCBwDQogaG9uZSBkaWFsIDEzNjNcbkZyb20g
VGFpcGVpIGRpYWwgMjI0MSAxMzYzXG5PdXRzaWRlIFRhaXBlaSBkaWFsICgwMikyMjQxIDENCiAz
NjNcblxuVHVya2V5OlxuTGFuZGxpbmUgT25seSBkaWFsIDA4MTEgMjg4IDAwMDFcbnRoZW4gZW50
ZXIgODc3IDYzMyAxMTIzXA0KIG5cblVLOlxuMDE2MDQgNjYzMDAzXG5cblVTOlxuOTcyIDk5NSA3
Nzc3IG9yIDE4NzcgNTYxIDY4MjhcblxuXG5SZWN1cnJpbmcgDQogY29uZmVyZW5jZXNcbkZpcnN0
IHNjaGVkdWxlZCBjb25mZXJlbmNlOiAgICAgVHVlIEp1biAyNlwsIDIwMTJcblJlY3VycmVuY2UN
CiAgZnJlcXVlbmN5OiAgIFdlZWtseSAtIEV2ZXJ5IDEgd2VlayhzKSBvbiBUdWVzZGF5XG5SZWN1
cnJlbmNlIGVuZHM6ICAgICAgIA0KICBFbmQgb24gRnJpIEp1biAyMVwsIDIwMTNcLCAxMDo0MCBB
TSBDRFRcblxuXG5cblxuDQpSUlVMRTpGUkVRPVdFRUtMWTtVTlRJTD0yMDEzMDYxOFQxNTAwMDBa
O0lOVEVSVkFMPTE7QllEQVk9VFU7V0tTVD1TVQ0KU1VNTUFSWTtMQU5HVUFHRT1lbi1VUzpZb2N0
byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1QYWNpZmljIFN0
YW5kYXJkIFRpbWU6MjAxMjA2MjZUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMgU3RhbmRhcmQg
VGltZToyMDEyMDYyNlQwOTAwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAw
ODAwMDAwMDAwNzA2NjFEMzUyODRFQ0QwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAwMDAwMEUxRjQx
QTcxRjk5NzNENDFBRTA5RTYzNjYzMUVDOUVCDQpDTEFTUzpQVUJMSUMNClBSSU9SSVRZOjUNCkRU
U1RBTVA6MjAxMjEwMDNUMTc1NzE0Wg0KVFJBTlNQOk9QQVFVRQ0KU1RBVFVTOkNPTkZJUk1FRA0K
U0VRVUVOQ0U6Nw0KTE9DQVRJT047TEFOR1VBR0U9ZW4tVVM6QnJpZGdlIEluZm8gRW5jbG9zZWQN
ClgtTUlDUk9TT0ZULUNETy1BUFBULVNFUVVFTkNFOjcNClgtTUlDUk9TT0ZULUNETy1PV05FUkFQ
UFRJRDoyMDA4MzExNzcyDQpYLU1JQ1JPU09GVC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgt
TUlDUk9TT0ZULUNETy1JTlRFTkRFRFNUQVRVUzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZ
RVZFTlQ6RkFMU0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNE
Ty1JTlNUVFlQRToxDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZBTFNFDQpCRUdJTjpW
QUxBUk0NCkFDVElPTjpESVNQTEFZDQpERVNDUklQVElPTjpSRU1JTkRFUg0KVFJJR0dFUjtSRUxB
VEVEPVNUQVJUOi1QVDE1TQ0KRU5EOlZBTEFSTQ0KRU5EOlZFVkVOVA0KQkVHSU46VkVWRU5UDQpT
VU1NQVJZOllvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0KRFRTVEFSVDtUWklE
PVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMDcwM1QwODAwMDANCkRURU5EO1RaSUQ9UGFjaWZp
YyBTdGFuZGFyZCBUaW1lOjIwMTIwNzAzVDA5MDAwMA0KVUlEOjA0MDAwMDAwODIwMEUwMDA3NEM1
QjcxMDFBODJFMDA4MDAwMDAwMDA3MDY2MUQzNTI4NEVDRDAxMDAwMDAwMDAwMDAwMDAwDQogMDEw
MDAwMDAwRTFGNDFBNzFGOTk3M0Q0MUFFMDlFNjM2NjMxRUM5RUINClJFQ1VSUkVOQ0UtSUQ7VFpJ
RD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjA3MDNUMDAwMDAwDQpDTEFTUzpQVUJMSUMNClBS
SU9SSVRZOjUNCkRUU1RBTVA6MjAxMjEwMDNUMTc1NzE0Wg0KVFJBTlNQOk9QQVFVRQ0KU1RBVFVT
OkNPTkZJUk1FRA0KU0VRVUVOQ0U6Nw0KTE9DQVRJT046QnJpZGdlIEluZm8gRW5jbG9zZWQNClgt
TUlDUk9TT0ZULUNETy1BUFBULVNFUVVFTkNFOjcNClgtTUlDUk9TT0ZULUNETy1PV05FUkFQUFRJ
RDoyMDA4MzExNzcyDQpYLU1JQ1JPU09GVC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgtTUlD
Uk9TT0ZULUNETy1JTlRFTkRFRFNUQVRVUzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZRVZF
TlQ6RkFMU0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNETy1J
TlNUVFlQRToxDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZBTFNFDQpFTkQ6VkVWRU5U
DQpCRUdJTjpWRVZFTlQNClNVTU1BUlk6WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0
aW5nDQpEVFNUQVJUO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIwNzEwVDA4MDAwMA0K
RFRFTkQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjA3MTBUMDkwMDAwDQpVSUQ6MDQw
MDAwMDA4MjAwRTAwMDc0QzVCNzEwMUE4MkUwMDgwMDAwMDAwMDcwNjYxRDM1Mjg0RUNEMDEwMDAw
MDAwMDAwMDAwMDANCiAwMTAwMDAwMDBFMUY0MUE3MUY5OTczRDQxQUUwOUU2MzY2MzFFQzlFQg0K
UkVDVVJSRU5DRS1JRDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMDcxMFQwMDAwMDAN
CkNMQVNTOlBVQkxJQw0KUFJJT1JJVFk6NQ0KRFRTVEFNUDoyMDEyMTAwM1QxNzU3MTRaDQpUUkFO
U1A6T1BBUVVFDQpTVEFUVVM6Q09ORklSTUVEDQpTRVFVRU5DRTo3DQpMT0NBVElPTjpCcmlkZ2Ug
SW5mbyBFbmNsb3NlZA0KWC1NSUNST1NPRlQtQ0RPLUFQUFQtU0VRVUVOQ0U6Nw0KWC1NSUNST1NP
RlQtQ0RPLU9XTkVSQVBQVElEOjIwMDgzMTE3NzINClgtTUlDUk9TT0ZULUNETy1CVVNZU1RBVFVT
OlRFTlRBVElWRQ0KWC1NSUNST1NPRlQtQ0RPLUlOVEVOREVEU1RBVFVTOkJVU1kNClgtTUlDUk9T
T0ZULUNETy1BTExEQVlFVkVOVDpGQUxTRQ0KWC1NSUNST1NPRlQtQ0RPLUlNUE9SVEFOQ0U6MQ0K
WC1NSUNST1NPRlQtQ0RPLUlOU1RUWVBFOjENClgtTUlDUk9TT0ZULURJU0FMTE9XLUNPVU5URVI6
RkFMU0UNCkVORDpWRVZFTlQNCkJFR0lOOlZFVkVOVA0KU1VNTUFSWTpZb2N0byBQcm9qZWN0IFRl
Y2huaWNhbCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6
MjAxMjA3MjRUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMDcy
NFQwOTAwMDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwNzA2
NjFEMzUyODRFQ0QwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAwMDAwMEUxRjQxQTcxRjk5NzNENDFB
RTA5RTYzNjYzMUVDOUVCDQpSRUNVUlJFTkNFLUlEO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1l
OjIwMTIwNzI0VDAwMDAwMA0KQ0xBU1M6UFVCTElDDQpQUklPUklUWTo1DQpEVFNUQU1QOjIwMTIx
MDAzVDE3NTcxNFoNClRSQU5TUDpPUEFRVUUNClNUQVRVUzpDT05GSVJNRUQNClNFUVVFTkNFOjcN
CkxPQ0FUSU9OOkJyaWRnZSBJbmZvIEVuY2xvc2VkDQpYLU1JQ1JPU09GVC1DRE8tQVBQVC1TRVFV
RU5DRTo3DQpYLU1JQ1JPU09GVC1DRE8tT1dORVJBUFBUSUQ6MjAwODMxMTc3Mg0KWC1NSUNST1NP
RlQtQ0RPLUJVU1lTVEFUVVM6VEVOVEFUSVZFDQpYLU1JQ1JPU09GVC1DRE8tSU5URU5ERURTVEFU
VVM6QlVTWQ0KWC1NSUNST1NPRlQtQ0RPLUFMTERBWUVWRU5UOkZBTFNFDQpYLU1JQ1JPU09GVC1D
RE8tSU1QT1JUQU5DRToxDQpYLU1JQ1JPU09GVC1DRE8tSU5TVFRZUEU6MQ0KWC1NSUNST1NPRlQt
RElTQUxMT1ctQ09VTlRFUjpGQUxTRQ0KRU5EOlZFVkVOVA0KQkVHSU46VkVWRU5UDQpTVU1NQVJZ
OllvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0KRFRTVEFSVDtUWklEPVBhY2lm
aWMgU3RhbmRhcmQgVGltZToyMDEyMDgyOFQwODAwMDANCkRURU5EO1RaSUQ9UGFjaWZpYyBTdGFu
ZGFyZCBUaW1lOjIwMTIwODI4VDA5MDAwMA0KVUlEOjA0MDAwMDAwODIwMEUwMDA3NEM1QjcxMDFB
ODJFMDA4MDAwMDAwMDA3MDY2MUQzNTI4NEVDRDAxMDAwMDAwMDAwMDAwMDAwDQogMDEwMDAwMDAw
RTFGNDFBNzFGOTk3M0Q0MUFFMDlFNjM2NjMxRUM5RUINClJFQ1VSUkVOQ0UtSUQ7VFpJRD1QYWNp
ZmljIFN0YW5kYXJkIFRpbWU6MjAxMjA4MjhUMDAwMDAwDQpDTEFTUzpQVUJMSUMNClBSSU9SSVRZ
OjUNCkRUU1RBTVA6MjAxMjEwMDNUMTc1NzE0Wg0KVFJBTlNQOk9QQVFVRQ0KU1RBVFVTOkNPTkZJ
Uk1FRA0KU0VRVUVOQ0U6Nw0KTE9DQVRJT046QnJpZGdlIEluZm8gRW5jbG9zZWQNClgtTUlDUk9T
T0ZULUNETy1BUFBULVNFUVVFTkNFOjcNClgtTUlDUk9TT0ZULUNETy1PV05FUkFQUFRJRDoyMDA4
MzExNzcyDQpYLU1JQ1JPU09GVC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgtTUlDUk9TT0ZU
LUNETy1JTlRFTkRFRFNUQVRVUzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZRVZFTlQ6RkFM
U0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNETy1JTlNUVFlQ
RToxDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZBTFNFDQpFTkQ6VkVWRU5UDQpCRUdJ
TjpWRVZFTlQNClNVTU1BUlk6WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0aW5nDQpE
VFNUQVJUO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIwOTI1VDA4MDAwMA0KRFRFTkQ7
VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjA5MjVUMDkwMDAwDQpVSUQ6MDQwMDAwMDA4
MjAwRTAwMDc0QzVCNzEwMUE4MkUwMDgwMDAwMDAwMDcwNjYxRDM1Mjg0RUNEMDEwMDAwMDAwMDAw
MDAwMDANCiAwMTAwMDAwMDBFMUY0MUE3MUY5OTczRDQxQUUwOUU2MzY2MzFFQzlFQg0KUkVDVVJS
RU5DRS1JRDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMDkyNVQwMDAwMDANCkNMQVNT
OlBVQkxJQw0KUFJJT1JJVFk6NQ0KRFRTVEFNUDoyMDEyMTAwM1QxNzU3MTRaDQpUUkFOU1A6T1BB
UVVFDQpTVEFUVVM6Q09ORklSTUVEDQpTRVFVRU5DRTo3DQpMT0NBVElPTjpCcmlkZ2UgSW5mbyBF
bmNsb3NlZA0KWC1NSUNST1NPRlQtQ0RPLUFQUFQtU0VRVUVOQ0U6Nw0KWC1NSUNST1NPRlQtQ0RP
LU9XTkVSQVBQVElEOjIwMDgzMTE3NzINClgtTUlDUk9TT0ZULUNETy1CVVNZU1RBVFVTOlRFTlRB
VElWRQ0KWC1NSUNST1NPRlQtQ0RPLUlOVEVOREVEU1RBVFVTOkJVU1kNClgtTUlDUk9TT0ZULUNE
Ty1BTExEQVlFVkVOVDpGQUxTRQ0KWC1NSUNST1NPRlQtQ0RPLUlNUE9SVEFOQ0U6MQ0KWC1NSUNS
T1NPRlQtQ0RPLUlOU1RUWVBFOjENClgtTUlDUk9TT0ZULURJU0FMTE9XLUNPVU5URVI6RkFMU0UN
CkVORDpWRVZFTlQNCkJFR0lOOlZFVkVOVA0KU1VNTUFSWTpZb2N0byBQcm9qZWN0IFRlY2huaWNh
bCBUZWFtIE1lZXRpbmcNCkRUU1RBUlQ7VFpJRD1QYWNpZmljIFN0YW5kYXJkIFRpbWU6MjAxMjEw
MTZUMDgwMDAwDQpEVEVORDtUWklEPVBhY2lmaWMgU3RhbmRhcmQgVGltZToyMDEyMTAxNlQwOTAw
MDANClVJRDowNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwNzA2NjFEMzUy
ODRFQ0QwMTAwMDAwMDAwMDAwMDAwMA0KIDAxMDAwMDAwMEUxRjQxQTcxRjk5NzNENDFBRTA5RTYz
NjYzMUVDOUVCDQpSRUNVUlJFTkNFLUlEO1RaSUQ9UGFjaWZpYyBTdGFuZGFyZCBUaW1lOjIwMTIx
MDE2VDAwMDAwMA0KQ0xBU1M6UFVCTElDDQpQUklPUklUWTo1DQpEVFNUQU1QOjIwMTIxMDAzVDE3
NTcxNFoNClRSQU5TUDpPUEFRVUUNClNUQVRVUzpDT05GSVJNRUQNClNFUVVFTkNFOjcNCkxPQ0FU
SU9OOkJyaWRnZSBJbmZvIEVuY2xvc2VkDQpYLU1JQ1JPU09GVC1DRE8tQVBQVC1TRVFVRU5DRTo3
DQpYLU1JQ1JPU09GVC1DRE8tT1dORVJBUFBUSUQ6MjAwODMxMTc3Mg0KWC1NSUNST1NPRlQtQ0RP
LUJVU1lTVEFUVVM6VEVOVEFUSVZFDQpYLU1JQ1JPU09GVC1DRE8tSU5URU5ERURTVEFUVVM6QlVT
WQ0KWC1NSUNST1NPRlQtQ0RPLUFMTERBWUVWRU5UOkZBTFNFDQpYLU1JQ1JPU09GVC1DRE8tSU1Q
T1JUQU5DRToxDQpYLU1JQ1JPU09GVC1DRE8tSU5TVFRZUEU6MQ0KWC1NSUNST1NPRlQtRElTQUxM
T1ctQ09VTlRFUjpGQUxTRQ0KRU5EOlZFVkVOVA0KRU5EOlZDQUxFTkRBUg0K

--_000_7E680CB2A76BB8438D08CF13C09FC53A48554B51FMSMSX151amrcor_--
