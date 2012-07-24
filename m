Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46577E00280
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 16:14:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jul 2012 16:14:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="185411721"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jul 2012 16:14:19 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 24 Jul 2012 16:14:19 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.231]) with mapi id
	14.01.0355.002; Tue, 24 Jul 2012 16:14:19 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, July
	24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNafINPnasMs39yUCDdKQBMxLVVg==
Date: Tue, 24 Jul 2012 23:14:18 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A484D0C2F@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, July 24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 24 Jul 2012 23:14:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Laurentiu, Ciby, Jessica, Michael, Paul, Dave, Saul, Richard, Russ, Bogdan,=
 Alex, Kevin, Jeff, Sean, Darren, Nitin, ScottR, Chris, Song
=20
* Opens collection - 5 min (Song)
* Yocto 1.3 M2 release readiness - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status#Milestone_2
  - RC1 passed the full pass test, test report is out in the public mailing=
 list.
  - We moved some P1 items from M2 to M3, some of them are already complete=
d and merged in master. CCB has been notified and approved the movement of =
these P1 items.
  - had an issue with mpc BSP, blocked testing on that BSP. Now we have a f=
ix in the master branch, QA has completed testing for that BSP.
  - Performance has a little degradation, from 120 to 127 minutes. Another =
half of patches in master could help improve performance.
  - Overall, the team agrees to release RC1 for M2.
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
   - Bug counts is going up a little. The trend has been going on for a few=
 weeks. The team needs to focus more on bug fixing.
  - We have a lot of work for M3, some of them are still in scheduled stage=
. Please update them in Bugzilla if you already started working on them.
  - Saul: Should have the weekly build tomorrow on master.=20
* SWAT team rotation: Ross -> Nitin
* Opens - 10 min
* Team sharing - 20 min
  - Mark: coming up with design for installation infrastructure and image g=
eneration,  should be done by the end of week. Please let me know if you ha=
ve comments. This is mainly to figure out a way to install ... RP: some of =
these have been done in the past. Mark: yes, but there is a gap. Will start=
 publishing things on the public mailing list when we have something concre=
te.  Darren: Tom and I have more interests, related to EFI support, will br=
ing Tom in the discussion when he's back from vacation.=20
  - Pau l: finished complimentary package installation, Rootfs. hitting som=
e env size limit, ended up doing some performance work on rpm backend. Will=
 increase the time to build a little bit. It could be much worse without th=
e optimization work. Worked on build history, dependency information more e=
fficiently. Next thing reduction of dependency, etc.
  - Alex: The Romania team is doing package upgrade now. Will continue feat=
ures development and bug fixing after that
  - ScottR: documentation has undergone some extensive terminology change. =
ADT manual has been renamed to application developer's guide. These changes=
 are all in doc's dev area. Available here: http://www.yoctoproject.org/doc=
umentation/docs-in-progress   . Check out that area and feel free to commen=
ts. =20
  - Darren: working on the FRI II BSP, fixing some kernel meta data bugs fo=
r the pre-empt RT kernel. Fixing some other kernel bugs.=20
  - Micahel: working on 1.1.2, working on releasing that, should be out tod=
ay. Log aggregation. Working on optimizing backups. Cutting out what we don=
't need. Improve efficiency. Oscon, meet yocto team f2f, continue to plan f=
or the future upgrade rack to be able to use more electricity without payin=
g more.=20


