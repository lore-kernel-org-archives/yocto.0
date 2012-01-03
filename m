Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38580E0070D
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 11:32:45 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Jan 2012 11:32:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102796991"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 03 Jan 2012 11:32:44 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 3 Jan 2012 11:32:44 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.57]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.129]) with mapi id
	14.01.0355.002; Tue, 3 Jan 2012 11:32:44 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - Tuesday, January 03,
	2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
Thread-Index: AQHMyk52toDiF1lp8kqps/evhZSq6A==
Date: Tue, 3 Jan 2012 19:32:43 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A257A3CCC@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - Tuesday, January 03, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
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
X-List-Received-Date: Tue, 03 Jan 2012 19:32:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Paul, Beth, Josh, Richard, Scott, Mark, Jessica, Saul, Bruce, Matthew, Song
=A0
New Action Item:
- Mark will review unsorted features from Wind River team and try to have t=
hem scheduled (WIP, Reviewed, but not scheduled yet.)
- Song and Saul to follow on Scott Garman's M2 schedule conflict. (WIP, nee=
d to talk with Dave)
- Paul to work with Jeremy and others to move 1598 forward. (WIP)
- Paul to split feature 1566.
=A0
Agenda:
* Opens collection - 5 min (Song)
* Yocto 1.1.1 point release update - 10 min (Josh)=A0
  - Got the build out before Christmas, QA test passed. One outstanding iss=
ue. Have a promising solution now. Pulling together some other minor fixes.=
 Need to talk with Beth
  - Scott: do we need to update manual?=20
  - Beth will setup a meeting with Josh and Scott to determine the next bui=
ld for QA and possible doc changes.
=A0
* Yocto 1.2 M2 status and major kernel/toolchain version lock - 10 min (Son=
g/Bruce/Team)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
 =20
  - 4th week of M2, next week we will have RC1. more than half of the featu=
res are in progress, some in patch review, some is lacking QA effort, about=
 40% still has no progress. Paul and ScottG's P1's are at risk.=20
  - Paul will split P1 feature 1655 into deliverables for both M2 and M3.
  - Master build is green by the new year's day. Integrating patches now.
  - bugs are in control with about 15 new bugs opened and about the same am=
ount fixed after Christmas.=A0
  - Major kernel version lock: Kernel - 3.2.x with RT release. Tool Chain -=
 set with the versions now, gcc 4.6, minor patches possible, but no more ma=
jor version change.=A0
  - M2 release criteria review (Reviewed and updated on the wiki page)
=A0
* Opens - 10 min=A0
     -  RP: email status: had a disaster over holiday, lost all emails, rec=
overed most of them. Reponses were delayed.

* Action item Review - 5 min
- Mark will review unsorted features from Wind River team and try to have t=
hem scheduled (WIP, Reviewed, but not scheduled yet.)
- Song and Saul to follow on Scott Garman's M2 schedule conflict. (WIP, nee=
d to talk with Dave)
- Paul to work with Jeremy and others to move 1598 forward. (WIP)
=A0
* Team Sharing (shared some holiday stories, skip due to holidays)

