Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84705E0121A
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 15:07:24 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Jan 2012 15:07:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118789985"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2012 15:07:24 -0800
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 31 Jan 2012 15:07:23 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.42]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.96]) with mapi id
	14.01.0355.002; Tue, 31 Jan 2012 15:07:23 -0800
From: "Liu, Song" <song.liu@intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	January 31, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHM4G0WBrzHa+VAl0a8xKZljbcr7w==
Date: Tue, 31 Jan 2012 23:07:22 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A34C6EF4D@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, January 31, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 31 Jan 2012 23:07:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Beth, Saul, Matthew, Tom, Paul, Belen, Sean, Bruce, Richard, Michael, Jessi=
ca, Jeff, Scott, Denys, Darren,  Josh, Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
=A0
* Yocto 1.1.1 point release update - 10 min (Josh/Beth)
  - All changes have been pushed. Doc is done.
  - Richard has merged all changes to Edison. The intension is to have buil=
d for QA by the end of this week.=20
=A0
* Yocto 1.2 M3 status - 10 min (Song/Team)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
=A0 - We have more features in progress, features in development are gettin=
g more progress also.
  - Still a lot of features have not been started, lots of features are sti=
ll in testing. Both of these should get better since the PRC team is back.
  - Getting a little better on bug fixing, fixed a little more than what we=
 opened last week. 2 high bugs, will see what Mark says about it.
  - Saul will follow up with Mark on the high bug 1928
  - 1898, patch is pending in Bruce kernel update.
  - Encourage the team to look at your packages, look at warning, specially=
 package warning to reduce the number of warning messages.=20
=20
* SWAT chair person rotation: Paul -> Jessica
  - MUD testing is going on. Beth is adding trigger for auto BSP build
  - Saul: There are some real issues, especially in BSP realm. Darren and S=
aul are looking at it 1940.
  - RP: has been looking at the issues. 2 predominant one, Bruce's patch, f=
etcher issue, RP has patches on the mailing list. Package config one, also =
the BSP one.=20
=A0
* Opens - 10 min=A0
 - Beth: minor release process change, we used to release only tarballs for=
 point releases, changing that to be as same as a major release. We do rele=
ase tarball and BSP images. Will have the 1.1.1 directory in download area.=
=20
 - Matthew: There is some failure in 1.1.1. Josh is following up these issu=
e,
 - Michael: Encourage people to help on Bugzilla upgrade. Sent out emails y=
esterday to the mailing list, we have a new bugzilla up and running now. If=
 people could use it please test it out and report problems.=20
 - ScottR - 1.1.1 website status. 1.1.1 release is not ready, will have the=
 related changes on the website when it is ready.=20
 - ScottR: would like to encourage people to get back to Scott in 24 hours =
for his emails clarifying some doc topics. Scott would like to encourage co=
mmunity people to run through the docs and give some feedback. Sean: sugges=
t online review for docs. Scott: we can widen the scope of the review. RP: =
All docs are in public repos and can be pulled out for review. If people ha=
ve contribution, please send patches.
 =20
=A0
* Team Sharing - 20 min
=A0
- Josh: last week finished doing 1.1.1, this week 1.1.1 will continue 1.1.1
- Darren: nothing to sharing this week.
- Denys: established a mirror of meta-ti on yoctoproject server, setting a =
distro to work with OE core and Yocto Project. Beth will talk with Denys ab=
out getting meta-ti in autobuilder. The mirror is automated, every time met=
a-ti is updated, it will be pushed to Yocto server automatically.
- Scott: last week wrapped up 1.1.1, moved on to bugs, worked on 4 or so bu=
gs, continue this week on bugs. Creating some new bugs based on some feedba=
ck from Jim.=20
- Jeff: working on WRS stuff
- Jessica: plan for M3, prepare for ELC developer's day.
- Michael: Bugzilla last week. Setting up KVM infrastructure, getting acces=
s for SWAT team, helping on meta-ti repos. this week, visiting hosting site=
 to upgrade autobuilder infrastructure.
- Richard: last merged some changes, sent out emails about the technical as=
pects. Working on reducing bug count, dealing with autobuilder.
- Bruce : M3 development, development for 3.2 kernel. Need to finish M3.
- Sean: nothing this week.
- Belen: last week preparing something on HOB2, designing the leftover part=
 for HOB2. As they (PRC team) need things, they can let Belen know.=20
- Paul: last week working on SWAT team duty, not many failures. Preparation=
 for ELC talk. Bitbake layers talk. Found a few areas we can improve and se=
nd some patches. This week will be preparation, and some bugs.=20
- Tom: last week working on kernel tools, remaining kernel features, publis=
hing to local repo. Working with Bruce. Internal BSPs, will continue all th=
at and prepare for ELC.
- Saul: tracking changes on the list consolidated pull request. Fixed some =
problems. Working on preps for ELC YDD. This week, package update, getting =
preps together for ELC.
- Beth: did a little of bit licensing, continued on autobuilder layer tooli=
ng, build history should be incorporated into autobuilder. Working on ELC p=
resentations. Need autobuilder infrastructure upgrade (Michael will be work=
ing on it)



