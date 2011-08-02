Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95A094C80053
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2011 14:08:16 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Aug 2011 12:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,307,1309762800"; d="scan'208";a="37175193"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 02 Aug 2011 12:08:15 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 2 Aug 2011 12:08:15 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.233]) by
	ORSMSX151.amr.corp.intel.com ([169.254.5.9]) with mapi id
	14.01.0289.001; Tue, 2 Aug 2011 12:08:15 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team (Tuesday, August 02, 2011 8:00
	AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMUUeIdayi8S4pxEqQ3KE95CSdFg==
Date: Tue, 2 Aug 2011 19:08:15 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A1374F898@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A02E3CE@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team (Tuesday, August 02, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 02 Aug 2011 19:08:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Messages to the team:
=A0
* Thanks and kudos to the team, Yocto 1.1 has reached feature complete. The=
 team is working on completing the build and bug fixes now. Many have been =
working really hard to make this happen, especially people working on multi=
-lib, HOB, kernel works, builds and QA, etc. Thanks to Nitin for completing=
 x32 while his fingers are still hurting :)
* The current plan is to have M3 RC2 build today or tomorrow, then QA will =
run weekly test on RC2. Will have another build RC3 with critical fixes ove=
r the weekend and have QA run full test next week on RC3.
=A0
Attendees:
Mark, Paul, Saul, Josh, Jefro, Dave, Scott, Jessica, Tom, Richard, Jason, S=
ong
=A0
New Action Item List:
---------------------------------------------------------------------------=
---------------------------------------------------------
* The team to review ALL bugs they own and do some estimation. Please put t=
he estimation on the white board by next Thursday (8/4/11)
---------------------------------------------------------------------------=
---------------------------------------------------------
* ScottR will follow up with Paul on doc auto-generation and revision inclu=
sion in the doc. The goal is to have docs refer to the release?=20
* Song will follow up with Tracey to make sure marketing planning happens b=
etween milestones so that there is no disruption to the development schedul=
e.
=A0=A0
=A0
Agenda:
=A0
1. Opens collection - 5 min (Song)
2. M3 release criteria and plan - 20 min (team) https://wiki.yoctoproject.o=
rg/wiki/Yocto_Project_v1.1_Release_Criteria=20
    * Yocto 1.1 reached feature complete last week.
    * 2 tasks remaining for M3 (Beth)
3. M4: bug effort estimate (see messages above)=20
4. Opens - 10 min
    i. Yocto 1.2 feature request
    ii. Saul: The state of pull request, and consolidated pull request:
      * Sending out to consolidated pull request, as M3 is wrapping up. Sau=
l will look at the remaining pull requests, things will move forward a litt=
le slower, 24 hours response time for pull request. Saul will be out next w=
eek. Richard will be handling the pull requests.
    iii. ScottR: ADT/HOB scripts: 2 videos for ADT and HOB.=20
      *Jessica/Josh creating the video piece and script. Scott needs the sc=
ripts. Just a heads up. Jessica and Josh are ok with this. This is schedule=
d for M4.
=A0
5. Action item Review - 5 min
=A0
Action Item List:
---------------------------------------------------------------------------=
---------------------------------------------------------
* The team to review ALL bugs they own and do some estimation. Please put t=
he estimation on the white board by next Thursday (8/4/11)
---------------------------------------------------------------------------=
---------------------------------------------------------
* Saul: talk to Jianjun, QA should work with developers to make sure we can=
 cover more distro testing (informal) before major release. Joshua and Darr=
en volunteers for some of these testing. (Done)
* Beth/Darren/ScottR: document the central location in the release, and put=
 any doc changes in the location after release.
  - git repos should match the website
  - Include the revision in the doc when we generate the doc from the sourc=
e. See how we can auto generate the doc. Scott will follow up Paul on this.=
 The goal is to have doc refer to the release.
* Song will follow up with Tracey to make sure marketing planning happens b=
etween milestones so that there is no disruption to the development schedul=
e.
  - Tracey was on vacation. Back this week


