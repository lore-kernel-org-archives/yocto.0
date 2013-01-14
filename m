Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F719E00740
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 12:39:39 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Jan 2013 12:38:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,468,1355126400"; d="scan'208";a="246563032"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2013 12:39:34 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 14 Jan 2013 12:39:34 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.4]) with mapi id
	14.01.0355.002; Mon, 14 Jan 2013 12:39:33 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "Liu, Song" <song.liu@intel.com>, "Petrisor, Ileana"
	<ileana.petrisor@intel.com>, "Damian, Alexandru"
	<alexandru.damian@intel.com>, "Patel, Keyur R" <keyur.r.patel@intel.com>,
	'Anders Darander' <anders@chargestorm.se>, "Barros Pena, Belen"
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
	"Burton, Ross" <ross.burton@intel.com>, "Mueller, Robert"
	<robert.mueller@intel.com>, "Arce Moreno, Abraham"
	<abraham.arce.moreno@intel.com>,
	'Ravi Vompolu' <Ravi.Vompolu@mathworks.com>, 
	"'Sadiq, Irfan'" <Irfan_Sadiq@mentor.com>, "Santana Lopez, Mario A"
	<mario.a.santana.lopez@intel.com>, "Calles Palacios, Osvaldo"
	<osvaldo.calles.palacios@intel.com>, "'achaudha@mvista.com'"
	<achaudha@mvista.com>
Thread-Topic: Agenda: Yocto Project Technical Team Meeting - Tuesday,
	January 15, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHN8pdCklfc4/6Xb0+PCj8SjmwBLQ==
Date: Mon, 14 Jan 2013 20:39:33 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A598990AA@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 14 Jan 2013 13:34:02 -0800
Cc: "Moisan, Radu" <radu.moisan@intel.com>, "Szankin,
	Maciej" <maciej.szankin@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Mirea,
	Viorel" <viorel.mirea@intel.com>,
	SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>, "Palalau, 
	AlexandruX" <alexandrux.palalau@intel.com>,
	Olivia Salisbury <olivia.salisbury@tobias.tv>
Subject: Agenda: Yocto Project Technical Team Meeting - Tuesday, January 15, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Mon, 14 Jan 2013 20:39:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto Project 1.2.2 status - 10 min (Scott/AlexG)
* Yocto Project 1.3.1 status - 10 min (Ross)
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status#Overview=20
* SWAT team rotation: Radu Moisan -> Constantin Musca
* Opens - 10 min=20
* Team Sharing - 20 min


-----Original Appointment-----


We encourage people attending the meeting to logon the Yocto IRC chancel du=
ring the meeting (optional):

Yocto IRC: http://webchat.freenode.net/?channels=3D#yocto
IRC Tutorial: http://www.irchelp.org/irchelp/irctutorial.html=20

Conference details=20
Conference name:=20
Yocto Technical Team
Conference date/start time:=20
Tue Jun 26, 2012 at 10:00 AM Central Daylight Time=20
Participants:=20
30
Duration:=20
60 minutes=20
Participant passcode:=20
76994298
Dial-in number:=20
1.972.995.7777=20
US Toll Free number:=20
1.877.561.6828=20
BlackBerry users, click this link to join your conference as a participant:
1.972.995.7777x76994298#
=A0
Depending on where you are dialing from, either your BlackBerry will pause =
and enter the passcode automatically or you will be prompted to click again=
 to dial the passcode.

Local and Global Access Numbers=20


Country=20
Dial-in number
Australia:=20
1800 636 843
Czech Republic:=20
242 430 350
China (Beijing):=20
From office dial 8-9957777 or 8784277=20
Beijing Out of Office dial 5878 4277
China (Shanghai):=20
From office dial 8-9957777 or 3073322=20
Shanghai Out of Office dial 2307 3322
China (Shenzen):=20
From office dial 8-9957777 or 6007877=20
Shenzen Out of Office dial 2600 7877
China (Other Cities):=20
From IP phone dial 8-9957777=20
Other cities - Non IP phone dial 021-23073322
Denmark:=20
8060 1400
Finland:=20
09 41333477
France:=20
0497 275888
Germany:=20
08161 803232
Holland:=20
030 2417490
India:=20
BSNL subscribers use 1800 425 9996 (Toll Free)
Airtel subscribers use 0008 009 861 212 (Toll Free)
From TI Campus use 89957777
Others use 2509 9555 (Landline within Bangalore) or
80 2509 9555 (Outside Bangalore)
Israel:=20
09 790 6715
Italy:=20
039 69061234 (039 is local city code not country code)
Japan:=20
From TI Campus use 8 995 7777=20
Outside TI use 03 4331 3777
Malaysia:=20
From IP phone dial 2643799=20
From Kuala Lumpur dial 4264 3799=20
Outside Kuala Lumpur dial (03)4264 3799
Norway:=20
2 295 8744
Philippines:=20
From Baguio City use 4471177=20
From Metro Manila area use 8702477
Singapore:=20
From IP phone dial 3894777=20
Outside TI use 6389 4777
South Korea:=20
From IP phone dial 5606998=20
From Seoul dial 5606998=20
Outside Seoul dial (02)5606998
Sweden:=20
08 58755577
Taiwan:=20
From IP phone dial 1363=20
From Taipei dial 2241 1363=20
Outside Taipei dial (02)2241 1363
Turkey:=20
Landline Only dial 0811 288 0001=20
then enter 877 633 1123=20
UK:=20
01604 663003
US:=20
972 995 7777 or 1877 561 6828

Recurring conferences=20
First scheduled conference:=20
Tue Jun 26, 2012
Recurrence frequency:=20
Weekly - Every 1 week(s) on Tuesday
Recurrence ends:=20
End on Fri Jun 21, 2013, 10:40 AM CDT




