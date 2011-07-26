Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D7DD64C801DA
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2011 11:03:04 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Jul 2011 09:03:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,270,1309762800"; d="scan'208";a="31644822"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 26 Jul 2011 09:03:04 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 26 Jul 2011 09:03:03 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.233]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.105]) with mapi id
	14.01.0289.001; Tue, 26 Jul 2011 09:03:02 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team (Tuesday, July 26, 2011 8:00
	AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: Acw7gRWJ3MqIcoWrRUW3MhftZw10kQQKz85QAAA/gpA=
Date: Tue, 26 Jul 2011 16:03:01 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A1374A07F@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team (Tuesday, July 26, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 26 Jul 2011 16:03:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saul, Tom, Paul, Jessica, Rahul, Koen, Joshua, Mark, Denys, Richard, Bruce,=
 Song
=A0
Action Item List:
  -------------------------------------------------------------------------=
-----------------------------------------------------------
* The team to review ALL bugs each owns and do some estimation. Please put =
the estimation on the white board by next Thursday (8/4/11)
  -------------------------------------------------------------------------=
-----------------------------------------------------------
* Saul: talk to Jianjun, QA should work with developers to make sure we can=
 cover more distro testing (informal) before major release. Joshua and Darr=
en volunteers for some of these testing.
* Beth/Darren/ScottR: document the central location in the release, and put=
 any doc changes in the location after release.
* Song will follow up with Tracey to make sure marketing planning happens b=
etween milestones so that there is no disruption to the development schedul=
e.
=A0=A0
Agenda:
=A0
- opens collection - 5 min=A0(Song)
- Review M3 status and open issues - 15 min (team)
    ------------------------------------------------------
  * Feature cut-off time is mid-day 27th, US pacific time. All committed fe=
atures should be in by then and M3 will branch out.
    ------------------------------------------------------
  * Beth's autobuilder infrastructure will move to M4 due to hardware issue=
s. No impact to Yocto 1.1 release.
  * Multi-lib plan: merge multi-lib tree with M3 branch at the point when M=
3 branches out.
  * Mark needs to get some licensing statement for some of the code. Target=
ing today to get it done.
  * HOB for M3 is on track.=20
  * Demos: No resources allocated for demo during M3. Song will follow up w=
ith Tracey.
  * Overall, M3 is on track to get us to point of the feature complete.
- M4
  * The focus of M4 is bug fixing for 1.1. After M3 Sprint A, the team shou=
ld review ALL the bugs they own and estimate the effort, then put the estim=
ation on the white board. We will use that information to do M4 planning ne=
xt Thursday (8/4/11)
- Action item review
  * Team: please take a look at the post 1.1 items on the wiki page and let=
 Song know if there is any comment or concerns. (Done, CCB approved)
  * Saul: talk to Jianjun, QA should work with developers to make sure we c=
an cover more distro testing (informal) before major release. Joshua and Da=
rren volunteers for some of these testing.
  * Beth/Darren/ScottR: document the central location in the release, and p=
ut any doc changes in the location after release.
  * Song to setup go/no-go meeting next Monday to decide on the M2 release.=
 (Done)
=A0


