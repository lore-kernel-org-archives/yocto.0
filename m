Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99A22E004E9
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 13:38:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Oct 2011 13:38:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="62340028"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2011 13:38:38 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 12 Oct 2011 13:38:38 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.52]) with mapi id
	14.01.0323.003; Wed, 12 Oct 2011 13:38:38 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - (Tuesday, October 11,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMiR7o1Lix8E4upEGWpiMbIZLblQ==
Date: Wed, 12 Oct 2011 20:38:32 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F33591@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - (Tuesday, October 11, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Wed, 12 Oct 2011 20:38:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Scott, Dave, Jessica, Saul, Richard, Bruce, Joshua, Tom, Matthew, Darren, J=
eff, Denys, Paul, Sean, Song.
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.1 M4 status review and issues - 15 min (team) https://wiki.yoctop=
roject.org/wiki/Yocto_Project_v1.1_Release_Criteria#Milestone_=20
  1235: Tom has a fix, one issue is slow running currently. Glxgear has not=
 been tested for 3.0. Tom will figure out if glxgear will work for 3.0. The=
n decide on which direction we should go. BSP issue will not affect release=
 1.1.
  1587: workaround in this release. The fix will be in the next release.
* Opens - 10 min
  None
* Weekly team sharing (30 min)
  Sean: Joined Mentor, nothing this week.
  Paul: been away last week. Processing of changes, work out patches for 1.=
0.2 point release.
  Denys: working on the demo, meta-ti layer, have to cancel trip to ELCE, s=
omeone else will be there for the demo
  Jeff: having some meetings for WRS demo for ELCE. Won't be in ELCE..
  Darren: preparing for and work on the tiny layer. Identify some gaps, goo=
d progress, 1.3 MB image. Would like to share this at ELCE to get some feed=
back and come up with ways for improvement for 1.2.
  Matthew: looking at shared state cache on Edison. Trying to figure out ho=
w everything works.
  Tom: most of my time updating meta-intel BSP fix, other bugs, 1.2 plannin=
g features. More BSP clean up and other bug fixes this week.
  Joshua: working on HOB, a few point release patches, working on things fo=
r the next cycle.
  Bruce: monitoring kernel release, streamlining for next release. Generall=
y putting in what we should change and for 1.2. streamline the process to w=
ork with kernel and make it easier
  Richard: patches review, amending and testing various things. Written var=
ious patches for parallelism. Looking into shared states with Matthew, cont=
inue 1.2 planning and build speed improvement. Break down and analyze where=
 the differences are.=20
  Saul: wrapping up 1.1 bits, working to get all issues resolved. Working o=
n 1.2 planning. Package upgrade. Nothing blocked.
  Jessica: focused on 1.2 features. Create video for eclipse for marketing.=
 Naming issue, hob issue.
  Scott: Packed up 1.1 doc last week. Sent the auto and video put things to=
gether, about done. Working on website, trying to get doc into certain area=
s. Nothing blocked.=20
=A0


