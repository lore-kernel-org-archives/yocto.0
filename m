Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2B24E0140E
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 14:25:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 May 2012 14:25:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="138812299"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by orsmga001.jf.intel.com with ESMTP; 09 May 2012 14:25:18 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 9 May 2012 14:25:18 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.121]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.219]) with mapi id
	14.01.0355.002; Wed, 9 May 2012 14:25:18 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, May
	08, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNLio7uq1u1SlTN0CIzptkJpBB2g==
Date: Wed, 9 May 2012 21:25:17 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A483EE61A@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, May 08, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 09 May 2012 21:25:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Darren, Saul, Beth, Jessica, Richard, Michael, ScottR, ScottG, Mark, Sean, =
Tom, Laurentiu, Joshua, Paul, Jeff, Bruce, Jeremy, Song
=A0
Agenda
* Opens collection - 5 min (Song)
* 1.2.1 update:=20
  - Bug fixing are coming in
  - 31 open for 1.2.1 14 fixed (a few of them are in 1.2, some duplicate), =
6 of them have code fixes.
  - We need more process definition as how this should work. There is a wik=
i: Yocto point development workflow. Scott will send it to the public maili=
ng list.
  - RP: a couple of issues we don't have good handle: fetcher failure & ?. =
3-4 for 1.2.1 bugs.
=A0
* Yocto 1.3 planning  - 10 min (Song/team)
  - Features estimate are mostly done, Mark was on vacation, estimate will =
be done this week. Schedule will be done this week, process will be reviewe=
d internally and then reviewed by the public.
* SWAT team rotation: Paul -> Saul
* Opens - 10 min
  - Master status (RP): various issues on the master, Koen's patches, etc. =
who is responsible for debugging and fixing the problem? Gcc4.7 , ppc64, Co=
ntinue merging patches. Building and testing with autobuilder. Dividing pat=
ches into different groups/branches for isolated testing.
  - Autobuilder downtime (Beth/Michael):=20
    - Michael: working hard on this for a while, 16 additional TB on auto b=
uilder, faster disk, going through AB, upgrading to a new set of os's. New =
DNS entries. More robust, more space. 4 build slaves available, 3 of them h=
ave pending upgrade to go.
    - Beth: Get a new development cluster with hardware upgrade. Master sho=
uld be up today. Should be able to start building sometime today. Working o=
n the shared states bug (1938)
    - RP got access denied this morning. Michael will work it out.
  - Josh: 1.1.2 release:=20
    - Been working on an Edison branch. Sent an email a couple weeks ago, s=
ome bugs are fixed. Been testing, especially in useradd, sstate area. Will =
review past release notes and make sure necessary known issues are addresse=
d.
    - Communicated with Matthew on this release already.
* Team Sharing - 20 min
  - Jeremy: None this week
  - Bruce: in a different time zone last week, slow on merging some patches=
. There are some patches ready for merge now. getting things for 1.3. Tree =
manipulation, kernel specifics. Waiting for announcement LTSI, may lock ker=
nel version early for 1.3. there still will be both dev kernel and stable v=
ersion.=20
  - Paul: working on a couple of things: file checksums, reducing the numbe=
r host prerequisites, uncovered some host contamination issue. Been a valua=
ble exercise. Will continue  this week.
  - Josh: Edison stable release 1.1.2, nativesdk packages, need to sync wit=
h paul for host dependency, continue bug testing
  - Tom: BSP work and 1.3 planning.
  - Sean: established a meta-mentor git repo, transitioning things from yoc=
to.org to that. Would like to talk with RP pn host contamination. Starting =
work on 1.3, contribute to 1.3, very small team.
  - Mark: upgrading RPM to 5.4.9. Nothing major from usability will change.=
 Working with RPM maintainer to resolve licensing issues. ETA end of next w=
eek. Upgrade zipper at the same time, having problems, related c++ lib, boo=
st, gave up for now , will come back in a couple weeks. Automated script ge=
neration update alternatives.
  - ScottG: 1.2.1 work, process doc, Linux zigbee is being integrated, seem=
s to compile, small, install issues.
  - ScottR: clean up the area we hold the docs on. Now we have all the rele=
ases setup correctly. Discovered tons of bugs and fixed them. Paul helped f=
ixed some bugs. Worked on examples. This week will be down the bug Path
  - Michael: started with Bugzilla upgrade. Hardware upgrade, Oss Bios up t=
o date. Continue hardware upgrade then go back to Bugzilla category-reorg, =
ETA Friday for bug reclassification.=20
  - Richard: Ongoing improvement on oe-core, fixing master problems, unit t=
esting of bitbake. Put some basic tests in place. Some issues in bitbake ve=
rsion comparison. Continue fetcher, the test framework, 1.3 planning.
  - Jessica: 1.3 planning, starting 3-5 bug fixes. Loose end bugs, 1.2.1 bu=
gs. After this will be 1.3.
  - Beth: planning, licensing optimization issue. New description (categori=
es) for bugzilla upgrade.
  - Saul: doing 1.3 planning , bug scrub with Jessica/Richard, pull request=
, package updates, patch upstreaming
  - Darren: mostly BSP work, 1.3 planning, there are some FRI II BSP update=
s, sometime today to get the accelerometer working. A bit of time for bitba=
le script to automate some tasks.=20
=A0

