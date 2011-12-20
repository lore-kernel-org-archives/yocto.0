Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4288E00305
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 11:28:34 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Dec 2011 11:28:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="87806054"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 20 Dec 2011 11:28:33 -0800
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 20 Dec 2011 11:28:33 -0800
Received: from orsmsx102.amr.corp.intel.com ([169.254.1.40]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.47]) with mapi id
	14.01.0355.002; Tue, 20 Dec 2011 11:28:33 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - Tuesday, December 20,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHMv02PYe/1DRzwjEqqWOuKTA4m4A==
Date: Tue, 20 Dec 2011 19:28:31 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A25792C2C@ORSMSX102.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - Tuesday, December 20, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 20 Dec 2011 19:28:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Paul, Beth, Saul, Josh, John Cherry, ScottR, Richard, Tom, Jessica, Jeff, S=
ean, Song
=A0
New action item list:
  - Mark will review unsorted features from Wind River team and try to have=
 them scheduled (WIP, finalizing it.)
  - Song and Saul to follow on Scott Garmen's M2 schedule conflict.
=A0
Agenda:
* Opens collection - 5 min (Song)
=A0
* Yocto 1.1.1 point release update - 10 min (Josh)
  1.0.2 released? Any progress for 1.1.1? Targeting the end of Jan.?=20
  - Branch together, some issues, most are fixed. You are targeting Mid-Jan=
.
=A0
* Yocto 1.2 M1 release readiness - 10 min (Team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
  - Wait for Jiajun's full test report for release readiness.
=A0
  - All P1 features are completed. Many P2/P3 features made into M1. Review=
 incomplete M1 features (Current status? Anything depend on them? How to fi=
t into the rest of milestones? What's the impact)
=A0
  - Many M2 features have been started. About half of the release developme=
nt effort is in progress. Hopefully in the remaining milestones, the flow o=
f pull requests will be relatively steady.
=A0
  - HOB2 made great progress. Even M2 features for HOB2 have been completed=
. Most of the features can be demonstrated under the current UI. There are =
still work to be done under the re-designed UI. Re-planning is in progress.=
 Promising to complete HOB2 with re-designed UI. Bugzilla will be updated w=
ith the new plan.=20
=A0
  - We got more medium+ bugs in the last 2 weeks. At the same time, we also=
 fixed quite some. So the remaining med+ bugs are pretty much unchanged. Ni=
tin has fixed a lot of bugs (24), He's leading on the number of bugs fixed.=
=20
=A0
  - 3 high bugs:=20
    . multi-lib (1835), Richard has tested a fix and it works.=20
    . 1841: M1 build related testing with latest fix, already fixed in mast=
er.=20
    . 1807: FRI 2 related. Darren is working with otavio@ossystems.com.br o=
n it
=A0
  - Package update exceeding our M1 target. Need Saul's data to update the =
chart.
=A0
  - Master status: green across the board. Fantastic! Thanks to Richard, Sa=
ul, Beth and the team
=A0
* Yocto 1.2 M2 planning status check and action plan - 10 min (Song)
  - Meta core team: done most last week, will complete this week. Song will=
 follow up with Saul. Scott Garmen's M2 feature may be at risk since he has=
 some work from Dave on training.  Richard has concerns on this. 1.2 is foc=
used on usability. Error handling and removing warning messages are importa=
nt. We will work out a solution for this. Need to wait after new year when =
Dave comes back. Options include taking other work off ScottG's shoulder or=
 ask someone else to help. Song and Saul will follow up on this one.
  - Kernel team: Tom does not see any change for his M2 schedule. Will foll=
ow up with Darren and Bruce.
  - ADT: Jessica? BSP kernel tool needs to be moved to M3, Jessica will sen=
d Song email.
  - Paul: M2 schedule looks ok. No change
=A0
* Opens - 10 min
 - Bernard, 1.0.2: releasing Berbard today, release note ready, tarball set=
, made it to the mirror already. It's Bernard 5.0.2 ScottR will follow up w=
ith Beth on  any possible manual changes? Seems nothing so far.
=A0
* Action item Review - 5 min
     - Mark will review unsorted features from Wind River team and try to h=
ave them scheduled (WIP, finalizing it.)
=A0
* Weekly team sharing (20 min)
 - Sean: no major plan. Looking for some down time.
 - Jeff: Mark is making progress.=20
 - Jessica: just came back from vacation. Looked at M2, done planning. Work=
ing on ADT.
 - Tom: worked on Yocto BSPs, usability, posted for review. Bugs and intern=
al BSPs. Next week mainly focusing internal BSPs.
 - Richard: Spent time dealing with package bugs, clean installs and autobu=
ilder issues. Pushed patches in, making sure we have green build for autobu=
ilder. Some long standing bugs remaining, will be working on them.=20
 - Scott R: working on some bugs, 3 done. A couple new ones in, working on =
them. working on remote system, so he can work remotely for a while. Window=
s users doc is done, it's a new page on the website. But need to wait for J=
efro's website rework to be done to make it public.
 - John: looking for some downtime.=20
 - Josh: working on release, trying to get 1.1.1 build ready for QA before =
Christmas break.
 - Saul: follow bugs, updates, pull requests, planning M2, avoiding the sho=
pping crowd.=20
 - Beth: Intel stuff, worked liecensing issues, trying to get some standard=
 in order. There was work for M1, 1.1.1, 1.0.2.=20
 - Paul: been doing host ditro testing. Update QT, hit a snag with recipes =
(linking with libs), still not sure about the fix. Will comtinue with that =
next week. Only taking UK holiday. 26/27 and 01/02/2012=20

Special note: Our team sharing uncovered that we have less snow so far for =
this winter across US cities and UK. But it does not mean it's not cold. St=
ill need to pay heating bill :(.=20

Happy holidays everyone! :)



