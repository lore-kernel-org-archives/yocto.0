Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33B25E006B0
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2011 10:06:01 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Nov 2011 10:06:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="81235331"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 29 Nov 2011 10:06:00 -0800
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 29 Nov 2011 10:06:00 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.228]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.80]) with mapi id
	14.01.0355.002; Tue, 29 Nov 2011 10:06:00 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - Tuesday, November 29,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHMrsGM7aVpuGLVgkacpcPPmUR9dg==
Date: Tue, 29 Nov 2011 18:05:59 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F99F55@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - Tuesday, November 29, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 29 Nov 2011 18:06:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Richard, Jessica, Matthew, Darren, Tom, Saul, Paul, Mark, Denys, Joshua, Je=
ff, Dave, Scott, Nitin, Song
=A0
New Action Item List:
* Action item Review - 5 min
  1. Mark will review unsorted features from Wind River team and try to hav=
e them scheduled (WIP)

Focus of the current week:
  M1 development and bug fixing, keep features on schedule, get patches rev=
iewed or pre-reviewed as soon as possible.

Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.0.2 and 1.1.1 point release update - 10 min (Josh/Beth)
  . Had an almost complete build for 1.0.2 last week, but still have some p=
roblems. Joshua is working on it. Targeting this week to have a build.
  . Will have CCB review the overall patch strategy for 1.1.1 tomorrow.
* Yocto 1.2 M1 Status (features development) - 10 min (Song/Beth)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
    . We are in the 5th week of M1. Feature complete coming this weekend
    . The build is green, no high bugs.
    . Test plan for all testable features have been completed, will be exec=
uted when the feature is in the build.
    . Great progress on P1 features last week, One small P1 has 20% done. a=
ll others are more than 70% complete. Most of them are more than 80% comple=
te.
    . Last week has a great surprise on bug fixing, fixed about 20 bugs. Ri=
chard contributed most of them
    . Not great update on package update. Only one package update  last wee=
k, Saul and Song will follow up on that.
    . Darren 1635: this one may have to be rescheduled. Darren will see  ho=
w to fit this one into the rest of his schedule.
    . Issue: lots of features in the development stage, there could be a st=
ampede of patch review and pull request in this last development week.
      - Consensus of the team: most of the people are working diligently to=
 keep the features on schedule and also get patches pre-reviewed. We should=
 allow more time for this to work.
      - We should publish the current process we are using so that the comm=
unity can understand it better.
=A0
* Opens - 10 min
=A0
* Action item Review - 5 min
  1. Mark will review unsorted features from Wind River team and try to hav=
e them scheduled (WIP)
  2. Paul will ping Jeremy on 1598 (Done, still need more time, 1598 should=
 be moved to other milestones)
=A0
* Weekly team sharing (20 min)
 Jeff: None,=20
 Josh: Worked and working on point release, nothing blocking now.
 Denys: None
 Mark: None
 Paul: initial version of package history patches, patch review, sending RF=
C to oe core mailing list. Still working on that.=20
 Saul: catching up on patches, working with team on updates, working on upd=
ates. Headsup on Openssl 1.0, RFC first. Using meta-oe as the base. Nothing=
 blocking
 Tom: working on crownbay video acceleration, config clean up on meta-intel=
 BSPs, other internal BSPs. Continue with these this week.
 Darren: Grub EFI, support internal teams, internal BSP, worked on Yocto do=
c with Scott. This week, get the grub efi done. Darren sent out another ver=
sion out for review last night. Will integrate grub efi, moving on to sysli=
nux.
 Matthew: working on cache issues, with Edison branch, upstreamed most of i=
t. Hoping all of these fixes in 1.1.1, but they may bring more problems.=20
  . Dave: intuition is to have 10-12 fixes in a point release. Otherwise mo=
re patches may bring more problems, and also make the main release look bad=
. Really appreciate the work Matthew has done, we are trying to include it.=
 We are planning a full QA test and release candidate for this point releas=
e in order to include more patches in it.
  . Richard: Master branch is stable, good time to get some fixes in point =
release, the situation is what it is, we should handle it.
 Jessica: completed eclipse plug-in work, fixed problems. Move on to look a=
t  improving usability of the bitbake commander.
 Richard: Spent quite some time going through various issues. Closed bugs, =
the master is good, shared state is in good shape. Getting us closer to con=
tinuous integration. Will look at patches, bugs. Merge window coming up.
 Nitin: was working upgrades, starting to get into gtk staff. X32 work is g=
oing on.
 Scott: working on some bugs, got one done. Changes on manuals. Got the Yoc=
to doc straighten out on the repo. Continue on bugs. Richard will take a lo=
ok at the documentation page and suggest some changes.



