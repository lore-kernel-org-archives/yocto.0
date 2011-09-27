Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE995E004DD
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 13:22:34 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Sep 2011 13:22:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,451,1312182000"; d="scan'208";a="56302902"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 27 Sep 2011 13:22:34 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 27 Sep 2011 13:22:33 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.146]) with mapi id
	14.01.0323.003; Tue, 27 Sep 2011 13:22:33 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - (Tuesday, September
	27, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMfVMvGctvLCsRgUiRBDL8cI5Fsw==
Date: Tue, 27 Sep 2011 20:22:32 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F29877@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - (Tuesday, September 27, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 27 Sep 2011 20:22:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Beth, Paul, Jessica, ScottR, Jeff, Matthew, Josh, Richard, Tom, Saul, Darre=
n, Song, Bruce
=A0
Agenda
=A0
* Opens collection - 5 min (Song)
* Yocto 1.1 M4 status review and issues - 15 min (team) https://wiki.yoctop=
roject.org/wiki/Yocto_Project_v1.1_Release_Criteria#Milestone_=20
  - Bug fixing summary and issues (Song):=20
    . We started M4 with about 100 bugs targeted for 1.1 and we planned to =
fix most of those. By today, the number of bugs for 1.1 have doubled to abo=
ut 200. and we have fixed about 170 of those bugs. So for fixing Medium+ bu=
gs, we are doing pretty well.
    . For the rest of M4 bug fixing, we will be selective on which fixes go=
 into RC4. We should find the problem, identify the solution and then evalu=
ate the benefit and risk before we decide if the bug fix can go into RC4.
    . 1523, 1532: Saul, will be fixed in a couple of days.
    . 1496/1497/1498/1527: Richard, working on the fix, some of them alread=
y have patches to be reviewed. Some of these are resulted from testcases fo=
r non main path usage model and corner cases.
    . 1443: special usage case problem for prelink. Should consider downgra=
de.
    . 1489: Jessica, not a showstopper. Should consider to downgrade.
  - Build status and QA (Beth/Song)
    . Everything in Edison branch is building fine. All green but Crowbay=20
      ADT toolchain and installer is done.
  - Release schedule (Song) RC4 starts on Oct. 5th.
    . Have all docs into Edison branch by Oct. 6th.
* Opens - 10 min
  . Prelink on 64 bit: Matthew will open a new bug for the problem he found=
. Mark will likely be the owner
  . Remind 1.2 planning: process is in full swing. We are waiting on two th=
ings to happen before we do team planning: 1. Dave and Richard sync on 1.2 =
theme and feature set. 2. Sync with stakeholders on process improvement mov=
ing forward.
  . Darren: Machine_essential:  None of the 4 options cause the package to =
be included in the image. Is this a problem or user error? Shall we fix it =
for 1.1. Richard will respond in the email about this issue and work with D=
arren offline.
=A0
* Weekly team sharing (30 min)
Bruce: doing bug triage, consulting on kernel bugs, looking at 3.1 kernels.=
 Planning for next Yocto release. Linux libc header package upgrade. Gettin=
g a decent mirror for 3.04. (Master is ok to upgrade kernel version, but no=
t the Edison branch).=20
Darren: debugging on some serial port issues on upcoming BSP, working on mi=
nimal boot. Some patches sent to kernel mailing list. Main blockers are mos=
tly internal things such as hardware availability. A few things I could far=
m out. Anyone can help? (some packaging issues) Paul volunteered to help.
Saul: working to get the release done, blockers: my own getting through the=
se bugs. Consolidate pulls again for master, not Edison. Do a basic build f=
irst before send out batch pull request.
Tom: Get Emanlow moved to 3.0. always one BSP gets in trouble when we move =
the kernel. BSP reviews. Seems to be a good time clean up some of the confi=
g issues. Going through emanlow, crownbay configures. But this is not for 1=
.1. Working on bugs at the same time. Continue all that staff this week
Richard: In china last week, working with the team there, doing training, b=
rainstorming, discussing 1.2 features. Did some stability work on autobuide=
r. Some work on openembedded, did some work on QA warnings. Next week focus=
 on the release, go through some release bugs, work with Dongxiao on multi-=
lib fixes.
Josh: Worked bug fixing last week, worked on video together, continue bug f=
ixing video this week.
Matthew: Doing some ppc64 staff, state cache. Not affecting release. Would =
not make a demand to fix the ppc64 prelink problem for Yocto 1.1. Freescale=
's work will be based on 1.1 though.
Jeff: Not much on yocto side, working on wrs linux.=20
Scott: last week worked with Jessica to create the ADT video. Completed the=
 ADT manual. Done work on user feedback, especially from Paul. This week to=
 complete the HOB video. Wrap up all bugs and changes before next week star=
ts. Lots of things to do. But will make the Oct. 6th date for doc freeze.
Jessica: Debugging with lianghao on 1489, screen cast, initial video for AD=
T video. Worked with Beth on ADT repo. Planning working on intel tools. Pos=
t 1.1 features, etc.
Paul: Doing bug fixes for the release. Helping Scott for the documentation.=
 Working on distro list, not much feedback on that from the community. A sh=
ort list. Next to help Darren. Look at some QT patches and respond.
Beth: last week spent time getting RC3 out, fixing autobuilder issues. Next=
 week, get release together for RC4 for 1.1. For Oct./Nov. taking every Fri=
day off.
=A0
Shanghai Team: Shane is on vacation. Pretty much everyone was having meetin=
gs with Dave and Richard on training, brainstorming, and other things.=20



