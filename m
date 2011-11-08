Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C39EE00305
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2011 15:17:58 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Nov 2011 15:17:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,479,1315206000"; d="scan'208";a="72034634"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 08 Nov 2011 15:17:57 -0800
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 8 Nov 2011 15:17:57 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.38]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.146]) with mapi id
	14.01.0323.003; Tue, 8 Nov 2011 15:17:56 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - Tuesday, November 08,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
Thread-Index: AQHMnmymiNMlhMSu+0mIkUA7kvzkxA==
Date: Tue, 8 Nov 2011 23:17:56 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F7307E@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Minutes: Yocto Technical Team Meeting - Tuesday, November 08, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
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
X-List-Received-Date: Tue, 08 Nov 2011 23:17:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Jeff, Beth, Paul, Darren, Tom, Jessica, Joshua, Matthew, Sean, Saul, Richar=
d, Dave, ScottR, Song
=A0
Agenda:
=A0
New Action Item List:
1. Richard will review unsorted features and prioritize them.

The current focus of the team:
1. Development for 1.2 release, especially P1 features.
2. Urgent need to help Richard and Saul work on high bugs, fix build issues=
 and get a green build going.
=A0
* Opens collection - 5 min (Song)
* Yocto 1.0.2 and 1.1.1 point release update - 5 min (Josh)
  . 1.0.2, Sent changes to the mailing list. 1759 is blocking the build: re=
created, not an autobuilder issue, master works on that machine. Try to hav=
e the build ready sometime this week.
  . 1.1.1, Matthew proposed some changes. No progress so far.
* Yocto 1.2 planning and M1 Status - 10 min (Song)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
https://wiki.yoctoproject.org/wiki/Yocto_1.2_Schedule=20
2. Wiki Pages Status page, Feature/Task Board
3. Focus on 1-2 features/bugs at a time, don't start new ones until you com=
mit the existing one. don't accumulate pull requests. Otherwise, we have to=
 go back to week by week schedule and it may be a headache for all of us.
4. Release Criteria Review
1. Package update should be one of these
2. Any new meta-intel BSPs, give Beth a headsup.
3. Any no-meta-intel BSPs, give Beth a headsup. 3rd party release process, =
Beth will send it out again.=20
4. Performance should at least be the same.
5. 100% for update status is the new target.
5. Beth: some failures are occurring on the autobuilder, will look at it. A=
uto email will be sent to mailing list about autobuilder failures, team mem=
bers need to look at that proactively. Milestone pull request, pull request=
 cut off time are in Google Calendar.=20
6. High bug review: 7 high bugs.
7. Rotating Chair to debug autobuilder failures: It's a good, may have impa=
ct people's work. Song will think about the procedure.
=A0
* Opens - 10 min
=A0
* Action item Review - 5 min
1. Song will work with Jiajun to get the QA plan ready for point releases. =
(Done)
2. Matthew will send out patch recommendations for Yocto 1.1.1 to the maili=
ng list. (Done)
3. Saul will work with the team to complete the planning for the meta core =
team. (Done)
4. Richard will review unsorted features and prioritize them. (WIP)
5. Song will change 1.2 schedule and extend M1, M3, M4 by one week due to n=
o ELC in April next year. (Done)
6. Song to work with Shanghai team to break epic features into smaller ones=
. (Done)

* Weekly team sharing (20 min): (Skipped due to the lack of time in this me=
eting. Sorry about this.)


