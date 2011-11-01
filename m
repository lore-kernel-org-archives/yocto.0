Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 015D8E005BB
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2011 10:17:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Nov 2011 10:17:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,439,1315206000"; d="scan'208";a="80121121"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 01 Nov 2011 10:17:06 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 1 Nov 2011 10:16:54 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.38]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.240]) with mapi id
	14.01.0323.003; Tue, 1 Nov 2011 10:16:25 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - Tuesday, November 01,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
Thread-Index: AQHMmLoMJq+AM1uluUqL2Cdvb7Xm5g==
Date: Tue, 1 Nov 2011 17:16:53 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F6CFE1@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - Tuesday, November 01, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
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
X-List-Received-Date: Tue, 01 Nov 2011 17:17:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Beth, Jessica, Tom, Matthew, Joshua, Mark, Jeff,  Bruce, Richard, Saul, Dar=
ren, Song
=A0
Agenda:
=A0
Action items:
1. Song will work with Jiajun to get the QA plan ready for point releases.
2. Matthew will send out patch recommendations for Yocto 1.1.1 to the maili=
ng list.
3. Saul will work with the team to complete the planning for the meta core =
team.
4. Richard will review unsorted features and prioritize them.
5. Song will change 1.2 schedule and extend M1, M3, M4 by one week due to n=
o ELC in April next year.
6. Song to work with Shanghai team to break epic features into smaller ones=
.
=A0
=A0
* Opens collection - 5 min (Song)
* Yocto 1.0.2 and 1.1.1 point release update - 5 min (Josh)
  - Haven't been any change since last time we check (2 weeks ago).
  - 1.0.2: target Mid Nov. , Bruce will get kernel update by the end of thi=
s week. Song will talk to Jiajun to have the QA take to Jiajun on the testi=
ng. Still on Track.
  - 1.1.1: Target the end of Nov to early Dec. Matthew has some patches, wi=
ll put on the mailing lists. Start pulling things into the branch (Edison b=
ranch).
* Yocto 1.2 planning and M1 planning - 20 min (team)
  - Feature planning for some features still need to be completed
  - unsorted features need to be reviewed
  - For those who have completed planning, please go ahead with the design =
process and development.=20
  - Kernel team has done a great job for the planning.
  - The design process: developers initiate, talk to various stakeholders, =
features need to be signed off by team leads and architect/Richard. Design =
process checklist.
  - Status needs to be updated by feature owners every Monday on the white =
board after priority and estimate.
  - Estimate: purpose, how we are going to use it: individual can use it fo=
r your milestone planning. But won't be used by overall planning or to calc=
ulate everyone's workload. After a couple of milestones, estimation will ge=
t better and will be used for next milestone planning, but will be adjusted=
 all the time along the way, feel free to update any time. Another use of e=
stimation is to find our epic features. Epic features need to be divided in=
to smaller ones. Suggest to be less than 10 PD.
  - Epic features need to be divided into smaller ones (< 10 PD), before sc=
heduling it for milestones.
  - Focus on a couple of features at a time until it's in master.
  - Stabilization weeks: 'allow' time to fix bugs. But if you don't have an=
y, please continue with features development. Priority during these weeks i=
s to resolve build failures and bug fixing.=20
  - Don't put off bug fixing during development weeks.
  - Release boundary: We will release in April and October every year. The =
exact date of a release will vary depending on each release's circumstances=
.=20
=A0
* Opens - 10 min
  - Open bug count (RP): The # bug is going up, people should pay attention=
 and get more bugs fixed is possible.
=A0
* Weekly team sharing (20 min)
  - Darren: Good reception in ELCE, RT workshop, lots of interests. Lot mor=
e interest of how to use the project than what the project is, we are makin=
g progress.
  - Saul: Came back from ELC, working on planning with the team. No blocker=
.
  - Richard: ELCE last week, trying to fix ongoing breakage. Catch up with =
bug patches. Email access has problem due to Linux Foundation network chang=
e. Remind me if there is anything I have not responded.
  - Bruce: Sick last week, working on point release update, working on the =
1.2 features.
  - Jeff: vacation last week.
  - Mark: investigation with x32 stuff, there is no prelink. Re-syncing to =
be upstream cause some problem. Two different issues on psudo. ETC for the =
fixes of these by the end of this week.
  - Matthew: Nothing this time
  - Tom: Working on meta-intel. Working through some packages, building iss=
ues, etc. review some documentation. ECG support.
  - Jessica: ELC last week, sync with people on Linux tools, people show st=
rong support of what we are doing. Sync up with 1.2 planning this week.=20
  - Beth: last week 1.2 planning, some documentation work, fixing a build s=
tatistic bug, fix by the end of week.


