Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E5DAE01515
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 14:45:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 May 2013 14:45:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,716,1363158000"; 
	d="scan'208,217";a="341343012"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga002.fm.intel.com with ESMTP; 21 May 2013 14:45:12 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.51]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.15]) with mapi id
	14.03.0123.003; Tue, 21 May 2013 14:44:35 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "Petrisor, Ileana" <ileana.petrisor@intel.com>, "Damian, Alexandru"
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
	<achaudha@mvista.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, May
	21, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac5WbFuKSZUaWDL0SgGqPDM6BXU95g==
Date: Tue, 21 May 2013 21:44:34 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A71912386@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 21 May 2013 14:47:35 -0700
Cc: "Szankin, Maciej" <maciej.szankin@intel.com>, "Palalau,
	AlexandruX" <alexandrux.palalau@intel.com>,
	'Chris Kaminski' <chris.kaminski@tobias.tv>, "'Maupin,
	Chase'" <chase.maupin@ti.com>, "Mirea, Viorel" <viorel.mirea@intel.com>,
	SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>,
	"Pruteanu, CodrinX C" <codrinx.c.pruteanu@intel.com>, "Damian,
	Alexandru" <alexandru.damian@intel.com>,
	Olivia Salisbury <olivia.salisbury@tobias.tv>
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, May 21, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 21 May 2013 21:45:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A71912386ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A71912386ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saul, Sean, ScottR, MarkH, Kevin, Nitin, LaurentiuP, Tom, Cristian, JeffP, =
PaulE, RichardP, AlexD, Belen, Ross, Beth, Corneliu, Bj=F6rnS, Song

Agenda:

* Opens collection - 5 min (Song)
* 1.3.2 status (Ross)
  - Everything looks fine in testing. QA report is already out.
  - Beth needs release note: feature and know issues. Ross will get that th=
is afternoon.
* 1.4.1 status (Paul)
  - Sent out tested patches series. One sent out to bitbake list, others se=
nt to oe-core mailing list. There is one extra patch. Pending review. There=
 will at least one more bounce. Still have 5 bugs plus 1 doc bugs. Looking =
fine for June 19th RC1.
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  . Open Bug#, WDD looks fine. M1 progressing as normal.
  . M1 dates: feature complete - 6/2. RC1 - 6/5
* SWAT team rotation: Paul -> Ross
* Opens - 10 min
* Team Sharing - 20 min
  - Beth: last week spent some time with Women Outreach Program interns. We=
 will have an intern for the next 3 month starting in June. Should be worki=
ng on security stuff.
  - Saul: M1 gcc 4.8 updated. Mostly there. One outstanding issue. Sent an =
email to oe-core list. Bruce does not have cycles for this. Anyone can help=
? Will be travelling next week to LinuxCon Japan with ScottG and Jessica.
  - MichaelH: installed 10Gbits network card for our storage backend. Elimi=
nates the network problem. Will be adding more storage capacity to accommod=
ate growing data. Having this network update to help that. OE mailing lists=
 are on YP hardware.
  - RP: looking at some bitbake changes, need re-architecture, task configu=
ration around the server. There are some patches on the mailing list now. H=
ash cut down to 10 chars from 40 chars.



--_000_7E680CB2A76BB8438D08CF13C09FC53A71912386ORSMSX108amrcor_
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
<div>Saul, Sean, ScottR, MarkH, Kevin, Nitin, LaurentiuP, Tom, Cristian, Je=
ffP, PaulE, RichardP, AlexD, Belen, Ross, Beth, Corneliu, <span style=3D"ba=
ckground-color:#F0F7FF;">Bj=F6rnS, Song</span></div>
<div><font face=3D"Calibri">&nbsp;</font></div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* 1.3.2 status (Ross)</div>
<div>&nbsp; - Everything looks fine in testing. QA report is already out.</=
div>
<div>&nbsp; - Beth needs release note: feature and know issues. Ross will g=
et that this afternoon.</div>
<div>* 1.4.1 status (Paul)</div>
<div>&nbsp; - Sent out tested patches series. One sent out to bitbake list,=
 others sent to oe-core mailing list. There is one extra patch. Pending rev=
iew. There will at least one more bounce. Still have 5 bugs plus 1 doc bugs=
. Looking fine for June 19th RC1.</div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; . Open Bug#, WDD looks fine. M1 progressing as normal. </div>
<div>&nbsp; . M1 dates: feature complete - 6/2. RC1 - 6/5</div>
<div>* SWAT team rotation: Paul -&gt; Ross</div>
<div>* Opens - 10 min </div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - Beth: last week spent some time with Women Outreach Program i=
nterns. We will have an intern for the next 3 month starting in June. Shoul=
d be working on security stuff.</div>
<div>&nbsp; - Saul: M1 gcc 4.8 updated. Mostly there. One outstanding issue=
. Sent an email to oe-core list. Bruce does not have cycles for this. Anyon=
e can help? Will be travelling next week to LinuxCon Japan with ScottG and =
Jessica.</div>
<div>&nbsp; - MichaelH: installed 10Gbits network card for our storage back=
end. Eliminates the network problem. Will be adding more storage capacity t=
o accommodate growing data. Having this network update to help that. OE mai=
ling lists are on YP hardware.</div>
<div>&nbsp; - RP: looking at some bitbake changes, need re-architecture, ta=
sk configuration around the server. There are some patches on the mailing l=
ist now. Hash cut down to 10 chars from 40 chars.</div>
<div><font face=3D"Calibri">&nbsp;</font></div>
<div><font face=3D"Calibri">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A71912386ORSMSX108amrcor_--
