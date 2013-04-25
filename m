Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FEFFE014DF
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 07:54:14 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Apr 2013 07:53:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,551,1363158000"; 
	d="scan'208,217";a="325189309"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga002.jf.intel.com with ESMTP; 25 Apr 2013 07:53:51 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 25 Apr 2013 07:53:51 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.227]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.111]) with mapi id
	14.01.0355.002; Thu, 25 Apr 2013 07:53:36 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "Petrisor, Ileana" <ileana.petrisor@intel.com>, "Damian, Alexandru"
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
	"Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "'Hudson, Sean'"
	<Sean_Hudson@mentor.com>, "Serban,
	Laurentiu" <laurentiu.serban@intel.com>, 
	"Burton, Ross" <ross.burton@intel.com>, "Mueller, Robert"
	<robert.mueller@intel.com>, "Arce Moreno, Abraham"
	<abraham.arce.moreno@intel.com>,
	'Ravi Vompolu' <Ravi.Vompolu@mathworks.com>, 
	"'Sadiq, Irfan'" <Irfan_Sadiq@mentor.com>, "Santana Lopez, Mario A"
	<mario.a.santana.lopez@intel.com>, "'achaudha@mvista.com'"
	<achaudha@mvista.com>, "Moisan, Radu" <radu.moisan@intel.com>, "Gavaz,
	Ionut
	A" <ionut.a.gavaz@intel.com>, "Popa, Valentin" <valentin.popa@intel.com>,
	"Moses, Fred" <fred.moses@intel.com>, "Iorga, Cristian"
	<cristian.iorga@intel.com>, "Lindner, MihaiX" <mihaix.lindner@intel.com>,
	"Proca, Andreea B" <andreea.b.proca@intel.com>, "Stanacar, StefanX"
	<stefanx.stanacar@intel.com>, "Stoicescu, CorneliuX"
	<corneliux.stoicescu@intel.com>, "Palalau, AlexandruX"
	<alexandrux.palalau@intel.com>, "'Butler,
	Paul'" <Paul.Butler@windriver.com>, 
	"Mirea, Viorel" <viorel.mirea@intel.com>, "Kamble, Nitin A"
	<nitin.a.kamble@intel.com>, "Szankin, Maciej" <maciej.szankin@intel.com>,
	"Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>, Olivia Salisbury
	<olivia.salisbury@tobias.tv>, 'Chris Kaminski' <chris.kaminski@tobias.tv>, 
	"'Maupin, Chase'" <chase.maupin@ti.com>, "Georgescu, Alexandru C"
	<alexandru.c.georgescu@intel.com>
Thread-Topic: Minutes: Yocto Project 1.4 release readiness meeting - 4/25/2013
Thread-Index: Ac5BxKRh9ErROSGjTcekilDy44uutg==
Date: Thu, 25 Apr 2013 14:53:35 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A718F41B2@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 25 Apr 2013 07:56:09 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Minutes: Yocto Project 1.4 release readiness meeting - 4/25/2013
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
X-List-Received-Date: Thu, 25 Apr 2013 14:54:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A718F41B2ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A718F41B2ORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
MarkH (also represents KevinM), Saul, Corneliu, AlexG, Cristiana, AlexD, La=
urentiu, Ionut, Jessica (also represents DaveST), Ross, BogdanM, Richard, C=
ristian, Song

Notes:

- We have all CCB members here or represented here.
- Review release criteria: please see: https://wiki.yoctoproject.org/wiki/Y=
octo_Project_v1.4_Status#Milestone_6.2C_1.4_release<https://wiki.yoctoproje=
ct.org/wiki/Yocto_Project_v1.4_Status>
- There are some failures on AB due to racing issues. So we did not have a =
completely green build. But these are random issue (4358), should not block=
 the release.
- Postinstall issues found by the community lately. We will address them in=
 1.5, but they should not block the release.
- 1.5 release criteria or QA test summary could include community feedback =
to reflect more of the community's opinion . Action item for Song: review 1=
.5 release criteria.
- CentOS should be tested more. Many commercial vendors are using CentOS. W=
ill consider this when we review the 1.5 release.

* Decision: 1.4 release is a go.

Thank you all, and congratulations to the team and everyone involved in thi=
s release!





--_000_7E680CB2A76BB8438D08CF13C09FC53A718F41B2ORSMSX108amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>Attendees:</div>
<div>MarkH (also represents KevinM), Saul, Corneliu, AlexG, Cristiana, Alex=
D, Laurentiu, Ionut, Jessica (also represents DaveST), Ross, BogdanM, Richa=
rd, Cristian, Song</div>
<div>&nbsp;</div>
<div>Notes:</div>
<div>&nbsp;</div>
<div>- We have all CCB members here or represented here.</div>
<div>- Review release criteria: please see: <a href=3D"https://wiki.yoctopr=
oject.org/wiki/Yocto_Project_v1.4_Status"><font color=3D"blue"><u>https://w=
iki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status#Milestone_6.2C_1.4_rele=
ase</u></font></a></div>
<div>- There are some failures on AB due to racing issues. So we did not ha=
ve a completely green build. But these are random issue (4358), should not =
block the release.</div>
<div>- Postinstall issues found by the community lately. We will address th=
em in 1.5, but they should not block the release.</div>
<div>- 1.5 release criteria or QA test summary could include community feed=
back to reflect more of the community's opinion . Action item for Song: rev=
iew 1.5 release criteria.</div>
<div>- CentOS should be tested more. Many commercial vendors are using Cent=
OS. Will consider this when we review the 1.5 release.</div>
<div>&nbsp;</div>
<div>* Decision: 1.4 release is a go. </div>
<div>&nbsp;</div>
<div>Thank you all, and congratulations to the team and everyone involved i=
n this release!</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A718F41B2ORSMSX108amrcor_--
