Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1424E0070C
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2012 11:49:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Mar 2012 11:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="123939681"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 27 Mar 2012 11:49:19 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 27 Mar 2012 11:49:18 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.81]) with mapi id
	14.01.0355.002; Tue, 27 Mar 2012 11:49:18 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, March
	27, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNDEpQ0cMLnJN7bEGR9QNHm29u3g==
Date: Tue, 27 Mar 2012 18:49:18 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A46AE8E64@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, March 27, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 27 Mar 2012 18:49:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Paul, Darren, Richard, Michael, Joshua, Tom, Jessica, Mark, Dave. Jeff,  Sc=
ottR, Beth, Song
=A0
Agenda
* Opens collection - 5 min (Song)
* 1.1.1 release, thanks to Josh, Matthew, Beth and the whole team for getti=
ng this incredibly large point release out of the door.=20
  - Josh planning for 1.1.2, have some patches in the branch already
  - Action item: Retrospective for 1.1.1 (second week of April should work =
with Josh)
* Yocto 1.2 M4 status - 20 min (Song/Team) https://wiki.yoctoproject.org/wi=
ki/Yocto_Project_v1.2_Status=20
=A0
   Bug fixing: fixed about 41 bugs, down to 131, to the level when we start=
ed 1.2, about average of the 1.2.
   High bugs:
      - 2066 glxgear still there: fixed qemu problem, working on BSP.
      - HOB2, either fixed or patch submitted. 1 doc HOB2 bugs. 2102 will t=
ake some time. Start on that today. 2157, video will be done after release.=
 Replace with new screen shots.
      - Jessica: No need for eclipse video.
   Features:
      - About 20 or so features left (please check the task board). The tea=
m has reviewed them, it seems fine not to have them in this release. If any=
one sees a bigger impact of any of those features, please let Song know.
      - RP: merged pretty much everything we want to merge, stabilizing RC1=
 build. We are not taking patches from community now. Did not communicate w=
ith community about the dates very well.  Build is failing now, RP knows th=
e issues and Paul and RP will fix those.
=A0
* SWAT team rotation: Jessica->Paul. Thanks to Paul for volunteering for th=
is week. (Dexuan is pretty busy)

* Opens - 10 min
  - Michael: Schedule downtime moving autobuilder master to new hardware.=20
New hw is place, passed all burning test. Later this week would like to sch=
edule 12 hours downtime for the move. Beth says no, let's do it sometime in=
 April. Probably 3 weeks from now. The upgrade is purely hardware, no softw=
are including OS changes.
  - Mark: Pseudo problem, talking to peter. He has the problems fixed local=
ly. Still verifying. Once he's done. Mark will construct something  (recipe=
s, etc). Should be sometime today. Purely a pseudo change. Mark will create=
 a bug for this one to track the progress.
=A0
* Team Sharing - 20 min
Beth: fixing licenses, now have ability doing it at package level. Some aut=
obuilder changes. None related to features on 1.2 list. Got 1.1.1 out. Rele=
asing work this week.
Scott: reacting to issues coming over discussion list. X32 stuff in, a bunc=
h of cleanup stuff. Notes about the manual. This week is to nail the 2 bugs=
 on HOB.
Mark: office in new location :)
Jessica: last week, BSP/kernel tools integration, fixed some eclipse proble=
ms. This week to focus on Yocto plug-in.=20
Tom: preparing for BSP summit, updated doc for BSP tools, trying to get som=
e bug fixes. BSP tools in master now. Next week in BSP summit.
Joshua: trying to help on HOB fixing, this week same, 1.1.2 branch.
Michael: received new servers, hard disks, servers installed. Went over new=
 release script with Beth. 1 week on Drupal conference. Worked with Darren,=
 got bugzilla plugin installed. Next week, virtualize web services, work on=
 new look of the website.
Richard: Mostly patch review, merging, get ready for RC1. more bug fixing t=
his week. Answering questions on the mailing list. Hope to get green RC1 th=
is week.
Darren: last week doing internal BSP work, working on various boot image is=
sues, couple of bugs, preparing BSP summit, working with Tom and Bruce on t=
he content. This week, refactoring Linux kernel metadata. Very confined cha=
nges. Recipes will be refined. RP: we need to look at it. If it can be done=
 quickly, it's possible to include it for the release.=20
Paul: bug fixing, troubleshooting for the release. 1784 is related to Pseud=
o and busybox. Will try to reproduce and fix it. SWAT duty, more bug fixing=
 this week.


