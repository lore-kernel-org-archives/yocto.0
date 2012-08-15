Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0574E01382
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 23:10:10 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Aug 2012 23:10:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,771,1336374000"; d="scan'208";a="201334062"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 14 Aug 2012 23:10:08 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 14 Aug 2012 23:10:07 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.3]) with mapi id
	14.01.0355.002; Tue, 14 Aug 2012 23:10:06 -0700
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
	<thorsten.moeller@intel.com>, "'morvek@mvista.com'" <'morvek@mvista.com'>, 
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
	<osvaldo.calles.palacios@intel.com>, "Ortega Garcia, Adrian"
	<adrian.ortega.garcia@intel.com>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	August 14, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNeqydlA3Y7b9shEe4NYnoa4iGLg==
Date: Wed, 15 Aug 2012 06:10:05 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A48513FB0@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 16 Aug 2012 08:37:10 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, August 14, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 15 Aug 2012 06:10:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Mark, Jessica, Ross, Beth, Saul, Kevin, MichaelH, JeffP, Nitin, Dave, Laure=
ntiuS, Paul, Richard, ScottR, ChrisL, Bogdan, LaurentiuP, Bruce, Sean, Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
=A0
    -QA(Laurentiu): tested on the master last week. Have some bugs opened. =
No issue on qemu, HOB is clear, ADT has more issue. Most of the issues are =
in core build system. Will start testing on RC1 this week.
     Beth: which build did you test? Laurentiu: used some partial build and=
 master. As long as we know the commit, we can start testing.=20
    - Release (Beth): ab/1.3 status
     .  ab, one of ab's is not working well, will work on this today. There=
 is a bug last week caused problem, has been corrected, will push that out =
to AB today.
     .  1.3 M3 is building on a new RC. So far so good, no major issues.
    - Status wiki page updated. Got CCB approval for high items we moved fr=
om M3 to future milestones.=20
    - Bug trend: open above-medium bugs are going up. There is a steeper up=
tick this week, that is due to our priority change to use new settings. Wou=
ld like to ask the team/community to focus more on bug fixing.  If anyone i=
n the community has any free cycle, please try to help fix any bug you can =
help.
   =20
* SWAT team rotation: Paul -> Jessica=20
  - 4 new members joined: LaurentiuP, LaurentiuS, MihaiL, StefanS
=A0
* Opens - 10 min
Richard: Bitbake console UI change=20
  - heads-up, this is about knotty and knotty-2, the idea is to fix that an=
d make it a default. We talked about it in 1.2. Now we would like to make i=
nto 1.3. Plan is to get this in by the end of the week.=20
=A0
=A0
=A0
* Team sharing - 20 min
=A0
Michael: last week moved all public ip's to new spaces, which gave us bette=
r protection. Had to work on wired hours. 4am. Working with Beth to fix abs=
, documented how and why, trying to make more things automatic. Collaborati=
ng with laurentiuP on bug statistics. Updated all the kernels for service o=
riented machines. Bugzilla has issues with some queries. Coming week, solvi=
ng AB scripts and IRC bugs.
=A0
Saul: take the next batch in the next 24 hours, running a little behind on =
this. Has been dealing with issues with 1.3 release. =A0
=A0
Paul: worked on swat tasks last week, diagnosing issues. This week back to =
general bug fixing. Will send out an RFC for reworking some task recipes to=
 make them more useful. If you have any suggestions, please let me know. Fe=
edback we got: existing task recipes are not very useful. So will do some a=
nalysis and see what's missing. One obvious thing is that Obsolete tasks wi=
ll be pulled out. Sean: a couple of guys in mentor are working on this. In =
a process integrating different things into Yocto.. Will collaborate more o=
n this.




