Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1277D4C800A1
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 17:36:07 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Jul 2011 15:36:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,210,1309762800"; d="scan'208";a="26428289"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 15 Jul 2011 15:36:07 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 15 Jul 2011 15:36:07 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.12]) with mapi id
	14.01.0289.001; Fri, 15 Jul 2011 15:36:06 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "Liu, Song" <song.liu@intel.com>, "'McCombe, Kevin'"
	<kevin.mccombe@windriver.com>, "Wold, Saul" <saul.wold@intel.com>, "Zhang, 
	Jessica" <jessica.zhang@intel.com>, "'deVries, Alex'"
	<Alex.deVries@windriver.com>, "'Polk, Jeffrey'" <jeff.polk@windriver.com>, 
	"'Hatle, Mark'" <mark.hatle@windriver.com>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Li, Susie" <susie.li@intel.com>, "Lock,
	Joshua"
	<joshua.lock@intel.com>, 'Bruce Ashfield' <bruce.ashfield@windriver.com>,
	"Zanussi, Tom" <tom.zanussi@intel.com>, "Hart, Darren"
	<darren.hart@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Stewart, David C"
	<david.c.stewart@intel.com>, "'Lieu.Ta@windriver.com'"
	<Lieu.Ta@windriver.com>, "'paul.anderson@windriver.com'"
	<paul.anderson@windriver.com>, "Osier-mixon, Jeffrey"
	<jeffrey.osier-mixon@intel.com>, "Dmytriyenko, Denys" <denys@ti.com>,
	"Kooi, 
	Koen" <k-kooi@ti.com>, "Wang, Shane" <shane.wang@intel.com>, "'Kridner, 
	Jason'" <jdk@ti.com>
Thread-Topic: Agenda: Yocto Technical Team - (July 19, 2011 8:00 AM-9:00 AM
	(UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMQz+Vcb5adCaOJEmTIlm2oR5X6A==
Date: Fri, 15 Jul 2011 22:36:05 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A061664@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A02E3CE@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A02E3CE@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 19 Jul 2011 09:20:39 -0500
Cc: 'Daniel Cauchy' <dcauchy@mvista.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Erway,
	Tracey M" <tracey.m.erway@intel.com>
Subject: Agenda: Yocto Technical Team - (July 19, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Fri, 15 Jul 2011 22:36:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Agenda:
=A0
- opens - 5 min=A0
- Review Yocto 1.1 M2 Release Criteria - 20 min (Song) See details at: http=
s://wiki.yoctoproject.org/wiki/Yocto_Project_v1.1_Release_Criteria
- Review M3 status and schedule - 10 min (Song)
- Discussion of using Weighted Defect density as one of the release criteri=
a: (4th graph at: https://wiki.yoctoproject.org/wiki/Yocto_Bug_Trend ) - 10=
 min
-  Opens - 10 min
  * Darren: documentation process for release, making sure we can update th=
e README.hardware after release if needed.
- Action Item Review - 5 min (Song)
=A0
Action item list:
  * Saul: talk to Jianjun, QA should work with developers to make sure we c=
an cover more distro testing (informal) before major release. Joshua and Da=
rren volunteers for some of these testing.
  * Song: check status with Jianjun on Stabilization tasks he owned.
  * Darren/Song: define deliverables of 'Fast boot time' for M3 and Yocto 1=
.1.
  * Saul: circulate the idea of having a Sprint B for M3 via emails.
  * Saul: check update commits (one release criteria)
  * Team: please take a look at the post 1.1 items on the wiki page and let=
 Song know if there is any comment or concerns.


Conference details=20
Conference name:=20
Yocto Technical Team
Conference date/start time:=20
Tue Jun 28, 2011 at 10:00 AM Central Daylight Time=20
Participants:=20
30
Duration:=20
60 minutes=20
Participant passcode:=20
49611427=20
Dial-in number:=20
1.972.995.7777=20
US Toll Free number:=20
1.877.561.6828=20
BlackBerry users, click this link to join your conference as a chairperson:
1.972.995.7777x67184230#
BlackBerry users, click this link to join your conference as a participant:
1.972.995.7777x49611427#
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
Tue Jun 28, 2011
Recurrence frequency:=20
Weekly - Every 1 week(s) on Tuesday
Recurrence ends:=20
End on Fri Jun 22, 2012, 10:40 AM CDT


