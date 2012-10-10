Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60AE5E013D2
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 16:47:44 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Oct 2012 16:47:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,567,1344236400"; d="scan'208";a="204106942"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 10 Oct 2012 16:47:43 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 10 Oct 2012 16:47:42 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.223]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.168]) with mapi id
	14.01.0355.002; Wed, 10 Oct 2012 16:47:41 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "Liu, Song" <song.liu@intel.com>, 'Anders Darander'
	<anders@chargestorm.se>, "Barros Pena,
	Belen" <belen.barros.pena@intel.com>, 
	"Bodke, Kishore K" <kishore.k.bodke@intel.com>, 'Bruce Ashfield'
	<bruce.ashfield@windriver.com>, 'Daniel Cauchy' <dcauchy@mvista.com>,
	"'deVries, Alex'" <Alex.deVries@windriver.com>, "'Dixon, Brad'"
	<Brad_Dixon@mentor.com>, "Dmytriyenko, Denys" <denys@ti.com>, "Erway,
	Tracey M" <tracey.m.erway@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Hart, Darren" <darren.hart@intel.com>, 
	"'Hatle, Mark'" <mark.hatle@windriver.com>, 'Jeremy Puhlman'
	<jpuhlman@gmail.com>, "Kridner, Jason" <jdk@ti.com>, "Li, Susie"
	<susie.li@intel.com>, "'Lieu.Ta@windriver.com'" <'Lieu.Ta@windriver.com'>, 
	"Lock, Joshua" <joshua.lock@intel.com>, "'McCombe, Kevin'"
	<kevin.mccombe@windriver.com>, "Moeller, Thorsten"
	<thorsten.moeller@intel.com>, 'Sanjay Raina' <sraina@mvista.com>,
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
	<keyur.r.patel@intel.com>, "'achaudha@mvista.com'" <achaudha@mvista.com>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	October 09, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNp0GifLzFZjge60mO5DcUMxt1Zw==
Date: Wed, 10 Oct 2012 23:47:40 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A4856F971@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 10 Oct 2012 16:52:14 -0700
Cc: "Palalau, AlexandruX" <alexandrux.palalau@intel.com>, "Mirea,
	Viorel" <viorel.mirea@intel.com>,
	SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, October 09, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 10 Oct 2012 23:47:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry for the late.=20

Attendees:
ScottR, Jessica, Beth, DaveST, PaulE, Richard, Sea, Fahad, DavidW,  Denys, =
AlexG, Ross, Song
=A0
Amit: MontaVista, based in India, Bangalore. Replacing Mark in this meeting=
 for MontaVista
Dave, Michael,=20
=A0
Minutes:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
  - RC4 is due out tomorrow. Larger, invasive less possibility going in. 3.=
4.10 kernel caused segfault on arm. We are going to move to 3.4.11. Master =
is still in bug fixing mode. At the moment we will take everything into the=
 release branch. Hoping to release RC4.
  - If you expect anything in the release, please get them in today. If you=
.
 - Medium+ bugs review: https://bugzilla.yoctoproject.org/buglist.cgi?bug_s=
tatus=3DNEW&bug_status=3DACCEPTED&bug_status=3DREOPENED&bug_status=3DNEEDIN=
FO&bug_status=3DWaitForUpstream&list_id=3D16013&priority=3DMedium%2B&query_=
format=3Dadvanced&target_milestone=3D1.3&target_milestone=3D1.3%20M1&target=
_milestone=3D1.3%20M2&target_milestone=3D1.3%20M3&target_milestone=3D1.3%20=
M4&target_milestone=3D1.3%20M5&target_milestone=3D1.3.1&target_milestone=3D=
1.3.2&order=3Dassigned_to%20DESC%2Cpriority%2Cbug_status%20DESC%2Cbug_id&qu=
ery_based_on=3D
=A0
3176: delay to 1.4. not doable, easy to workaround, release note this one.
1640: How to document, it will be wiki for 1.3 release
3080, release note.
3231, release note.
  - Non-bug issues: Paul to send song email.
=A0
* SWAT team rotation: Saul
* Opens - 10 min
* Team sharing - 20 min
  - Paul: documentation and bug fixes recently. Got some time to release th=
e build history tool. This is a little web app allows you to go through war=
ning, mark each one needing attention. Will send email today with more deta=
ils. Publish the meta-webserver layer. Apache, modphp, php myadmin. It's fu=
nctional, but there are some bugs. Still working on it. RP: QA can use this=
.=20
  - Michael: last week SSD upgrade on servers. worked with Beth on release =
prep. Working on some of the internal servers, space issues, etc.
  - Beth: Last week worked with Michael on external ABs. should speed up bu=
ild time a little bit. Working on 2 release script. 1.main YP release scrip=
t. It does major release. Related to the eclipse bug. Single push button. 2=
. release script for people using YP to build and release with GPL complian=
ce. Bring together all the source code, release, etc. together.=20
  - David Wolf: if you submit a patch, how do we know if it is applied. Sau=
l: we review the patches on the mailing list. Saul pull into Master under t=
est, then send to Richard. Richard pull them into master. There are times R=
ichard see something to be directly pulled in without MUT. You should see a=
 email if it's merged. If you don't see any response, ping it.=20
    . RP: for managing the balance of updating to the latest master and mai=
ntaining a queue of un-merged patches, recommend looking at Git, probably m=
aintaining a branch in git with master update/rebase and local fixes. If th=
e master does merge those patches, rebase.=20
    . Some fixes on master will be back ported to stable releases. The patc=
hes need to be based on master generally, then back ported. Read only http =
pull (Michael has been working on) will help.



