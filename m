Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05B03E011AF
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 15:22:26 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Sep 2012 15:22:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,485,1344236400"; d="scan'208";a="197036652"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by azsmga001.ch.intel.com with ESMTP; 25 Sep 2012 15:22:20 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.60]) with mapi id
	14.01.0355.002; Tue, 25 Sep 2012 15:22:18 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	September 25,
	2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNm2w5buc2X+PjtES1qugb9Mueow==
Date: Tue, 25 Sep 2012 22:22:17 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A4853AC3A@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, September 25, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 25 Sep 2012 22:22:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Dave, David Wolfe (Magneti Narelli), BogdanM, PaulE, Cristian, Kevin, Saul,=
 Fahad (Mentor), ScottR, Jessica, Bruce, Nitin, Denys, Beth, MihaiL, ChrisL=
, Darren, AlexD, Richard, Ross, Song
=A0
Minutes:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.3 M4 release readiness - 10 min (Song)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status#Milestone_4=
=20
    - Full pass report on the last RC for M4 is out in the mailing list. No=
 blocker issue has been raised.
    - one high remaining: 2164. Main patch has been merged. Opening separat=
e defects to track remaining issues. Will be closed (Bogdan)
    - Saul: udev and x upgrade likely will not make this release. No statis=
tics due to broken package reporting system. Soneone in RO team will work o=
n it. But now the team is focused on bug fixing for the release.  Song: no =
concerns/questions from the community has been raised  regarding this.
    - Docs/ScottR: working on examples in the doc to update them. Will disc=
uss some issues regarding FRI II example with Darren. No concerns for M4 re=
lease.=20
    - Reviewed all other release criteria and they all pass.
    - Song will send email to CCB and we will release M4 this week.
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
=A0
    - Bug fixing: on the right trend. WDD # is coming down, total # of abov=
e medium bugs is coming down.
    - 83 new bugs opened in the past 2 weeks, 50% by QA (RO, BJ), others by=
 community and our developers
    - Bug verification: about 70 items remaining in 'merged' stage. QA team=
 has a target to get the 'merged' item list down to 50 this week, and down =
to 10 next week.
    - Master status/Beth: MUT is going on. Failures in x32 that needs to be=
 looked at. OE core has some AB issues, Beth will look at them today. Maste=
r is looking pretty green at this point.
=A0
* SWAT team rotation: Stefan Stanacar=A0 -> Mihai Liner.
* Opens - 10 min
* Team sharing - 20 min
  - Nitin: trying to change emenlow to use emgd driver instead of pvr drive=
r. Got it to work with latest emgd driver.
  - AlexD: we are focusing on HOB and toolchain bugs.
  - Michael: setup the database access for Song. Worked with Beth and Paul =
for public mirroring issues. Added user contribution area/url in Yocto git =
(http://git.yoctoproject.org/cgit.cgi/user-contrib/user_name). Email archiv=
e work need to be done. Bugzilla new release (security) update. Generating =
and signing public chain... Patch work. Working on the Bugzilla statics. (L=
aurentiu will send Michael the historical data we had before)




