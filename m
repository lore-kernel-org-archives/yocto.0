Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04F09E013A6
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 21:18:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Aug 2012 21:17:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,807,1336374000"; d="scan'208";a="189649156"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 21 Aug 2012 21:17:45 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.40) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 21 Aug 2012 21:17:45 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.94]) with mapi id
	14.01.0355.002; Tue, 21 Aug 2012 21:17:45 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	August 21, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNgB0U0vy4ujVSMU6iB17jOTCbJA==
Date: Wed, 22 Aug 2012 04:17:44 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A4851E38E@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, August 21, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 22 Aug 2012 04:18:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:

Alex, LaurentiuS, Saul, Richard, Kevin, Denys, MichaelH, Beth, Jefro, Bogda=
n, Tom, Jeff, Dave, ChrisL, Ross, MichaelB (Dell), Paul, Belen, Sean, Darre=
n, Cristian, Song=20
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* 1.3 Beta Program - 5 min (Song)
  . A little background: Feedback gathering for a release close to the end =
of the release. Some feedback we can address in this release, others will b=
e addressed in future release. Good opportunity to try out the latest featu=
res/improvements.=20
  . Schedule: Beta build this week or next, then 2-4 weeks for testing and =
feedback.
  . calling for participation.
* Yocto 1.3 status - 10 min (Song/team)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status=20
 =20
 - Laurentiu: M3 RC2 is in testing,  Weekly testing should be done this eve=
ning, tomorrow evening we will have the full pass report. Relocatable tool =
chain has some issue, working on it (2 Laurentius), as far as we don't relo=
cate it, it should be fine. It's not a blocking issue for M3 release.=20
  - Bug number is going down a little bit. The team has made more progress =
fixing bugs last week.
  - Will review features and bugs tomorrow, cut down some features and leav=
e rooms for more bug fixing.=20
  - Beth: master build. There were some issues, one of them is eclipse plug=
in. Put in a pull request yesterday. RP: Outcome/display of ab is confusing=
. We should try to re-organize the information. Will work with Saul and Bet=
h and try to improve things.=20
=A0
* SWAT team rotation: Jessica -> Ross
=A0
* Opens - 10 min
 =20
- Jefro: very quick announcement about LinuxCon next week.
=A0
LinxuCon next week in San Diego, we have a talk on Friday from Dave. Then Y=
P BoF.
=A0
- Beth: minor upcoming autobuilder changes.
=A0
Not sure if I will put in before M3 is out. The change will be put in later=
 this week or early next week. Require very short (about 5 minutes) ab down=
time.=20
=A0
=A0
* Team sharing - 20 min
=A0
Beth: worked on license manifest. Support SPDX, found some issues for the s=
pec. talking with them. It's not perfect. Having some issues with parallel =
image creation, working on it. Not sure if there is a way to do that. If so=
meone can help, appreciate it.
=A0
Belen: I sent an email about grouping our base images in HOB. Would like fe=
edback from the community. Christian will look at it. But it may not happen=
 immediately, sometime this week. Have a lot of other things working on. Va=
lentin is not here, on vacation, Cristian will help on Valentin's tasks too=
.
=A0
Michael: last week on answering questions, gateway upgrade, service work fo=
r LF. Main thing, we had 7-8 minutes downtime on the download server. Resol=
ved the issues, but not completely. Need to run a different kernel to resol=
ve it once and for all. Next to complete gateway upgrade, bugzilla, get AB =
dev cluster running the save version, running plugin to monitor tapes, etc.
=A0
Paul: sent out RFC last week. It's about task rework mentioned last week. D=
ocumented all tasks we have. Suggested something we should be doing. Apprec=
iate if anyone has feedback. Breaking up qemu config recipes. Continue alon=
g with those tasks.
=A0
Radu: doing package update last week. Will be doing bug fixing, debugging, =
just starting now.
=A0
Cristian: working on HOB, will work on fixing bugs. Connectivity and HOB. B=
alance between the two. There are many features to work on.



