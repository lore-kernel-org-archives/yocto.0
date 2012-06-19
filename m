Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0CFBE0073F
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 14:15:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Jun 2012 14:15:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="182357515"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jun 2012 14:15:37 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 19 Jun 2012 14:15:36 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.154]) with mapi id
	14.01.0355.002; Tue, 19 Jun 2012 14:15:36 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, June
	19, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNTmCr05ShajwWU0ChICqACsnQ9A==
Date: Tue, 19 Jun 2012 21:15:36 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A4844BD59@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, June 19, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 19 Jun 2012 21:15:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Darren, Beth, Saul, Tom, Jessica, LaurentiuS, Scott Garman, Richard, Nitin,=
 ScottR, Michael, Paul, Jim, Bjorn (Enea), Ross, Jefro, Bogdan, Gilbert, Je=
ff, Sahad, Sean, Cristian, Alex, Bruce, Josh, Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* 1.2.1 update - 5 min (ScottG)
  - 1 remaining open bug, pull request pending.
  - 1 more pull request for a community request for kernel patches (suggest=
ed by Bruce)
  - Then will be reviewed by community.
  - ETA for RC1 is this Friday.
  - Next week ScottG will be away to help run a conference. 1.2.1 will be s=
hared with Saul, Beth and Michael.
* 1.1.2 update - 5 min (Josh/Beth)
  - all patches are merged.
  - Beth ran a build last week, we have a successful build.=20
  - Beth: there is still one issue for the build. But the QA can use the bu=
ild for testing.
  - ScottR: there are many doc changes that we need to merge into the relea=
se. Need to have the month for the release. Song to follow up.
=A0
* Yocto 1.3 status  - 10 min (Song/team)
  - features/bugs: most are completed and merged. 1 design feature left, mo=
ving that to M2. 4 M1 bugs left on the schedule. 2 from Bruce are already i=
n patch review. 1 from Mark moving to M2. 1 from liming in patch review
  - weekly testing are done, moving ahead with full pass testing. No blocki=
ng issues so far. Preparing to release RC1.
  - Bugs: # f medium+ bugs are high, WDD number is high. The team need to f=
ocus more on bug fixing to bring the numbers down. (the team fixed about 27=
 bugs in last week though, it's good progress)
  - release criteria review.=20
  - verify to close: Laurentiu will send an email to the mailing list propo=
sing how to 'close' a bug.=20
=A0
* SWAT team rotation: Dexuan -> Nitin
=A0
* Opens - 5 min
  - Laurentiu: you may receive emails for bug verification if you are the a=
uthor or requestor for a bug or feature.
  - Bjorn: posted a mail about testing effort. Would be nice to have feedba=
ck on it. (Laurentiu will review and get in touch with Bjorn)
  - Song: Use IRC channel for this meeting. Will send out a note for how to=
 use this.
=A0
* Team sharing - 20 min
  - Darren: working on poky-tiny, got patches out there with busy box confi=
g, ready to go in. This week, warping up some kernel drivers this week, wil=
l work on the accelerometer driver next week.=20
  - Michael: new bugzilla category is up and alive. Upgraded RAID controlle=
r, replaced hard drivers. New autobuilder node is coming up today or tomorr=
ow.=20
  RP: Can we document on the wiki about the autobuilder, which machine is r=
unning what and with what distro. (Paul) There are some code in sanity test=
 for distro identification. Beth will put together the wiki page and send o=
ut an email (This week).
  RP: bug counts data, auto collecting information. Michael: some issues, w=
ill be moving to the new server and fix them. RP: get data to RP first, wit=
hout graphics it's ok. Data is a great start.
  - Saul: Working on package re-order, will be sending out the pull request=
 this morning along with build history. Any feedback/comments, let me know.=
 It's great if more people can look at them. Will fix the package reporting=
 system.=20
   - RP: a few patches: rp working some patches on fetchers. Paul's patch: =
forcing particular tasks to re-run, response to some bugs reported by Jason=
 from Wind River. Make kernel config change on the fly and make sure it get=
s rebuild, etc.



