Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55D1CE01496
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 22:52:39 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Apr 2013 22:52:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,444,1363158000"; d="scan'208";a="284096778"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 09 Apr 2013 22:52:09 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.213]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.197]) with mapi id
	14.01.0355.002; Tue, 9 Apr 2013 22:52:09 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, April
	09, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac41r2/ocBtUiP/9S4+qqHKgg/kWkwAAA9hw
Date: Wed, 10 Apr 2013 05:52:09 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A70F1FB68@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, April 09, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Apr 2013 05:52:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saurav, Beth, Ramana, DaveST, TomZ, RichardP, MichaelH, BruceA, KevinS, Jef=
fP, Bj=F6rnS, Fahad, Cristian, Corneliu, JessicaZ, Ross, ScottR, Saul, Mark=
H, PaulE, AlexD, Nitin, Denys, Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* 1.3.1 release update:
  - Beth: We hit some AB issues creating the build last time. These are the=
 same issues facing 1.4. should have been fixed last night. Started another=
 last night. At this point it looks ok. Needs to check on some files, the w=
orld build etc. before release.=20
=A0
* Yocto Project 1.4 M5 release readiness review - 10 min (CCB/community)
=A0
  - Status: We had a full pass run on RC2, RC2 had a blocking issue. It's b=
een resolved and verified in RC3. Now RC3 is still under full pass run.=20
  - Would like to have a decision on:=20
    1. Shall we release M5 considering we are close to the final 1.4 releas=
e. It's no harm as far as our release team can still handle it (Beth: not m=
uch work, probably a couple of hours). It probably will not make much real =
different since it's already served its purpose as a checkpoint for the pro=
ject and for the team. But we don't want to skip M5 and let others think th=
at there is something seriously wrong.
      . Decision: Make M5 release.=20
    2. If we still release M5, after the full pass report comes out, can we=
 release it without another review and CCB meeting? a light release of M5? =
Will we announce the release?
      . Decision: It's a CCB decision. Will have the review meeting after Q=
A report is out.
=A0
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status
  - It's all about bugs. As of last Sunday, we have 314 standing open. Ther=
e are various reasons for people to open more bugs at this time. As I have =
mentioned at the beginning of the milestone, we really need to keep focusin=
g on bug fixing in this stabilization milestone. The cutoff day is coming t=
his weekend. So basically we cannot stressed more how much we should focus =
on bug fixing.
  - RP: Qemu issues update, random sanity failures, it's interesting bug, h=
appened on multiple qemu archs. Double fault, have done lots of investigati=
on. Applied one patch from qume master to qemu 1.4. Things seem to stabiliz=
e now.
=A0
* SWAT team rotation: Bogdan Marinescu -> Saul (would like to keep an eye o=
n the build). RP/Song: Thank Bogdan for sorting through lots of AB issues i=
n the past week.=20
=A0
* Opens - 10 min=20
  Ramana: Proposed Post build configuration as a 1.5 feature (https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D4106). Would like comments and feedb=
ack. The YP team is concentrating on bug fixing, stabilizing 1.4 for releas=
e now. Will provide feedback once 1.4 is out.
=A0
* Team Sharing - 20 min
  - AlexD: looking through various bugs sending various patches to stabiliz=
e the release until Sunday.=20
  - Cristian: worked on issues related to build appliance. Fixed almost all=
 the issues. Working on connman issues, work in progress. Still one medium+=
 bug. Routerstation bug, have a fix for it. should be fixed this week, 4203=
 is high, working on it.
  - MichaelH: replacing memory for AB 6, caused some problems, fixed. A str=
ange issue on some memory errors, able to fix it. Passed memory test, AB is=
 back in service. Ordering extra hardware (2 additional AB this year). auto=
build.yoctoproject.org/intel gateway issue should be fixed. Working on pack=
age later index.
  - Beth: quick update on AB performance. 6-7 hours on old AB. 5 hours 43 m=
inutes on new one, 45 minutes less. With AB6 on line, it will be 4 and half=
 hour. 15-20 more minutes less. Altogether, can reduce about an hour off bu=
ild time. Michael: Build faster and more often is good. The storage is buil=
ding up fast at the same time. Looking at ways to clean up. Monitoring the =
space usage. RP: there might some optimization on what images we are buildi=
ng, etc. Can someone file an enhancement bug ? (Michael will do that).




