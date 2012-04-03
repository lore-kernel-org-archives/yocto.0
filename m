Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DCD7E0044A
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 09:31:52 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 03 Apr 2012 09:31:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="84837919"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Apr 2012 09:31:51 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 3 Apr 2012 09:31:50 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.199]) with mapi id
	14.01.0355.002; Tue, 3 Apr 2012 09:31:50 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, April
	03, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNEbdFSuzYffOEwE2PqYn2QAT1XQ==
Date: Tue, 3 Apr 2012 16:31:50 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A46AEFF84@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, April 03, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 03 Apr 2012 16:31:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Beth, Paul, Mark, Saul, Joshua, Chiu-pi  Schih  (InteL), ScottR, Jeff, Mich=
ael, Song
=A0
This week's focus: Bug fixing especially HOB/build appliance issues, core b=
uild system bugs. RC2
=A0
Agenda

* Opens collection - 5 min (Song)
* Yocto 1.2 M4 status - 20 min (Song/Team)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
  - RC1 full-path report: 20 new bugs, 10 on core build system, prioritize =
new bugs, Saul to work with Darren/Jessica to triage the bugs ASAP
  - HOB issue: Shanghai team on holiday, Josh has been working on them, som=
e patches are submitted, 2210 already has patches submitted. Josh will sync=
 with Richard
  - Build Appliance has made great progress, solved the problem creating bi=
g files. Some problems remaining: run qemu within.=20
  - High bugs: have patches for 3, one has workaround, Tom has one, working=
 on it.
    2157 - cannot do this until we release. Suggest to lower the priority. =
Saul will take a look.
  - Beth: Pre-RC2, things seem look ok. There are some patches that need to=
 be pulled. No ETA, working with Richard. Build should be green, no issues =
from the build point of view.
 =20
* SWAT team rotation: Paul -> Saul.
=A0
* Opens - 10 min
  - Chiu-pi: BSP questions, answered by the team. Saul responded to her ema=
il on the mailing list.

* Team Sharing - 20 min
=A0
  - Michael: continuing virtualize on the new hw, backing up data, in progr=
ess, container host is setup, getting deployment script worked out. Working=
 with Jefro on new website. Next the same, wait for after release on adding=
 space. Will be focusing on virtualization. Switch to use jump host. No Bug=
zilla work last week.
  - Scott: worked on bug scrub for hob, some patches from tom, closed a cou=
ple of bugs. Going though emails with issues now. This week coordinate with=
 Beth, get to the point we can run through examples. Need to get build appl=
iance write-up.
  - Chiu-pi: started a couple weeks ago. Working through some issues on som=
e Intel BSP.
  - Joshua: working on some HOB polishing issues, continue on HOB issues.=20
  - Saul: vacation last week, will work on patch pulling, RC2, build applia=
nce, etc.
  - Mark: fixing processor architecture issues. There are some oe patches t=
hat actually lead to some large bugs, fixed some tuning bugs, need to run l=
ots of build to verify it. The tracking bug is 2234, Saul to assign it Mark=
.=20
  - Paul: mostly testing self-hosted image, responding to issue to that. Co=
ntinue to do those, working with Saul on build appliance.
  - Beth: RC1 out last week, tracking down some autobuider issues, internal=
 projects, this week will be on RC2, pulling together some autobuilder chan=
ges. More functions for BSP building utilities. These changes won't be in u=
ntil the 1.2 release.
=A0




