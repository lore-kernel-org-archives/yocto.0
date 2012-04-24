Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7221E0044D
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2012 11:21:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 Apr 2012 11:20:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="133328701"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga001.jf.intel.com with ESMTP; 24 Apr 2012 11:20:48 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 24 Apr 2012 11:20:47 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.159]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.220]) with mapi id
	14.01.0355.002; Tue, 24 Apr 2012 11:20:47 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, April
	24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNIkb4ShBvS8Q3eE2DF+nn47Ushw==
Date: Tue, 24 Apr 2012 18:20:46 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A4836501A@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, April 24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 24 Apr 2012 18:21:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:=20
Mark, Jeremy, Dave, Saul, Michael, Richard, Darren, Tom, Jessica, Jeffro, P=
aul, Jeff, Bruce, Sean, Matthew, Song
=A0
Agenda
* Opens collection - 5 min (Song)
=A0
* Yocto 1.2 M4 status - 15 min (Song/Team)
  - Thanks for the team's hard work and great help from the community for 1=
.2 release.
  - The latest build has all key fixes for 1.2, QA started full pass testin=
g. Should be completed by this Saturday. (4/29-/5/1, Shanghai team holiday)=
. If things go well, we will have the release readiness meeting next Monday=
 and release on the same day (April 30th).
  - We will keep watching the QA progress until we have the final QA report=
.
=A0
* Yocto 1.3 planning - processes (Song)
  - Feel free to put feature requests in Bugzilla as enhancement bugs.
  - the 1.3 feature list wiki page is being worked on to sync with the Bugz=
illa dynamically.=20
  - Two process docs will go out for review. One short one for reference. T=
he long one is for more background and detail.
=A0
* SWAT team rotation: Beth -> Jessica.
=A0
* Opens - 10 min
  - 1.2 change log: a week ago, went through git history, come up with a li=
st of changes. It's sent out to the public mailing list. Saul will talk to =
Beth about this. Beth can take over when Paul is on vacation.
=A0
* Team Sharing - 20 min
  - Matthew: nothing to share. Freescale BSPs release sometime in May. Have=
 not synced with ARM, will be doing that.
  - Sean: We are in the planning phase for the next release. For more activ=
e involvement in YP.
  - Bruce: Working on bug fixing with 3.2 kernel. Spending time on 3.4 kern=
el.=20
  - Jeff: Nothing
  - Paul: Fixing bugs for the release. One won't make 1.2. 1858, we underst=
and the problem now. It's basically 2 bugs.
  - Jeffro: There is a group creating BSP for Raspberry Pi, Qt. 4-5 people.=
 Paul agreed to help them. Updated YP statistics wiki page (email on the pu=
b mailing list). We can use the BSP mailing list to get more people involve=
d. Send them invitation from the list.
  - Jessica: working on bug triage, other things for 1.2 release. Working w=
ith Michael to get Bugzilla re-orged. 1.3 planning for ADT.
  - Tom: Get back to BSPs, bug fixing.
  - Darren: Some internal BSP week, focusing on FRI II BSP.=20
  - Richard: Tied up with the 1.2 release. Bug fixing, pseudo issue, etc. f=
ound problems with qemu emulation, fixed the problem. Debug build issues, m=
ake 1.2 high quality. Started another branch to collect patches. Not openin=
g up the master for now. Hope to get some QA on the branch after 1.2 releas=
e.=20
   - Michael: worked on bugzilla re-org. working with Jefro, Song on some i=
ssues. General maintenance. Continue to work on monitoring upgrade. Plannin=
g for the week after the release to upgrade the infrastructure. Bugzilla up=
grade could be done first thing after the release. Found some issues in bug=
 statistics, will work on that this week.=20
   - Saul: working with the team and Richard on 1.2. Looking at pacjkage up=
date. Things for the master next. This week, more of the same. Wrapping up =
1.2. Scott will be the maintainer for 1.2.1.=20
   - Jeremy: Working on the current release.
   - Mark: working on fixing update alternative staff. Upgrading RPM to the=
 latest RPM5 version.=20


