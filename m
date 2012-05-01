Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF05FE01374
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 16:11:58 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 01 May 2012 15:47:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="95236604"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 01 May 2012 15:47:57 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.19.17.221) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 1 May 2012 15:47:57 -0700
Received: from fmsmsx151.amr.corp.intel.com ([169.254.6.126]) by
	fmsmsx152.amr.corp.intel.com ([169.254.7.62]) with mapi id
	14.01.0355.002; Tue, 1 May 2012 15:47:57 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, May
	01, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNJ+xz9LXB+5yDxUSZfZMbVaofow==
Date: Tue, 1 May 2012 22:47:56 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A483BC60E@FMSMSX151.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, May 01, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 01 May 2012 23:11:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Michael, Scott, Saul, Paul, Richard, Jeremy, Tom, Jeff Polk, Jessica, Nitin=
, Josh, Song, Mark, ScottG
=A0
Agenda
* Opens collection - 5 min (Song)
* Yocto 1.2 status - 5 min (Song)
  - 1.2 was released yesterday afternoon. Congrats to everyone and thanks f=
or the team's hard word and great support from the community.
* Yocto 1.3 planning  - 10 min (Song/team)
  - Bugzilla, target version, priority, Time tracking. Michael will work wi=
th Saul on these issues.
  - this week the team is putting new features in Bugzilla and doing the es=
timation. Estimation is in 'perfect day's and is due by the end of this wee=
k.
  - Next week: will have the milestone schedule and assign features into mi=
lestones. Hopefully milestones will start in the week of 14th.=20
=A0
* Yocto 1.2.1 - Scott Garman=20
  - Scott is the maintainer for YP 1.2.1. Bugzilla target milestone (1.2.1)=
, low risk, plan to use 6-8 weeks before we have RC1 for 1.2.1
=A0
* SWAT team rotation: Jessica -> Paul
=A0
* Opens - 10 min
  - Schedule downtime on autobuilder (Michael): We have new hardware, need =
downtime (6 hour window), only the builders (does not include git repos). T=
he team is ok with this downtime this week.
  - Scott: hook up with Richard to get Poky repo synced up with docs. Offli=
ne
  - Paul: whiteboard field. We will use whiteboard for estimation before we=
 have a bugzilla field.=20
  - Jeremy: tag for bitbake for 1.2? Yes, we will have tag, Richard will ta=
ke care of it.
  - Richard: We got 1.2 release out now. Pull 1.3 patches and things togeth=
er. There are things that have gone into the master. We switched to gcc 4.7=
, eglibc 2.15. Poky-Tiny is failing with the switch, there are a couple of =
failures in a couple of BSPs, in general it's working. Master is open for d=
evelopment. Please fix bugs for 1.2.1, it will be nice to get them fixed on=
ce and for all. Master-next is used to test things that will go into master=
.
=A0
* Team Sharing - 20 min
 - ScottG: past week for 1.2.1, setting up machines, in the process of work=
ing on adding Zigbee support for FRI II BSP. No ETA yet on Zigbee.
 - Nitin: last working eglic and gcc, fixing bugs, seeing some autoconf iss=
ues. Would like to get some help on this.=20
 - Jessica: 1.2 wrap up, getting ready for 1.2.1 and 1.3. Bugzilla category=
 re-org. Now looking into 1.3 items.=20
 - Tom: Looking at internal BSPs and bug fixing.
 - Jeremy: Working on integrating 1.2, Will work with Paul on some issues.
 - Richard: Working on planning issue for 1.2.1 and 1.3. Others already men=
tioned in the open.=20
 - Paul: Came back from a short holiday. Working on something left from the=
 design team. Probably will throw them out to the community very soon (web =
hob). Bug fixes and 1.3 planning.
  - Saul: working on 1.2, planning on 1.2.1, pulls in master, 1.3 planning,=
 build appliance image, getting it ready for distribution.
  - ScottR: Last week spent most of time working through development manual=
, fixing problems and pushing into master. Website for 1.2. this week to ge=
t repo settled out with Richard, continue on some other manuals such as ADT=
.
  - Michael: Spent last week for buzgilla, did the first pass of upgrade. F=
ixed problems. Enabled Wiki plugin. This week will be the hw upgrade, finis=
hing the bugzilla cat re-org.=20




