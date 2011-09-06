Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D603E0075D
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 09:46:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Sep 2011 09:46:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="45722464"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 06 Sep 2011 09:46:18 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 6 Sep 2011 09:46:18 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.19]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.126]) with mapi id
	14.01.0323.003; Tue, 6 Sep 2011 09:46:17 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - (Tuesday, September
	06, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMbLR/EzFB2tV5AEaJhiOw5ZJT7A==
Date: Tue, 6 Sep 2011 16:46:16 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F062FC@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - (Tuesday, September 06, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 06 Sep 2011 16:46:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

* Team action item:
Prepare a 2-minute information sharing for this meeting on:=20
    1. What you have done in the past week.=20
    2. what's your focus/plan for the current week.=20
    3. what's the impediment/issue if there is any.
=A0
Attendees:
Scott, Saul, Mark, Matthew, Denys, Tom, Josh, Paul, Richard, Jeff, Dave, Je=
ssica, Darren, Song
=A0
Welcome Matthew: he works for Freescale on embedded Linux, decided to use Y=
octo.
=A0
* Opens collection - 5 min (Song)
=A0
* Yocto 1.1 M4 status review and issues - 20 min (team) https://wiki.yoctop=
roject.org/wiki/Yocto_Project_v1.1_Release_Criteria#Milestone_=20
  - Status summary for bug fixes: We started with about 100 bugs when we ca=
me into M4. By now we have fixed more than 100 bugs before going into RC1. =
It's good progress. At the same time, we opened about 50 new bugs, so we st=
ill have 40 or so 1.1 bugs to fix.
  - going into RC's, testing information (what kind of tests have been done=
) need to be entered when bug fixes are committed. This will help reviewers=
 to make quicker decision on whether or not to include the new bugs fixes i=
n the next RC release.
  - Documentation status (Scott Rifenbark): On track. Cannot test some new =
links since they are not there until Yocto 1.1 release.
  - Build status (Saul): upgraded the autobuilder infrastructure, found som=
e share state bugs and os related bugs while upgrading. Working to resolve =
them. RC1 happens tomorrow noon (PST)
  - Kernel version - Darren:  kernel locked at Linux 3.0.4, Tom updated mos=
t of the Meta-intel. Darren will make sure meta-Intel is updated completely=
.
=A0
* Opens - 15 min
  - Bug status before RC1 (Richard): concerned about the state of autobuild=
er, QA report has 6 new bugs, we need to get those bugs addressed.
    . Kernel is ok, Mark is still working on bug fixes. There will still be=
 patches coming from Meta core team and Saul.
    . autobuilder needs attention after upgrade. Saul will follow up on tha=
t with Beth
  - Scrum-like sharing practice: everyone from the team takes 2 minutes to =
share on 3 questions: what's been done in the past week, what's the next st=
ep/focus in the current week, what's the impediment/issue if there is any. =
People from the community don't need to answer these questions, they can sh=
are whatever they would like to share. This is a suggestion that comes from=
 the community.
    . Concerns: The audience of this meeting may be a little broader for th=
is practice. There might be duplications since we already cover status in t=
his meeting. PRC team may not be properly represented.=20
    . Goals and purpose: information sharing on individual level, make the =
whole team informed. Uncover issues, get help from the community and the te=
am. Align individual focus with the team focus.
    . Decision: try this practice and be prepared for the next meeting.



