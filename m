Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B159E013B7
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 14:48:23 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 May 2012 14:48:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="149968048"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga002.jf.intel.com with ESMTP; 29 May 2012 14:48:23 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 29 May 2012 14:48:22 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.121]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.219]) with mapi id
	14.01.0355.002; Tue, 29 May 2012 14:48:22 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, May
	29, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNPeTEV8gnFOUvRUml8SxlSWwA9A==
Date: Tue, 29 May 2012 21:48:21 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A483FC9C3@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, May 29, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 29 May 2012 21:48:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Beth, Richard, Dave, Paul, Joshua, Michael, Jefro, Darren, Tom, Denys, Bruc=
e, Jeff, Mark, ScottR, Sahad, Sean, Ross, Song
=A0
New member - Ross Burton: Joined Yocto Project yesterday, joined Intel 4 ye=
ars ago. Worked on moblin, meego, tizen,  worked on Poky when I was with Op=
enhand.
=A0
Agenda
* Opens collection - 5 min (Song)
* 1.2.1 update - 10 min (ScottG)
  - 30 fixed, 18 remaining
  - pull request for the first batch sent, RP is planning merging them toda=
y or tomorrow.
* 1.1.2 update - 10 min (Josh/Beth)
  - Not a lot of changes last week, pull request sent, should be merged in =
a couple of days according to Richard.
  - Build ETA, the end of this week.
* Yocto 1.3 status  - 10 min (Song/team)
  - 1.3 feature list: https://wiki.yoctoproject.org/wiki/Yocto_1.3_Features=
=20
  - 1.3 schedule: https://wiki.yoctoproject.org/wiki/Yocto_1.3_Schedule=20
  - 1.3 status: https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Statu=
s=20
=A0
  - Made some progress last week. Probably some items on the scheduled have=
 not been updated due to the holiday yesterday. There are a couple of issue=
s with items still in scheduled stage, will check with the team.
  - The bug count is a high, US UK team (some of you probably busy last wee=
k on 1.2.1 bugs) should pay more attention to bugs. Romania team and the PR=
C team is in the mode of transitioning this week.
  - Items still in 'scheduled' stage:=20
    2396 (Bruce): p1, Bruce will look into this.
    Beth completed 3 items for m1, still 4 left on the M1 schedule. 2 of th=
em are P1s. Beth will look into them. Some of them may slip into M2.
  - Master status (Beth):  2 failures in poky-tiny. Additional targets adde=
d for nightly (5 and 1/2 hour with sstate for nightly to 11 hours without),=
 meta-intel build (ETA, today), update of AB infrastructure in the last wee=
kend. Weekly build this week for QA is on track.
  - Go over the high bugs: 8 high bugs, 2 scheduled for M1, 1 still needs a=
 target milestone. Mark will look into 2420.
=A0
* SWAT team rotation: Beth -> Paul
* Opens - 5 min
  - RP: status of pull requests for oe-core. Last week concerned about mast=
er. There has been some changes in master, fixes, package update, doing tes=
ting over the weekend to make sure master is stable. Mark's patch and Nitin=
's are still outstanding, will be merged soon. Expect to see some other pat=
ches going into master in the next few days.=20
  - Michael: requests to enable http for git repos. Requests from the commu=
nity, have trouble using git protocol to pull source code, asked to enable =
http. RP: sounds fine. Http access will be read-only. There are some techni=
cal issues with using https for pull requests (RP/Michael).=20
  - Jefro: conferences: check if anyone submitted any talks for any conf, i=
f you have, please let jeff know: Mark has one for LinuxCon. Sean consideri=
ng submit same topic for elce from elc. Dave: it's good to talk about your =
work, Dave will have an overview talk for the LinuxCon.=20
  - Josh: Q&A forum for the yocto project: Jefro: still on the plan, lookin=
g for a piece software compatible with Drupal. We have quote to build it. S=
till at the late design phase.
 =20
* Team sharing - 20 min
 - Sean: nothing this week.
 - Sahad: nothing this week.
 - ScottR: last week some testing on 1.2.1, completed that. Will work on bu=
g fixing for 1.3 m4.
 - Mark: working on prelink issues, something we have for x32 seems to have=
 some problem, working on it. Integrating patches from mentor also.
 - Jeff: nothing this week
 - Bruce: Was out last week. Still catching up. Will work on 1.3 items.
 - Denys: was out last week.
 - Tom: working on getting 1.2 meta-intel BSPs released. Waiting for some k=
ernel things to appear from Bruce (Bruce already know this). Then will move=
 on to 1.3.=20
 - Darren: more time on fish-II. Accelerometer driver will turn into a much=
 larger effort, working with maintainers. Worked on zigbee with Scott Garma=
n also. This week finishing up meta-intel work. Move on to 1.3 work.
 - Michael: last week update bugzilla requests. There was an email sent out=
 to the mailing list on the preview. Will make it alive if there is no obje=
ction. Gerneal AB work, some work on package.yoctoproject.org.=20
 - Paul: out 3 days last week. Submit and merged 2044.that threw out some o=
ther issues. Working on fixing them. Will be out whole week next week.
 - Richard: merging patches last week, submit some fixes, working through s=
ome bugs, reviewed patches. This week more of the same. Out next week for U=
K holiday.
  - Beth: AB upgrade, bugzilla upgrade, AB development cluster to test the =
things (will announce it in the mailing list). Working with an intern. Met =
him last weekend, trying to get him situated in Portland.=20


