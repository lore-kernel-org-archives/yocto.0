Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76B67E01304
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 00:36:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Jun 2012 00:36:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="156948747"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 13 Jun 2012 00:36:35 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 13 Jun 2012 00:36:34 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.60]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.37]) with mapi id
	14.01.0355.002; Wed, 13 Jun 2012 00:36:33 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, June
	12, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNSTdBKnDLSsJwbEu64xRG6ifjpg==
Date: Wed, 13 Jun 2012 07:36:33 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A48421083@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, June 12, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 13 Jun 2012 07:36:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Beth, Nitin, Saul, Jessica, ScottG, ScottR, Michael, Cristian, Tom, Richard=
, Bjorn, Gilbert, Denys, Alex, Paul, Jim, Mark, Josh, Jefro, Jeff,  Sahad, =
Andrea, Russ, Laurentiu, Bogdan, Radu, Bruce, Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* 1.2.1 update - 5 min (ScottG)
  - 13 bugs open, 3 of those fixes in the testing tree.
  - our target day for RC1 is 18th. We will need to revaluate this list.
  - Sent the list to mailing list. RP review.
* 1.1.2 update - 5 min (Josh/Beth)
  - 2  x32 issues. Another change yesterday.
  - One issue remaining, Beth will work Josh on this one.
  - Nitin will review the x32 patches.
  - ETA: sometime next week.=20
* Yocto 1.3 status  - 10 min (Song/team)
    - Most of the features are merged into master. No special concern on M1=
 features left on schedule. Dave/Richard/Kevin will review all P1 features =
next week.
    - bug fixing: WDD trending up. Fixed about 25 bugs last week. Total # o=
f medium+ bugs came down from last week. RP: we need to be consistent on bu=
g metrics.
    - UK team is coming back, Saul is back from travelling, will focus more=
 on bug fixing this week
    - This week is the stabilization week of M1, bug owners should focus mo=
re on bug fixing.
    - This week is also the planning week of M2. Everyone should re-evaluat=
e  the all features on the schedule and re-plan M2 features if necessary. E=
stimate should be adjusted if needed.
 - Build status (Beth): Running a build now, some failures we need to look =
at. Pre-RC1 will be started later today. If there is no change, it will be =
RC1. Formal RC1 will be kicked off tomorrow.
=A0
* LTSI discussion - 10 min (Sean/Bruce/team)
  - Bruce: we are going to use the next LTSI (3.4 kernel). We are going to =
test LTSI out of Yocto with 3.4 kernel. We have 3.0, 3.2, 3.4, LTSI based o=
n 3.4, Yocto dev branch will be chasing 3.5.
  - Saul: LTSI group is interested in seeing the information reflected back=
 on our website.=20
  - Laurentiu will have someone from the QA team to cover possible addition=
al testing on LTSI.
* SWAT team rotation: Jessica -> Dexuan
* Opens - 5 min
* Team sharing - 20 min
 - Bruce: Done working on the kernel tree. Updated RT for 3.4, created exte=
rnally visible tracker for changes going into the kernel. Got it on yp.org,=
 it's git interface.
 - Radu: starting working on system D integration. Radu could talk to Paul,=
 Ross, send email to the list if there is any questions.
 - Micahel: Integrating testopia in Bugzilla for the Romania QA team. worke=
d on packaging scripts, adding new repos, rsync, traffic control, bugzilla =
re-org, sorting out issues ScottR. Review today, can have this live right a=
fter review.
 - Ross: web browser integration. Having some hardware issues now.
 - Mark: RPM changes went in, any issues pls let Mark know.
 - Jim: posted wiki the web hob design. Quick screen cast. It's blue-sky th=
inking. Please review and give us some feedback.
 - Tom: fixed some build problems for denzil. Fixed a couple 1.2.1 bugs. Ke=
rnel recipes from Bruce. Scripting support this week.=20
 - ScottR: enhancement on several mannuls. Continue that this week.
 - ScottG: working on 1.2.1.
 - Jessica: tested latest eclipse release. Working on the build. ADT and ec=
lipse.
 - Saul: Got back from LinuxCon Japan. Pretty good turnout on the presentat=
ion. Will work on the consolidated pull, bug triage. Need to focus a little=
 more on the=20
 - Nitin: helping Bogdan to take over some of the tool chain tasks, taking =
over BSPs from Tom.
 - Beth: working on some autobuilder issues. This week will work on interna=
l stuff.
=A0




