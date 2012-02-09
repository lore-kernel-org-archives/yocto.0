Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05FFAE00307
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2012 10:59:03 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Feb 2012 10:59:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="115957429"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 09 Feb 2012 10:59:03 -0800
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 9 Feb 2012 10:58:58 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.224]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.48]) with mapi id
	14.01.0355.002; Thu, 9 Feb 2012 10:58:58 -0800
From: "Liu, Song" <song.liu@intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	February 07,
	2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHM51zgAugScsUkQEaBj660ub/YtQ==
Date: Thu, 9 Feb 2012 18:58:57 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A38CB0057@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, February 07, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Thu, 09 Feb 2012 18:59:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry for the late, somehow I thought I sent this out.

Attendees:
Saul, Darren, Dave, Beth, Josh, Richard, Scott, Tom, Paul, Belen, Michael, =
Jeff, Matthew, Jessica, Sean, Song
=A0
Messages to the team:
1.  Please complete your items and get them to patch review asap, do not wa=
it until the end of M3 if you can.
2.  If you own one of those items not started yet for M3, please take a loo=
k and see if you can start them asap since we only have 3 weeks left for fe=
ature development in M3.
3. While you do coding, please keep the performance in mind.
=A0
Agenda
=A0
* Opens collection - 5 min (Song)
* Yocto 1.1.1 point release update - 10 min (Josh/Beth)
  - Josh: We have a branch ready to be build. Matthew had some issues last =
week, will continue to work on those. One fix is in master, but rather larg=
e and has not been tested. Propose to have another point release 1.1.2 to i=
nclude those fixes and not to delay 1.1.1 release.
  - Matthew: Found issues around useradd stuff, file locking with useradd. =
Doing more testing, have 2-3 months before next release. RP: there are some=
 open issues in this area, should allow more time and put these in the next=
 point release.
  - Beth is generating RC for Edison right. Last week there was some autobu=
ilder upgrade, some of them is software. Build history only happens on nigh=
tly master. Over the weekend, there are some issues caused instability. Bet=
h will talk to Michael to manage the infrastructure better. Master build lo=
oks good. Only one issue. Everything should be stable right now.
  - Beth will sent emails out listing changes and impact before autobuilder=
 hw/sw upgrade going forward.=20
=A0
* Yocto 1.2 M3 status - 10 min (Song/Team)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
  - We are in the 3rd week of M3, M3 feature freeze is Feb. 26th, we have 3=
 more weeks to go for feature development in M3.=20
  - Most of the items in testing stage got cleared after QA team came back.
  - 1/3 of what's left are in development, some of them are close to be com=
pleted. To the team: please complete your items and get them to patch revie=
w asap, do not wait until the end of M3 if you can.
  - still 2/3 of the items are not started yet. To the team: if you own one=
 of those items, please take a look and see if you can start them asap sinc=
e we only have 3 weeks left for feature development in M3.
  - Quality is still doing fine, but due to the ELC preparation, there has =
been a little uptick on the outstanding bugs. And we have 5 high bugs open =
this week. We already have plan for each of them.
* Opens - 10 min=A0
 - Saul: State of where we are with pull. We hold off doing some pull due t=
o autobuilder issues. Will be doing pull requests with Richard to clean up =
the queue.
* Team Sharing - 20 min
 - Sean: nothing, focusing ELC, doing presentation there.
 - Jessica: Focus on ELC/YDD.
 - Matthew: nothing
 - Jeff: nothing
 - Michael: tripped over hardware upgrade. Sorted out all problems now. Han=
dled mail issues. Getting review board test site (patch review). So far, no=
 issues for Bugzilla. Will schedule Bugzilla upgrade. Eglibc project is up =
and running, some people at Mentor is looking at it. Should have it tested =
soon.
  - Belen: Tiding up some design, have agreement on the main flow. PRC team=
 should have what they need at this point. Will see if we can merge 2 video=
s (recipes and packages) together for Jessica.
  - Paul: last week, ELC, helping out ScottR with doc improvement, this wee=
k will get back on bug fix, features for M3.
  - Tom: Dev day, BSP pull. Will wrap up BSP tool and submit what we have. =
Tom pushed an RFC in the middle of Dec. Tom can send Sean a link about this=
. Next is Yocto kernel tool.
   - ScottR: last week handling doc issues, worked with Bruce, Paul for inf=
ormation with various areas. This week will be on kernel doc bug. It's one =
of the 2 medium ones. Also worked closely with Josh last week. Got good doc=
 improvement.=20
  - Richard: pull request triggered some strange issues, fixed those issues=
. Reported some issues to upstream. Maintainer will make some changes. Perf=
ormance monitoring. M2 we had some performance issues. Poking around for im=
provement. Continue patch merging, bug fixing. To the team: When coding, do=
 keep performance in mind.
  - Josh: worked with ScottR on doc issues. Review BSPs, discussions regard=
ing UI. 1.1.1 work. Prepare for ELC.
  - Beth: prepare ELC, autobuidler issues last week, find out more autobuil=
der changes to go in. next week, out of office on Friday. There is some lic=
ensing stuff to deal with.
  - Daren: working on a few EFI issues, helping others doing BSPs, fixed du=
plicated image size for EFI. Debugging hardware.
  - Saul: prepare for ELC. Will get the presentation completed. Pull reques=
ts. Concerns on build appliance deploy tools, proxy checking.
  - Nitin: Busy multi-lib gcc. Working on developer day presentation. Worki=
ng with Mark.
=A0
=A0
* This week the chairperson of the SWAT team rotates from Jessica to Dexuan=
 at the PRC team.=20


