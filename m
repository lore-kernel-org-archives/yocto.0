Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A50FE00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 09:42:30 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2012 09:42:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="100053833"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 24 Jan 2012 09:42:09 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 24 Jan 2012 09:42:09 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.54]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.31]) with mapi id
	14.01.0355.002; Tue, 24 Jan 2012 09:42:09 -0800
From: "Liu, Song" <song.liu@intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	January 24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
Thread-Index: AQHM2r9+IGcTil6Jkk6AGXfc0ZuCuA==
Date: Tue, 24 Jan 2012 17:42:08 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A2E176888@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, January 24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
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
X-List-Received-Date: Tue, 24 Jan 2012 17:42:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saul, Josh, Sean, Scott, Tom, Mark, Michael, Paul, Belen, Darren, Jessica, =
Fred (Intel), Jeff, Richard, Dave, Nitin, Song
=A0
Agenda
=A0
* Opens collection - 5 min (Song)
* Yocto 1.1.1 point release update - 10 min (Josh/Beth)
  - Josh: We have one example in the doc not working, probably a bug, tryin=
g to have a build this week.
  - ScottR: kernel SMP example is not working, filed a bug. Working for 1.1=
, should be fixed for 1.1.1
  - Darren: will find and look into it.
* Yocto 1.2 M2 status, M3 planning status - 10 min (Song/Team) https://wiki=
.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
=A0
   - M2 RC1 full path test passed, we also tested latest distros and there =
is no new issue found there. We will schedule release readiness meeting lat=
er this week to release M2. =20
  - M3 planning is done. We have moved some P2/P3 features to post 1.2. P2/=
P3 are our goals, but not commitment for the release. RP: no need for CCB a=
pproval, ok to leave these to team leads and the team
  - Overall, statistically we have completed more than half of the features=
 in terms of the number of features. Most of the P1 features are completed =
or close to be completed, such as HOB is pretty much done, we still need to=
 address feedbacks from our last demo. Build appliance is mostly done. Ther=
e would be a lot of polishing to be done. We could be seeing more bugs comi=
ng. Going forward in M3, we still have a lot of work to be done in Feb.
  - Quality side, we have been able to keep the number of open medium+ bugs=
 down, last week there is a little bit of uptick (about 8 bugs),  a. if you=
 have time please take a look at some medium+ bugs and try t. b. for those =
people who have more bugs than others, please take a look and see if you ca=
n do something to those bugs (by yesterday, Saul and Tom have the most numb=
er of bugs).
   - Paul: on SWAT team this week. Will look into it. RP/Saul: Autobuilder =
should be fairly good now. The only open on autobuilder now is some infrast=
ructure issue Beth needs to do.
=A0
* Review M3 release criteria
  - remove meta-intel BSP from release criteria.
=A0
* Opens - 10 min=A0
  - Sean will be ELC, and the developer day.
  - Scott: 1.1.1 example.
  - Mark: Linux work. Hoping to get SE linux layer done in this week, takin=
g longer than thought, all core SE linux integrated, appear to work. Got a =
place to work for anyone who is interested.
  - Jessica: YP developer day. Sean knows about the presentation and the pa=
nel discussion.=20
  - Richard: SWAT team. We have been in this for a couple of weeks. Would l=
ike to get some people together and see what worked and what did not. How t=
o improve. It's important to get autobuilder working and continuous integra=
tion. Song will setup a the meeting, will include Michael also.
=A0
* Team Sharing - 20 min
 Richard: doing patch review, merging, manipulation, issues of shared state=
s, etc. Already send out some patches on bitbake. We can do some clean up i=
n meta now. Next week, continue these. Significant changes to come: change =
to native SDK, which has been discussed in the mailing. It's a fairly major=
 change.=20
 - Jeff: nothing today
 - Fred: nothing today
  - Jessica: Looking at BSP tools proposals, sent replay back, will be work=
ing on that. Helped looked at some other issues.
 - Darren: working on a lot of internal stuff, prepare for ELC, this week w=
ill be mainly internal.
 - Belen: We watched the demo last week, going to be working on refinement.=
=20
 - Paul: talk accepted for ELC, on OE-core, how we work together, explain a=
 new structure. Prepare for that. SWAT work for this week. Nothing major bl=
ocking.
 - Michael: we had some downtime on autobuilder due to some package update,=
 repaired that. Added 1.1.1 to Bugzilla, cleaned up backup freed some space=
. Eglibc server is now our server, doing a virtual transition. There are so=
me email issues, will be fixed. Next week, eglibc virtual transition, bugzi=
lla upgrade, no blockers, waiting for DNS changes.
 - Mark: working on SE Linux last week, would like to share the work if any=
one interested, doing some work around documentation, working with people a=
t WRS who are new to YP, have a doc for intro to YP, will send to Saul/Rich=
ard. It's a 3 page doc, giving people a brief description about YP componen=
ts. RP is interested to take a look. ScottR would like to see that too.
 - Tom: last week spent most of time on BSP tool, sent Jessica a link for s=
omething she can start using, continue on that this week. Licensing, intern=
al BSP work, coming week will be more of those.
 - Scott: last week finished 1.1.1 manual changes, everything is verified e=
xcept that example. Layer info to integrate. This week will take care of bu=
gs dropped, moving on writing on new info for manual.=20
 - Josh: Been doing internal things, working on 1.1.1, this week more inter=
nal stuff to handle.=20
 - Saul: feeding patch machines, various bug fixing. Next week uclibc needs=
 some work. Bug fixing, need to prepare for ELC and developer day.=20
 - Nitin: working on sun jdk recipe, almost done. Enabling gcc for multi-li=
b. Tom is going to check it out today. Prepare presentation for dev day, EL=
C.



