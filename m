Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BD2CE00747
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 11:01:57 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Aug 2013 11:01:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,827,1367996400"; 
	d="scan'208,217";a="382209380"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga002.fm.intel.com with ESMTP; 06 Aug 2013 11:01:47 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 6 Aug 2013 11:01:44 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.194]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.180]) with mapi id
	14.03.0123.003; Tue, 6 Aug 2013 11:01:43 -0700
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
	<keyur.r.patel@intel.com>, "'achaudha@mvista.com'" <achaudha@mvista.com>,
	"Popa, Valentin" <valentin.popa@intel.com>, "Moses, Fred"
	<fred.moses@intel.com>, "Iorga, Cristian" <cristian.iorga@intel.com>,
	"Palalau, AlexandruX" <alexandrux.palalau@intel.com>, "'Butler, Paul'"
	<Paul.Butler@windriver.com>, "Mirea, Viorel" <viorel.mirea@intel.com>, 
	"Kamble, Nitin A" <nitin.a.kamble@intel.com>, "Szankin, Maciej"
	<maciej.szankin@intel.com>, "Moisan, Radu" <radu.moisan@intel.com>,
	"Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>, Olivia Salisbury
	<olivia.salisbury@tobias.tv>, 'Chris Kaminski' <chris.kaminski@tobias.tv>, 
	"'Maupin, Chase'" <chase.maupin@ti.com>, "Georgescu, Alexandru C"
	<alexandru.c.georgescu@intel.com>, "Gavaz, Ionut A"
	<ionut.a.gavaz@intel.com>, "Pruteanu, Codrin C"
	<codrin.c.pruteanu@intel.com>, "Letnes, Thaddeus C"
	<thaddeus.c.letnes@intel.com>, "Ong,
	Boon Leong" <boon.leong.ong@intel.com>, 
	"Seow, Chen Yong" <chen.yong.seow@intel.com>, "Haw, Foo Chien"
	<foo.chien.haw@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	August 06, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac6Szv2EmxKJn4HiT5+/GpGeBhJY7A==
Date: Tue, 6 Aug 2013 18:01:42 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A7EEB0251@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 06 Aug 2013 11:18:32 -0700
Cc: 'Chris Kaminski' <chris.kaminski@tobiasandtobias.com>
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, August 06, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 06 Aug 2013 18:01:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A7EEB0251ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEB0251ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Cristiana, ScottR, PaulE, AlexG, LaurentiuP, MarkH, Cristian, RossB, Saul, =
Bruce, Eren, MatthewW, JeffP, Bj=F6rnS, Nitin, Song

Agenda:

* Opens collection - 5 min (Song)
* 1.4.2 (Paul):
  - testing a set of 12 additional patches. Anticipating this is pretty muc=
h the last set of changes unless someone gets back to me before Monday. Loo=
king good at the moment.
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  - Bug fixing: we resolved 37 bugs in the past week, it was a great week b=
ased on this number. But our WDD number is still elevated. Our M4 and M5 fo=
cus will be bug fixing for the team. bug fixing and package update is our t=
op priority for the rest of 1.5 release. Any questions, please let me know.
  - QA report will be out today in email. It's available here: https://wiki=
.yoctoproject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1
  - Will see if we need M3 RC2 after seeing M3 QA report.
* SWAT team rotation: Jessica -> Ross.
* Opens - 10 min
* Team Sharing - 20 min
  - Paul: fixing some bugs on my list for a while. BBapend, commercial lice=
nse flag, etc. new recipes for those. Running test on some hardware. Debugg=
ing it. Looking shortly at another feature item. Taking out a package if no=
t required.




--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEB0251ORSMSX108amrcor_
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
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<div>Attendees:</div>
<div>Cristiana, ScottR, PaulE, AlexG, LaurentiuP, MarkH, Cristian, RossB, S=
aul, Bruce, Eren, MatthewW, JeffP, Bj=F6rnS, Nitin, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* 1.4.2 (Paul):</div>
<div>&nbsp; - testing a set of 12 additional patches. Anticipating this is =
pretty much the last set of changes unless someone gets back to me before M=
onday. Looking good at the moment. </div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; - Bug fixing: we resolved 37 bugs in the past week, it was a gr=
eat week based on this number. But our WDD number is still elevated. Our M4=
 and M5 focus will be bug fixing for the team. bug fixing and package updat=
e is our top priority for the rest of
1.5 release. Any questions, please let me know. </div>
<div>&nbsp; - QA report will be out today in email. It's available here: <a=
 href=3D"https://wiki.yoctoproject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass=
_Yocto_1.5_M3.rc1"><font size=3D"2" color=3D"blue"><span style=3D"font-size=
:10pt;"><u>https://wiki.yoctoproject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pa=
ss_Yocto_1.5_M3.rc1</u></span></font></a></div>
<div>&nbsp; - Will see if we need M3 RC2 after seeing M3 QA report.</div>
<div>* SWAT team rotation: Jessica -&gt; Ross.</div>
<div>* Opens - 10 min </div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - Paul: fixing some bugs on my list for a while. BBapend, comme=
rcial license flag, etc. new recipes for those. Running test on some hardwa=
re. Debugging it. Looking shortly at another feature item. Taking out a pac=
kage if not required. </div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEB0251ORSMSX108amrcor_--
