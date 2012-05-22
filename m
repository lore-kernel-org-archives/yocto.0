Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65770E01396
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 12:29:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 May 2012 12:29:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="147091170"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga002.jf.intel.com with ESMTP; 22 May 2012 12:29:10 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 22 May 2012 12:29:09 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.121]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.219]) with mapi id
	14.01.0355.002; Tue, 22 May 2012 12:29:09 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, May
	22, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNOFEo3IbE8Kd0tkKKnPEYoHlkJQ==
Date: Tue, 22 May 2012 19:29:08 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A483F6A3A@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, May 22, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 22 May 2012 19:29:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saul, Jessica, Paul, Belen, Jim, Alex, Mark, Tom, ScottG, Richard, ScottR, =
Denys, Darren, Michael, Laurentiu, Beth, Josh, Chris, Noor, Jefro, Cristian=
, Song
=A0
Alex: Dev manager for the team in Romania, happy to be involved. All team m=
embers should be able to join next Tuesday. Alex can be the contact person.
=A0
Agenda
* Opens collection - 5 min (Song)
* 1.2.1 update - 10 min (ScottG)
  - 27 bugs fixed, 20 bugs remaining, target for RC1, June 18th,=20
  - taking patches into my own contrib branch, will send out email to oe-co=
re and yocto mailing, asking the community how this process should work, sc=
ott is selecting patches for the release currently.
  - When we can have access to a stable release for testing, anyone who are=
 interested can do it now, rebasing may destabilize it for a while though.=
=20
* 1.1.2 update - 10 min (Josh)
  - Have a branch, there are 1 issues cannot be reproduced. There's another=
 reported by Mark, not sure if this can be in 1.1.2. We already have all th=
e fixes for this release. Will have the build ready in a week or so.=20
  - QA testing: QA will need to find time testing this release after the bu=
ild is ready.
* Yocto 1.3 status  - 10 min (Song/team)
  - 1.3 feature list: https://wiki.yoctoproject.org/wiki/Yocto_1.3_Features=
=20
    * For all P1 items, now we have (p1) on the bug white board. We will di=
scuss on how we should use the priority field of the bug.
    * Please schedule all P1 features/tasks for 1.3 milestones (M1-M4)
=A0
  - 1.3 schedule: https://wiki.yoctoproject.org/wiki/Yocto_1.3_Schedule=20
    * We have a lot more items scheduled for M3 and M2 than M1. M4 looks fi=
ne.
    * Bigger items (> 5D) should be divided into smaller ones (<=3D5D), so =
that we can have better understanding on these items and deliver them more =
evenly in each milestone. This is especially for P1 items.      =20
=A0
  - 1.3 status: https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Statu=
s=20
    * Please update the status for all bugs that you are currently working =
on in the 1.3 schedule by every Monday 9:00AM your timezone.
=A0
=A0
* SWAT team rotation: Darren -> Beth
* Opens - 5 min
  - Saul: Syncing up on master build with Beth and others on IRC/Jabber
  - Mark: Working on update alternative change, the entire system is modifi=
ed. It's changed to link renaming. Fairly large submit in the next day or s=
o. Fixed a lot of things in RPM case.
  - Richard: travelling last week. There has been changes for autobuolder i=
nfrastructure, not stable at the moment. This week will focus on where we a=
re for master and get patched merged and build stabilized. Figure out where=
 we are, what are the issues and then address them.
  - Darren: meta-intel is going to be released a few weeks after YP release=
. ETA, end of May for QA testing. The last 10% of FRI II turns out to be a =
lot more. Noor: do we have Crossville BSP? Tom: We can have it for 1.3 if w=
e can find hardware. Song will look into the hardware availability. =20
  - Michael: moving home directory on autobuilder to shared storage. Sent a=
n mail already and will send update.
  - Beth: autobuilder downtime this Friday. Will sync on IRC.
 =20
* Team sharing - 20 min=20
 - Michael: AB development cluster for Beth is ready.
 - Alex: Romania team is working on updating package.
 - Belen: will there be people working on HOB in the Romania team. Alex: ye=
s. Will sync up with Belen.




